<?php
    require '../config/config.php';
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Trang Phụ Huynh - Toán Học Diệu Kì</title>
  <link rel="stylesheet" href="login_phuhuynh.css" />
</head>
<body>
  <header>
    <div class="topbar">
      <span class="logo">Toán Học Diệu Kì 👨‍👩‍👧‍👦</span>
      <span class="icon" onclick="toggleSidebar()">👤</span>
    </div>
  </header>

  <main class="content">
    <section class="section">
      <h1>Chào mừng quý phụ huynh!</h1>
      <p>Tra cứu thông tin học tập của con nhanh chóng và dễ dàng.</p>
    </section>

    <section class="section">
      <h2>Thông tin học sinh</h2>
      <p><strong>Họ tên: <?php echo isset($_SESSION['tencon']) ? $_SESSION['tencon'] : 'Chưa có thông tin'; ?></strong></p>
      <p><strong>Lớp: <?php echo isset($_SESSION['tenlop']) ? $_SESSION['tenlop'] : 'Chưa có thông tin'; ?></strong></p>
    </section>

    <section class="section">
      <h2>Tiến độ học tập</h2>
      <p><a href="view_ketqua_PH.php">Quý phụ huynh xem tiến độ làm bài tập tại đây</a></p>
      <p><a href="xem_kq_KT_PH.php">Quý phụ huynh xem tiến độ làm bài kiểm tra tại đây</a></p>
    </section>
    <section class="section">
      <h2>Tạo Bài Tập Cho <?php echo isset($_SESSION['tencon']) ? $_SESSION['tencon'] : 'Chưa có thông tin'; ?></h2>
      <p><a href="../homework/create_exercise.php">Tạo Bài Tập</a></p>
      <p><a href="view_ketqua_BT_PH.php">Xem Tiến Độ Làm Bài Tập Bạn Giao Tại Đây!!</a></p>
    </section>
  </main>

  <div class="sidebar" id="studentSidebar">
    <div class="sidebar-header">
      <h3>Thông tin phụ huynh</h3>
      <span class="close-btn" onclick="toggleSidebar()">✖</span>
    </div>
    <div class="sidebar-content">
      <p><strong>Phụ huynh: <?php echo isset($_SESSION['user_name']) ? $_SESSION['user_name'] : 'Chưa đăng nhập'; ?></strong></p>
      <p><strong>Tên Con: <?php echo isset($_SESSION['tencon']) ? $_SESSION['tencon'] : 'Chưa có thông tin'; ?></strong></p>
      <a href="logout.php"><button class="logout-btn">Đăng xuất</button></a>
    </div>
  </div>

  <script src="login_phuhuynh.js"></script>
</body>
</html>
