<?php
require '../config/config.php';

if(isset($_POST['submit'])) {
    $username = $_POST['user'];
    $password = $_POST['password'];

    
    $sql ="SELECT role FROM user WHERE user_name = '$username' AND password = '$password'"; 
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);

    if($row) {
        if($row['role'] == 3) {
            header("Location: ../admin/login_admin.php");
            exit(); 
        } else {
            echo '<script>
                alert("Đăng Nhập Thất Bại!!! Sai Vai Trò!!!");
                window.location.href = "../admin/index.php";
            </script>';
        }
    } else {
        echo '<script>
            alert("Đăng nhập thất bại! Sai tên hoặc mật khẩu");
            window.location.href = "../admin/index.php";
        </script>';
    }
}
?>
