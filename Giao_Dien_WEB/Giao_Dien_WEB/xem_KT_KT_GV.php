<?php
session_start();
require '../config/config.php';


if (!isset($_SESSION['id_gv']) || !isset($_SESSION['lopday'])) {
    header("Location: A_login_teacher.php");
    exit();
}

$malop = $_SESSION['lopday'];  

$sql = "SELECT k.id_hs, k.ten_hs, k.subject, k.lesson, k.dung, k.tongcau, k.diem, k.ngay_lam
        FROM kq_kt k
        JOIN hocsinh h ON k.id_hs = h.ID_HS
        WHERE h.ID_Lop = ?
        ORDER BY k.ngay_lam DESC";

$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $malop);
$stmt->execute();
$result = $stmt->get_result();
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Kết quả kiểm tra lớp <?php echo htmlspecialchars($malop); ?></title>
    <style>
        body { font-family: Arial, sans-serif; background: #f0f9ff; padding: 20px; }
        h1 { text-align: center; color: #0d6efd; }
        table { width: 100%; border-collapse: collapse; margin-top: 25px; background: #fff; border-radius: 10px; overflow: hidden; box-shadow: 0 5px 15px rgba(0,0,0,0.1); }
        th, td { padding: 12px 15px; text-align: center; border-bottom: 1px solid #ddd; }
        th { background: #0d6efd; color: white; }
        tr:hover { background: #f1f5f9; }
        .good { color: green; font-weight: bold; }
        .bad { color: red; font-weight: bold; }
        .back-home { display: inline-block; margin-top:20px; padding: 10px 20px; background: linear-gradient(45deg, #4facfe, #00f2fe); color: white; text-decoration: none; border-radius: 25px; }
        .back-home:hover { background: linear-gradient(45deg, #43e97b, #38f9d7); }
    </style>
</head>
<body>
    <h1>📊 Kết quả kiểm tra của lớp <?php echo htmlspecialchars($malop); ?></h1>

    <table>
        <tr>
            <th>ID HS</th>
            <th>Tên học sinh</th>
            <th>Chủ đề</th>
            <th>Bài</th>
            <th>Số câu đúng</th>
            <th>Tổng số câu</th>
            <th>Điểm</th>
            <th>Ngày làm</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $diem_class = $row['diem'] >= 5 ? "good" : "bad";
                echo "<tr>
                        <td>{$row['id_hs']}</td>
                        <td>{$row['ten_hs']}</td>
                        <td>{$row['subject']}</td>
                        <td>{$row['lesson']}</td>
                        <td>{$row['dung']}</td>
                        <td>{$row['tongcau']}</td>
                        <td class='{$diem_class}'>{$row['diem']}</td>
                        <td>{$row['ngay_lam']}</td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='8'>Chưa có dữ liệu kết quả cho lớp này</td></tr>";
        }
        ?>
    </table>
    <a href="login_teacher.php" class="back-home">🔙 Quay lại trang chính</a>
</body>
</html>
