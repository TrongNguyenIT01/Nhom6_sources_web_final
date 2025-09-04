<?php
    require '../config/config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Đăng ký tài khoản giáo viên</title>
  <link rel="stylesheet" href="admin_teacher_dk.css">
</head>
<body>

<div class="form-container ">
  <h2>Cấp Tài Khoản Giáo Viên</h2>
  <form action="../admin/dang_ky_gv.PHP" method="POST">
    <div class="form-group">
      <input type="text" name="user" placeholder="Nhập tên" required>
    </div>
    <div class="form-group">
      <input type="text" name="phone" placeholder="Nhập số điện thoại" required>
    </div>
    <div div div class="form-group">
    <input type="email" name="email" placeholder="Nhập email" required>
    </div>
    <div class="form-group">
      <select name="sex" required>
        <option value="">Chọn giới tính</option>
        <option value="Nam">Nam</option>
        <option value="Nữ">Nữ</option>
      </select>
    </div>
    <div class="form-group">
      <select name="class" required>
        <option value="">Chọn Khối Lớp Dạy</option>
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


    <button type="submit" class="btn">Đăng ký</button>
  </form>
  </div>

</body>
</html>
