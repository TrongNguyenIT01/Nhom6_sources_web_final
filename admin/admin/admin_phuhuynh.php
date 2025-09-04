<?php
    require '../config/config.php';
    // Giả lập dữ liệu phụ huynh (sau này thay bằng CSDL)
    $parentName = "Phạm Thị B";
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Trang phụ huynh</title>
  <link rel="stylesheet" href="admin_phuhuynh.css">
</head>
<body>

<header>
  <h1>Xin chào,</h1>
</header>

<div class="cards">
  <div class="card">
    <h3>Thông tin cá nhân</h3>
    <p>Xem và chỉnh sửa thông tin cá nhân của phụ huynh.</p>
    <button onclick="location.href='admin_phuhuynh_thongtin.php'">Xem ngay</button>
  </div>
</div>

</body>
</html>
