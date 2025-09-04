<?php
/* do_exercise.php */
include 'connect.php';
session_start();

// Kiểm tra đăng nhập
if (!isset($_SESSION['user_id'])) {
    // Nếu request POST (AJAX), trả về JSON; nếu GET thì dừng trang.
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode(['status' => 'error', 'message' => 'Chưa đăng nhập']);
        exit();
    } else {
        echo "Bạn chưa đăng nhập!";
        exit();
    }
}

$id_hs = $_SESSION['user_id'];

// XỬ LÝ POST (AJAX từ JS)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id_bt = $_POST['id_bt'] ?? '';
    $user_answer = $_POST['user_answer'] ?? '';

    header('Content-Type: application/json; charset=utf-8');

    if (trim($id_bt) === '') {
        echo json_encode(['status' => 'error', 'message' => 'Thiếu ID bài tập']);
        exit();
    }

    // Update trạng thái thành 'hoàn thành' (bảng dùng tên BaiTapPH theo file của bạn)
    $sql = "UPDATE BaiTapPH SET TrangThai = 'hoàn thành' WHERE ID_BT = ? AND ID_HS = ?";
    $stmt = $conn->prepare($sql);
    if (!$stmt) {
        echo json_encode(['status' => 'error', 'message' => 'Lỗi prepare SQL: ' . $conn->error]);
        exit();
    }
    $stmt->bind_param("ss", $id_bt, $id_hs);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        // Nếu muốn lưu đáp án HS vào DB sau này, thêm cột và update ở đây.
        echo json_encode(['status' => 'ok', 'message' => 'Đã cập nhật trạng thái']);
    } else {
        // affected_rows == 0 có thể vì không tìm thấy bản ghi tương ứng
        echo json_encode(['status' => 'ok', 'message' => 'Không cập nhật (có thể đã hoàn thành trước đó)']);
    }
    $stmt->close();
    exit();
}

/* --- PHẦN HIỂN THỊ TRANG (GET) --- */
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Bài Tập Từ Phụ Huynh</title>
    <link rel="stylesheet" href="do.css">
    <!-- Thêm ?v=1 để tránh cache cũ khi bạn sửa script.js -->
    <script src="script.js?v=1"></script>
    <script src="https://cdn.jsdelivr.net/npm/sortablejs@1.15.0/Sortable.min.js"></script>
</head>
<body>
    <h1>Làm Bài Tập</h1>
    <div id="result" style="display: none;"></div>

    <?php
    if (!isset($_GET['id']) || empty($_GET['id'])) {
        // DANH SÁCH BÀI TẬP của HS hiện tại
        echo "<h2>Danh sách bài tập</h2>";
        $sql = "SELECT ID_BT, TenBaiTap, CapDo, DangBai, TrangThai FROM baitapph WHERE ID_HS = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $id_hs);
        $stmt->execute();
        $res = $stmt->get_result();

        if ($res->num_rows > 0) {
            echo "<table border='1' cellpadding='5'>";
            echo "<tr><th>ID</th><th>Tên Bài Tập</th><th>Cấp Độ</th><th>Dạng</th><th>Trạng Thái</th><th>Thao tác</th></tr>";
            while ($r = $res->fetch_assoc()) {
                echo "<tr>";
echo "<td>" . htmlspecialchars($r['ID_BT']) . "</td>";
                echo "<td>" . htmlspecialchars($r['TenBaiTap']) . "</td>";
                echo "<td>" . htmlspecialchars($r['CapDo']) . "</td>";
                echo "<td>" . htmlspecialchars($r['DangBai']) . "</td>";
                echo "<td>" . htmlspecialchars($r['TrangThai']) . "</td>";
                echo "<td><a href='do_exercise.php?id=" . htmlspecialchars($r['ID_BT']) . "'>Làm bài</a></td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "<p style='color: red;'>Chưa có bài tập nào cho học sinh này.</p>";
        }
        $stmt->close();
    } else {
        // HIỂN THỊ BÀI TẬP CỤ THỂ
        $id_bt = $_GET['id'];
        $sql = "SELECT * FROM baitapph WHERE ID_BT = ? AND ID_HS = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $id_bt, $id_hs);
        $stmt->execute();
        $res = $stmt->get_result();

        if ($res->num_rows > 0) {
            $row = $res->fetch_assoc();
            $dangbai = $row['DangBai'];
            $cauhoi = $row['CauHoi'];
            $dapan = $row['DapAn'];

            echo "<div class='exercise-box'>";
            echo "<h2>" . htmlspecialchars($row['TenBaiTap']) . "</h2>";
            echo "<p>Cấp Độ: " . htmlspecialchars($row['CapDo']) . "</p>";

            echo "<form id='exercise_form' method='post' action='do_exercise.php'>";

            // hidden id_bt (có id để JS tìm)
            echo "<input type='hidden' name='id_bt' id='id_bt' value='" . htmlspecialchars($row['ID_BT']) . "'>";
            // hidden đúng/sai data dùng cho JS
            echo "<input type='hidden' id='correct_answer' value='" . htmlspecialchars($dapan) . "'>";
            echo "<input type='hidden' id='dang_bai' value='" . htmlspecialchars($dangbai) . "'>";

            if ($dangbai == 'multiple_choice') {
                $options = explode('|', $dapan);
                $correct = array_pop($options);
                echo "<p>" . htmlspecialchars($cauhoi) . "</p>";
                $labels = ['a','b','c','d'];
                foreach ($options as $i => $opt) {
                    $label = $labels[$i] ?? ($i+1);
                    $value = $i + 1;
                    echo "<input type='radio' name='answer' value='$value'> $label. " . htmlspecialchars($opt) . "<br>";
                }
            } elseif ($dangbai == 'fill_in_the_blank') {
                echo "<p>" . htmlspecialchars($cauhoi) . "</p>";
                echo "<input type='text' name='answer' id='user_answer'>";
            } elseif ($dangbai == 'drag_and_drop') {
                $items = explode('|', $cauhoi);
                echo "<p>Sắp xếp bằng kéo thả:</p>";
                echo "<div id='sortable'>";
                foreach ($items as $it) {
                    echo "<div class='draggable'>" . htmlspecialchars($it) . "</div>";
}
                echo "</div>";
            } else {
                echo "<p>Loại bài không hỗ trợ hiển thị.</p>";
            }

            // nút chỉ gọi JS (không submit truyền thống)
            echo "<br><button type='button' onclick='checkAnswerAndSubmit()'>Nộp Bài</button>";
            echo "</form>";

            echo "</div>";
        } else {
            echo "<p style='color: red;'>Không tìm thấy bài tập cho học sinh này hoặc ID không hợp lệ.</p>";
            echo "<p><a href='do_exercise.php'>Xem danh sách bài tập</a></p>";
        }
        $stmt->close();
    }
    $conn->close();
    ?>
</body>
</html>