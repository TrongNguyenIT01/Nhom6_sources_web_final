<?php
    require '../config/config.php';
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="A_style.css">
        <title>Login</title>
    </head>    
    <body>
        <div class="wrapper">
            <form action="../config/dang_nhap_GV.php" method="POST">
               <a  href="index.php">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        stroke-width="1.5" stroke="purple" width="24" height="24"
                        style="vertical-align: middle; margin-right: 8px;">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M8.25 9V5.25A2.25 2.25 0 0 1 10.5 3h6a2.25 2.25 0 0 1 2.25 2.25v13.5A2.25 2.25 0 0 1 16.5 21h-6a2.25 2.25 0 0 1-2.25-2.25V15m-3 0-3-3m0 0 3-3m-3 3H15" />
                    </svg>
                </a>                
                <h1>Đăng nhập</h1>
                    <h3 class="acc"><a href="login.php">Học sinh</a> | <span id="chon"><a href="A_login_teacher.php">Giáo viên</a></span> | <a href="A_phuhuynh.php">Phụ Huynh</a></h3>
                <div class="login">
                    <div class="input-box">
                        <input type="text" class="name" id="name" name ="email" placeholder="Nhập Email" required>
                    </div>
                    <div class="input-box">
                        <input type="password" class="password" id="password" name="password"placeholder="Mật khẩu" required>
                    </div>
                    <div class="Remenber-forget">
                        <label for=""><input type="checkbox">Nhớ mật khẩu</label>
                        <a href="A_forget.html">Quên mật khẩu?</a>
                    </div>
                    <button type="submit" class="btn" name="submit">Đăng nhập</button>    
                </div>
            </form>
        </div>
    </body>
</html>