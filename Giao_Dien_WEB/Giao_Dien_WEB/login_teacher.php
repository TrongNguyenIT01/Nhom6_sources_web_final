<?php
    require '../config/config.php';
    session_start();
    if (!isset($_SESSION['lopday'])) {
    header("Location: login_teacher.php");
    exit();
}
  $lopday =$_SESSION['lopday'];
?>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trang Giáo Viên - Toán Học Diệu Kì</title>
  <link rel="stylesheet" href="login_teacher.css">
</head>
<body>

  <header class="topbar">
    <div class="logo">Toán Học Diệu Kì 📘👩‍🏫</div>
    <div class="icon" onclick="toggleSidebar()">👤</div>
  </header>

  <div id="teacherSidebar" class="sidebar">
    <div class="sidebar-header">
      <h3>Thông tin giáo viên</h3>
      <span class="close-btn" onclick="toggleSidebar()">✖</span>
    </div>
    <p><strong>👩‍🏫 Họ tên: <?php echo isset($_SESSION['tengv']) ? $_SESSION['tengv'] : 'Chưa có thông tin'; ?></strong></p>
    <p><strong>📧 Email: <?php echo isset($_SESSION['email']) ? $_SESSION['email'] : 'Chưa có thông tin'; ?></strong></p>
    <p><strong>📞 Điện thoại: <?php echo isset($_SESSION['sdt']) ? $_SESSION['sdt'] : 'Chưa có thông tin'; ?></strong> </p>
    <p><strong>📚 Môn giảng dạy:</strong> Toán tiểu học</p>
    <a href="logout.php"><button class="logout-btn">Đăng xuất</button></a>
    <a href="Doi_pass.php"><button class="logout-btn">Đổi Mật Khẩu</button></a>
  </div>

  <main class="content">
    <div class="section">
      <h2>Chào mừng cô giáo!</h2>
      <p>Đây là khu vực quản lý lớp học, điểm số và tiến độ học tập của học sinh.</p>
    </div>

 <div class="section">
  <h2>Danh sách lớp học</h2>
  <h4><a href="login_teacher_ds_hs.php">Xem Danh Sách Lớp Tại Đây</a></h4>
  <?php
    if (!isset($_SESSION['id_gv'])) {
        echo "<p>Chưa đăng nhập!</p>";
    } else {
        $idGV = $_SESSION['id_gv'];

 
        $sql = "SELECT LopDay FROM giaovien WHERE ID_GV = '$idGV'";
        $result = mysqli_query($conn, $sql);

        if ($result && mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $lopDay = $row['LopDay'];

            if (!empty($lopDay)) {
                $dsLop = explode(",", $lopDay);

                echo "<ul>";
                foreach ($dsLop as $maLop) {
                    $maLop = trim($maLop);

                    $sqlHS = "SELECT COUNT(*) as tongHS FROM hocsinh WHERE ID_Lop = '$maLop'";
                    $resHS = mysqli_query($conn, $sqlHS);
                    $tongHS = 0;
                    if ($resHS && mysqli_num_rows($resHS) > 0) {
                        $dataHS = mysqli_fetch_assoc($resHS);
                        $tongHS = $dataHS['tongHS'];
                    }

                    echo "<li>📘 Lớp <strong>$maLop</strong> - Sĩ số: $tongHS học sinh</li>";
                }
                echo "</ul>";
            } else {
                echo "<p>Giáo viên chưa được phân công lớp nào.</p>";
            }
        } else {
            echo "<p>Không tìm thấy dữ liệu giáo viên.</p>";
        }
    }
  ?>
</div>
  <div class="section">
    <h2>Thêm Bài Tập</h2>
    <h3>Quý Thầy Cô Giáo Thêm Bài Tập Cho Học Sinh Tại Đây : <a href="../homework(2)/create_exercise.php" target="_blank">Thêm Bài Tập</a></h3>
    <p>Lưu ý: Quý Thầy Cô chỉ thêm bài tập cho lớp mình đang được phụ trách giảng dạy!!</p>
  </div>
 <div class="section">
            <h2>Thêm bài kiểm tra</h2>
            <p>Chọn lớp để thêm bài tập cho học sinh:</p>

         
            <div class="class-buttons">
                <h3><?php if($lopday =="CL01"): ?><a href="../goc_hoc_tap (1) (1)/Them_bai_KT_lop1/Them_lop1.php" class="btn">Lớp 1</a> <?php endif; ?></h3>
                <h3><?php if($lopday =="CL02"): ?> <a href="../goc_hoc_tap (1) (1)/Them_bai_KT_lop2/Them_lop2.php" class="btn">Lớp 2</a><?php endif; ?></h3>
                <h3><?php if($lopday =="CL03"): ?><a href="../goc_hoc_tap (1) (1)/Them_bai_KT_lop3/Them_lop3.php" class="btn">Lớp 3</a><?php endif; ?></h3>
                <h3><?php if($lopday =="CL04"): ?><a href="../goc_hoc_tap (1) (1)/Them_bai_KT_lop4/Them_lop4.php" class="btn">Lớp 4</a><?php endif; ?></h3>
                <h3><?php if($lopday =="CL05"): ?><a href="../goc_hoc_tap (1) (1)/Them_bai_KT_lop5/Them_lop5.php" class="btn">Lớp 5</a><?php endif; ?></h3>
                <h3><a href="game/them_cau_hoi.php" class="btn"><br>Thêm câu hỏi cho game kéo thả</a></h3>
            </div>
            <h3><a href="xem_KT_KT_GV.php" class="btn"><br>Xem tiến độ làm bài kiểm tra tại đây</a></h3>
        </div>


    <div class="section">
      <h2>Báo cáo & thống kê dữ liệu theo lớp</h2>
      <h3><a href="../Giao_Dien_WEB/view_ketqua_GV.php">Xem Dữ Liệu Tại Đây</a></h3>
    </div>
  </main>

  <footer>
    © 2025 Toán Học Diệu Kì. All rights reserved.
  </footer>

  <script src="login_teacher.js"></script>
</body>
</html>
