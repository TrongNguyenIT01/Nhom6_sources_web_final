<?php
$conn = new mysqli("localhost", "root", "", "login_ck");
if ($conn->connect_error) die("Kết nối thất bại: " . $conn->connect_error);

// Lấy danh sách tất cả chủ đề        //tên DB
$sql = "SELECT DISTINCT subject FROM questions_lop3 ORDER BY subject ASC";
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
        <a class="back" href="Trang Hoc.php">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        stroke-width="1.5" stroke="purple" width="24" height="24"
                        style="vertical-align: middle; margin-right: 8px;">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M8.25 9V5.25A2.25 2.25 0 0 1 10.5 3h6a2.25 2.25 0 0 1 2.25 2.25v13.5A2.25 2.25 0 0 1 16.5 21h-6a2.25 2.25 0 0 1-2.25-2.25V15m-3 0-3-3m0 0 3-3m-3 3H15" />
                    </svg>
                </a>
        <?php
    if ($subjects->num_rows > 0) {
        while ($sub = $subjects->fetch_assoc()) {
            $subject = $sub['subject'];

            echo '<div class="box" onclick="toggleBox(this)">';
            echo '<h2 class="content">🌟 ' . $subject . '</h2>';
            echo '<div class="detail">';

            // Lấy danh sách bài trong chủ đề       //tên DB
            $sql2 = "SELECT DISTINCT lesson FROM questions_lop3 WHERE subject='$subject' ORDER BY lesson ASC";
            $lessons = $conn->query($sql2);

            if ($lessons->num_rows > 0) {
                while ($les = $lessons->fetch_assoc()) {
                    $lesson = $les['lesson'];                           //tên DB
                    echo "<a class='lesson-link' href='../Phan_KT_lop3/lay_DB_lop3.php?subject=" . urlencode($subject) . "&lesson=$lesson'><p>📖 Bài kiểm tra tuần $lesson</p></a>";
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