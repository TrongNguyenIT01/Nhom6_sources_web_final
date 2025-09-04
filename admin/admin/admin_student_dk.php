<?php
    require '../config/config.php'; 
   
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Đăng ký học sinh</title>
  <link rel="stylesheet" href="admin_student_dk.css">
</head>
<body>

<div class="container">
  <h2>Cấp Tài Khoản Học Sinh</h2>
  <form action="../admin/dang_ky_HS.php" method="POST">
    <div class="form-group">
      <input type="text" name="user" placeholder="Nhập tên" required>
    </div>
    <div class="form-group">
      <input type="email" name="email" placeholder="Nhập email" required>
    </div>
    <div class="form-group">
      <input type="text" name="phone" placeholder="Nhập số điện thoại" required>
    </div>
    <div class="form-group">
      <select name="sex" required>
        <option value="">Chọn giới tính</option>
        <option value="Nam">Nam</option>
        <option value="Nữ">Nữ</option>
      </select>
    </div>
    <div class="form-group">
      <input type="text" name="parent_name" placeholder="Nhập tên phụ huynh" required>
    </div>
    <div class="form-group">
      <select name="class" required>
        <option value="">Chọn lớp</option>
        <option value="1">Lớp 1</option>
        <option value="2">Lớp 2</option>
        <option value="3">Lớp 3</option>
        <option value="4">Lớp 4</option>
        <option value="5">Lớp 5</option>
      </select>
    </div>
    <div class="form-group">
      <input type="text" name="address" placeholder="Nhập địa chỉ" required>
    </div>
    <div class="form-group">
      <input type="text" name="password" placeholder="Nhập mật khẩu" required>
    </div>

    <div class="form-group">
    <input type="password" class="password" id="password2" name="password2" placeholder="Nhập lại mật khẩu" required>
    </div>
    <button type="submit">Đăng ký</button>
  </form>
  <p class="back"><a href="admin_student.php">⬅ Quay lại</a></p>
</div>

<script src="admin_student_dk.css"></script>
</body>
</html>
