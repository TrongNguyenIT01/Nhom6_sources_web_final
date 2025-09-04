<?php
require '../config/config.php';


// Lấy danh sách tất cả chủ đề        //tên DB
$sql = "SELECT DISTINCT subject FROM questions_lop4 ORDER BY subject ASC";
$subjects = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Bài kiểm tra</title>
        <link rel="stylesheet" href="bai_KT.css" />
    </head>
    <body>
        <a class="back" href="Trang Hoc.php">⬅ Quay lại</a>
        <h1 class="title">Kiểm tra</h1>
        <?php
    if ($subjects->num_rows > 0) {
        while ($sub = $subjects->fetch_assoc()) {
            $subject = $sub['subject'];

            echo '<div class="box" onclick="toggleBox(this)">';
            echo '<h2 class="content">🌟 ' . $subject . '</h2>';
            echo '<div class="detail">';

            // Lấy danh sách bài trong chủ đề       //tên DB
            $sql2 = "SELECT DISTINCT lesson FROM questions_lop4 WHERE subject='$subject' ORDER BY lesson ASC";
            $lessons = $conn->query($sql2);

            if ($lessons->num_rows > 0) {
                while ($les = $lessons->fetch_assoc()) {
                    $lesson = $les['lesson'];                           //tên DB
                    echo "<a class='lesson-link' href='Phan_KT_lop4/lay_DB_lop4.php?subject=" . urlencode($subject) . "&lesson=$lesson'><p>📖 Bài kiểm tra tuần $lesson</p></a>";
                }
            } else {
                echo "<p>Chưa có bài nào</p>";
            }

            echo '</div>';
            echo '</div>';
        }
    } else {
        echo "<p>Chưa có chủ đề nào trong CSDL.</p>";
    }
    ?>

    <script src="bai_KT.js"></script>
    </body>
</html>