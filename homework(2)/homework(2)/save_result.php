<?php
// Bật hiển thị lỗi để debug
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
include "connect.php";

// Đặt header Content-Type để đảm bảo phản hồi luôn là plain text
header('Content-Type: text/plain; charset=utf-8');

// Kiểm tra kết nối database
if ($conn->connect_error) {
    http_response_code(500);
    echo "Lỗi kết nối database: " . $conn->connect_error;
    exit();
}

if (!isset($_SESSION['user_id'])) {
    http_response_code(400); // Bad Request
    echo "Chưa đăng nhập";
    exit();
}

$id_user = $_SESSION['user_id']; // ID trong bảng user
$id_bt = $_POST['exercise_id'] ?? ''; // Lấy ID_BT từ dữ liệu POST
$score = floatval($_POST['score'] ?? 0);

// Lấy ID_HS từ bảng HocSinh dựa theo ID (user)
$sqlHS = "SELECT ID_HS, ID_Lop FROM hocsinh WHERE ID = ?";
$stmtHS = $conn->prepare($sqlHS);
$stmtHS->bind_param("s", $id_user);
$stmtHS->execute();
$resHS = $stmtHS->get_result();
if ($resHS->num_rows === 0) {
    http_response_code(400);
    echo "Không tìm thấy học sinh với user_id này";
    exit();
}
$rowHS = $resHS->fetch_assoc();
$id_hs = $rowHS['ID_HS'];
$id_lop = $rowHS['ID_Lop'] ?? null;
$stmtHS->close();

// Tạo ID_exercise duy nhất
$id_exercise = uniqid('RES_');

// Lưu vào bảng results
$sql = "INSERT INTO results (ID_exercise, ID, ID_BT, score, is_done)
        VALUES (?, ?, ?, ?, 1)
        ON DUPLICATE KEY UPDATE 
            score=VALUES(score), 
            is_done=1";

$stmt = $conn->prepare($sql);
if (!$stmt) {
    http_response_code(500);
    echo "Lỗi prepare results: " . $conn->error;
    exit();
}
$stmt->bind_param("sssd", $id_exercise, $id_user, $id_bt, $score);

if (!$stmt->execute()) {
    http_response_code(500);
    echo "Lỗi khi thực thi câu lệnh SQL lưu results: " . $stmt->error;
    exit();
}
$stmt->close();                                                                                 

// ==================== TÍNH TOÁN KẾT QUẢ THEO LỚP ====================
// 1) Tổng số bài của lớp (nếu không có ID_Lop thì đặt = 0)
$tongBaiTap = 0;
if (!empty($id_lop)) {
    // Tổng số bài trong lớp
$sqlTong = "SELECT COUNT(*) AS TongBaiTap 
            FROM baitap
            WHERE ID_Lop = ?";
$stmtTong = $conn->prepare($sqlTong);
$stmtTong->bind_param("s", $id_lop);
$stmtTong->execute();
$resTong = $stmtTong->get_result();
$tongBaiTap = $resTong->fetch_assoc()['TongBaiTap'] ?? 0;
$stmtTong->close();

// Số bài đã hoàn thành của học sinh trong lớp đó
$sqlDone = "SELECT COUNT(DISTINCT ID_BT) AS SoBaiHoanThanh
            FROM results
            WHERE ID = ? AND is_done = 1 
              AND ID_BT IN (SELECT ID_BT FROM BaiTap WHERE ID_Lop = ?)";
$stmtDone = $conn->prepare($sqlDone);
$stmtDone->bind_param("ss", $id_user, $id_lop);
$stmtDone->execute();
$resDone = $stmtDone->get_result();
$soHoanThanh = $resDone->fetch_assoc()['SoBaiHoanThanh'] ?? 0;
$stmtDone->close();

// Xác định tổng kết
$tongKet = ($tongBaiTap > 0 && $soHoanThanh >= $tongBaiTap) 
           ? "Hoàn thành khóa học" 
           : "Chưa hoàn thành khóa học";

}

// 2) Tính số bài học sinh đã hoàn thành trong lớp và tổng điểm của những bài đó (chỉ tính r.is_done = 1)
$soHoanThanhClass = 0;
$tongDiemClass = 0.0;
$soBaiLamClass = 0;

if (!empty($id_lop)) {
    $sqlClassSummary = "
        SELECT 
            COUNT(DISTINCT r.ID_BT) AS SoBaiLam_Class,
            COALESCE(SUM(r.score), 0) AS TongDiem_Class
        FROM results r
        JOIN baitap b ON r.ID_BT = b.ID_BT
        WHERE r.ID = ? AND r.is_done = 1 AND b.ID_Lop = ?
    ";
    $stmtClass = $conn->prepare($sqlClassSummary);
    $stmtClass->bind_param("ss", $id_user, $id_lop);
    $stmtClass->execute();
    $resClass = $stmtClass->get_result();
    $dataClass = $resClass->fetch_assoc();
    $soBaiLamClass = intval($dataClass['SoBaiLam_Class'] ?? 0);
    $tongDiemClass = floatval($dataClass['TongDiem_Class'] ?? 0);
    $soHoanThanhClass = $soBaiLamClass; // số bài hoàn thành trong lớp = số bài đã làm (distinct)
    $stmtClass->close();
}

// 3) Tính điểm trung bình hệ số 10 dành cho **bài của lớp** (nếu không có bài nào thì 0)
if ($soBaiLamClass > 0) {
    $diemTB = ($tongDiemClass / $soBaiLamClass) * 10.0;
} else {
    $diemTB = 0.0;
}
// Làm tròn 2 chữ số
$diemTB = round($diemTB, 2);

// 4) Kiểm tra hoàn thành cả khóa (hoàn thành = đã làm >= tổng bài lớp)
$hoanThanh = false;
if ($tongBaiTap > 0 && $soHoanThanh >= $tongBaiTap) {
    $hoanThanh = true;
}

// 5) Thành tích: chỉ khi hoàn thành
if ($hoanThanh) {
    if ($diemTB >= 8) {
        $thanhTich = "Hoàn thành xuất sắc";
    } elseif ($diemTB >= 5) {
        $thanhTich = "Khá";
    } else {
        $thanhTich = "Cần cố gắng hơn";
    }
} else {
    $thanhTich = ""; // để trống nếu chưa hoàn thành
}

// 6) Tổng kết text (chỉ "Hoàn thành khóa học" hoặc "Chưa hoàn thành khóa học")
if ($hoanThanh) {
    $tongKet = "Hoàn thành khóa học";
} else {
    $tongKet = "Chưa hoàn thành khóa học";
}



// Lưu vào KetQua (ID_KQ dùng KQ_{ID_HS})
$sqlUpdate = "INSERT INTO ketqua (ID_KQ, ID_HS, DiemSo, ThanhTich, ThoiGianHoanThanh, TongKet)
              VALUES (?, ?, ?, ?, NOW(), ?)
              ON DUPLICATE KEY UPDATE 
                DiemSo = VALUES(DiemSo),
                ThanhTich = VALUES(ThanhTich),
                ThoiGianHoanThanh = VALUES(ThoiGianHoanThanh),
                TongKet = VALUES(TongKet)";

$id_kq = "KQ_" . $id_hs; // mỗi học sinh 1 dòng
$stmtUpdate = $conn->prepare($sqlUpdate);
if (!$stmtUpdate) {
    http_response_code(500);
    echo "Lỗi prepare KetQua: " . $conn->error;
    exit();
}
$stmtUpdate->bind_param("ssdss", $id_kq, $id_hs, $diemTB, $thanhTich, $tongKet);

if (!$stmtUpdate->execute()) {
    http_response_code(500);
    echo "Lỗi khi cập nhật bảng KetQua: " . $stmtUpdate->error;
    exit();
}
$stmtUpdate->close();

$conn->close();
echo "OK";
?>
