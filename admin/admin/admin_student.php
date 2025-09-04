<?php
    require '../config/config.php';
    // Giả lập dữ liệu học sinh (sau này thay bằng CSDL)
    $studentName = "Nguyễn Văn A";
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Trang Admin - Học sinh</title>
  <link rel="stylesheet" href="admin_student.css">
</head>
<body>

<header>
  <h1>Xin chào,</h1>
  <p>Trang quản trị học sinh</p>
</header>

<div class="cards">
  <div class="card card1">
    <h3>Xem Danh Sách</h3>
    <p>Xem Danh Sách Của Học Sinh</p>
    <button onclick="location.href='admin_student_thanhtich.php'">Xem ngay</button>
  </div>
  <div class="card card2">
    <h3>Tìm kiếm học sinh</h3>
    <p>Tra cứu thông tin học sinh.</p>
    <button onclick="location.href='admin_student_timkiem.php'">Tìm kiếm</button>
  </div>
  <div class="card card3">
    <h3>Cấp tài khoản</h3>
    <p>Đăng ký tài khoản học sinh mới.</p>
    <button onclick="location.href='admin_student_dk.php'">Thực hiện</button>
  </div>
</div>

</body>
</html>
