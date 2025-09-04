<?php
// Bật hiển thị lỗi để debug (có thể xóa sau khi test xong)
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include 'connect.php';

session_start();

// Lấy user_id (nay là ID_HS) từ session
if (!isset($_SESSION['user_id'])) {
    echo "<h2>Bạn chưa đăng nhập!</h2>";
    exit();
}
$id_hs = $_SESSION['user_id']; 

$exercise_id = isset($_GET['id']) ? $_GET['id'] : ''; 

// Nếu có id thì mới kiểm tra đã làm
if ($exercise_id !== '') {
    $sql = "SELECT is_done FROM results WHERE ID = ? AND ID_BT = ? LIMIT 1"; 
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $id_hs, $exercise_id); 
    $stmt->execute();
    $res = $stmt->get_result();
    if ($res && $res->num_rows > 0) {
        $row = $res->fetch_assoc();
        if ((int)$row['is_done'] === 1) {
            echo "<h2>Bạn đã làm bài này rồi, không thể làm lại.</h2>";
            exit();
        }
    }
    $stmt->close();
}


// Kiểm tra đăng nhập và vai trò học sinh
$id_hs_from_session = null;
$id_lop = null;
if (isset($_SESSION['user_id'])) {
    $id_hs_from_session = $_SESSION['user_id'];
    // Kiểm tra role = 1 (học sinh)
    $sql = "SELECT role FROM user WHERE ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $id_hs_from_session);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0 && $result->fetch_assoc()['role'] == 1) {
        // Lấy ID_Lop từ HocSinh
        $sql = "SELECT ID_Lop FROM hocsinh WHERE ID = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $id_hs_from_session);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($result->num_rows > 0) {
            $id_lop = $result->fetch_assoc()['ID_Lop'];
        }
        $stmt->close();
    } else {
        $id_hs_from_session = null; // Không phải học sinh
    }
} elseif (isset($_GET['user_id'])) {
    $id_hs_from_session = $_GET['user_id']; // Fallback để test
    $sql = "SELECT ID_Lop FROM HocSinh WHERE ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $id_hs_from_session);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {
        $id_lop = $result->fetch_assoc()['ID_Lop'];
    }
    $stmt->close();
}

?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Làm Bài Tập</title>
    <link rel="stylesheet" href="do_exercise.css">
    <script src="https://cdn.jsdelivr.net/npm/sortablejs@1.15.0/Sortable.min.js"></script>
</head>
<body>
    <h1>Làm Bài Tập</h1>
    <p>
       <a href="../Giao_Dien_WEB/login_student.php">Quay lại trang chính</a> |
       <a href="../Giao_Dien_WEB/logout.php">Đăng xuất</a></p>
    <div id="result" style="display: none; padding: 10px; margin: 10px;"></div>
    <?php
    if (!isset($_GET['id']) || empty($_GET['id'])) {
        // Hiển thị danh sách bài tập của lớp
        if ($id_lop) {
            // Lấy TenLop để hiển thị
            $sql = "SELECT TenLop FROM lophoc WHERE ID_Lop = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $id_lop);
            $stmt->execute();
            $result = $stmt->get_result();
            $ten_lop = $result->num_rows > 0 ? $result->fetch_assoc()['TenLop'] : $id_lop;

            echo "<h2>Danh sách bài tập cho lớp " . htmlspecialchars($ten_lop) . "</h2>";
            $sql = "SELECT bt.ID_BT, bt.TenBaiTap, bt.CapDo, bt.DangBai, bt.ID_Lop, lh.TenLop
                    FROM baitap bt
                    JOIN lophoc lh ON bt.ID_Lop = lh.ID_Lop
                    WHERE bt.ID_Lop = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $id_lop);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                echo "<table border='1'>";
                echo "<tr>
                        <th>ID</th>
                        <th>Tên Bài Tập</th>
                        <th>Cấp Độ</th>
                        <th>Dạng Bài</th>
                        <th>Lớp Học</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                      </tr>";

            while ($row = $result->fetch_assoc()) {
            // Kiểm tra trạng thái trong bảng results
            $bt_id = $row['ID_BT'];
            $status_sql = "SELECT is_done FROM results WHERE ID=? AND ID_BT=? LIMIT 1"; // Updated column names
            $stmt_status = $conn->prepare($status_sql);
            $stmt_status->bind_param("ss", $id_hs_from_session, $bt_id); // Changed to ID_HS, ID_BT
            $stmt_status->execute();
            $status_res = $stmt_status->get_result();
            $status = "Chưa làm";
            if ($status_res && $status_res->num_rows > 0) {
                $status_row = $status_res->fetch_assoc();
                if ((int)$status_row['is_done'] === 1) {
                    $status = "Hoàn thành";
                }
            }
            $stmt_status->close();

            echo "<tr>";
            echo "<td>" . htmlspecialchars($bt_id) . "</td>";
            echo "<td>" . htmlspecialchars($row['TenBaiTap']) . "</td>";
            echo "<td>" . htmlspecialchars($row['CapDo']) . "</td>";
            echo "<td>" . htmlspecialchars($row['DangBai']) . "</td>";
            echo "<td>" . htmlspecialchars($row['TenLop']) . "</td>";
            echo "<td>" . $status . "</td>";
            echo "<td><a href='do_exercise.php?id=" . htmlspecialchars($bt_id) . "&user_id=" . htmlspecialchars($id_hs_from_session) . "'>Làm bài</a></td>";
            echo "</tr>";
        }

                echo "</table>";
            } else {
                echo "<p style='color: red;'>Chưa có bài tập nào cho lớp " . htmlspecialchars($ten_lop) . ". Vui lòng <a href='create_exercise.php'>tạo bài tập</a>.</p>";
            }
        } else {
            echo "<p style='color: red;'>Vui lòng <a href='../Giao%20Diện%20WEB/login.php'>đăng nhập</a> với tài khoản học sinh để xem bài tập.</p>";
        }
    } else {
        // Hiển thị bài tập cụ thể
        $id_bt = $_GET['id'];
        $sql = "SELECT * FROM baitap WHERE ID_BT = ? AND ID_Lop = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $id_bt, $id_lop);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $dangbai = $row['DangBai'];
            $cauhoi = $row['CauHoi'];
            $dapan = $row['DapAn'];

            // Lấy TenLop để hiển thị
            $sql = "SELECT TenLop FROM lophoc  WHERE ID_Lop = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $id_lop);
            $stmt->execute();
            $lop_result = $stmt->get_result();
            $ten_lop = $lop_result->num_rows > 0 ? $lop_result->fetch_assoc()['TenLop'] : $id_lop;

            echo "<h2>" . htmlspecialchars($row['TenBaiTap']) . "</h2>";
            echo "<p>Cấp Độ: " . htmlspecialchars($row['CapDo']) . "</p>";
            echo "<p>Lớp: " . htmlspecialchars($ten_lop) . "</p>";
            echo "<input type='hidden' id='correct_answer' value='" . htmlspecialchars($dapan) . "'>";
            echo "<input type='hidden' id='dang_bai' value='" . htmlspecialchars($dangbai) . "'>";

            if ($dangbai == 'multiple_choice') {
                $options = explode('|', $dapan);
                $correct = array_pop($options);
                echo "<p>" . htmlspecialchars($cauhoi) . "</p>";
                echo "<form id='exercise_form'>";
                $labels = ['a', 'b', 'c', 'd'];
                foreach ($options as $index => $opt) {
                    $label = $labels[$index];
                    $value = $index + 1;
                    echo "<input type='radio' name='answer' value='$value'> $label. " . htmlspecialchars($opt) . "<br>";
                }
                echo "<br><button type='button' onclick='checkAnswer()'>Nộp Bài</button>";
                echo "</form>";
            } elseif ($dangbai == 'fill_in_the_blank') {
                echo "<p>" . htmlspecialchars($cauhoi) . "</p>";
                echo "<form id='exercise_form'>";
                echo "<input type='text' name='answer' id='user_answer'>";
                echo "<br><br><button type='button' onclick='checkAnswer()'>Nộp Bài</button>";
                echo "</form>";
            } elseif ($dangbai == 'drag_and_drop') {
                $items = explode('|', $cauhoi);
                echo "<p>Sắp xếp bằng kéo thả:</p>";
                echo "<div id='sortable'>";
                foreach ($items as $item) {
                    echo "<div class='draggable'>" . htmlspecialchars($item) . "</div>";
                }
                echo "</div>";
                echo "<br><button type='button' onclick='checkAnswer()'>Nộp Bài</button>";
            }
        } else {
            echo "<p style='color: red;'>Không tìm thấy bài tập với ID: " . htmlspecialchars($id_bt) . " hoặc không thuộc lớp của bạn.</p>";
            echo "<p><a href='do_exercise.php?user_id=" . htmlspecialchars($id_hs_from_session) . "'>Xem danh sách bài tập</a></p>"; // Changed user_id to ID_HS
        }
    }
    $conn->close();
    ?>
    <script>
        var exerciseId = "<?php echo htmlspecialchars($exercise_id ?? '', ENT_QUOTES); ?>";
    </script>
    <script src="script.js"></script>

</body>
</html>