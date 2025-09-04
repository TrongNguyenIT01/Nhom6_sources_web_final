<?php
    require '../config/config.php';
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="Registration.css">
        <title>Đăng ký</title>
    </head>    
    <body>
        <div class="wrapper">
            <form action="../config/dang_ky_HS.php" method="POST">
                <h1>Đăng ký</h1>
                <div class="login">
                    <div class="input-box">
                        <input type="text" class="name" id="name" name="user" placeholder="Nhập tên" required>
                    </div>
                    <div class="input-box">
                        <input type="email" class="email" id="email" name="email" placeholder="Nhập email" required>
                    </div>    
                    <div class="input-box">
                        <input type="text" class="number" id="number" name="phone" placeholder="Nhập số điện thoại" required>
                    </div>
                    <div class="input-box">
                        <select class="radio" id="gender" name="sex" required>
                            <option value="">Chọn giới tính</option>
                            <option value="Nam">Nam</option>
                            <option value="Nữ">Nữ</option>
                        </select>
                    </div>
                    <div class="input-box">
                        <input type="text" class="parent_name" id="parent_name" name="parent_name" placeholder="Nhập tên phụ huynh" required>
                    </div>
                    <div class="input-box">
                        <select class="radio" id="class" name="class" required>
                            <option value="">Chọn lớp</option>
                            <option value="1">Lớp 1</option>
                            <option value="2">Lớp 2</option>
                            <option value="3">Lớp 3</option>
                            <option value="4">Lớp 4</option>
                            <option value="5">Lớp 5</option>
                        </select>
                    </div>
                    <div class="input-box">
                        <input type="text" class="address" id="address" name="address" placeholder="Nhập địa chỉ" required>
                    </div>
                    <div class="input-box">
                        <input type="password" class="password" id="password" name="password" placeholder="Nhập mật khẩu" required>
                    </div>
                    <div class="input-box">
                        <input type="password" class="password" id="password2" name="password2" placeholder="Nhập lại mật khẩu" required>
                    </div>

                    <button type="submit" class="btn">Đăng ký</button>    
                    <div class="register-link"><p><a href="login.php">Trang chủ</a></p></div>
                </div>
            </form>
        </div>
    </body>
</html>