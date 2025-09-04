<?php
    require '../config/config.php';
    // Giả lập dữ liệu giáo viên (sau này thay bằng CSDL)
    $teacherName = "Trần Thị B";
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Trang giáo viên</title>
  <link rel="stylesheet" href="admin_teacher.css">
</head>
<body>

<header>
  <h1>Xin chào,</h1>
</header>

<div class="cards">
  <div class="card">
    <h3>Xem thông tin giáo viên</h3>
    <p>Thông tin chi tiết cá nhân và môn giảng dạy.</p>
    <button onclick="location.href='admin_teacher_thongtin.php'">Xem ngay</button>
  </div>
  <div class="card">
    <h3>Xem lớp dạy</h3>
    <p>Danh sách các lớp đang giảng dạy.</p>
    <button onclick="location.href='admin_teacher_lopday.php'">Xem lớp</button>
  </div>
  <div class="card">
    <h3>Cấp tài khoản</h3>
    <p>Tạo tài khoản giáo viên mới.</p>
    <button onclick="location.href='admin_teacher_dk.php'">Thực hiện</button>
  </div>
</div>

</body>
</html>
