<?php
require '../config/config.php';
session_start();

if(isset($_POST['submit'])) {
    $username = $_POST['email'];
    $password = $_POST['password'];

   
    $sql = "SELECT u.*, g.Ten, g.Email, g.ID_GV, g.LopDay
        FROM user u
        JOIN giaovien g ON u.ID = g.ID_GV
        WHERE u.Email = '$username'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);

    if($row) {
        $hashedPassword = $row['password'];
        $isValidPassword = false;

      
        if(password_verify($password, $hashedPassword)) {
            $isValidPassword = true;
        } 
      
        elseif($password === $hashedPassword) {
            $isValidPassword = true;
        }

        if($isValidPassword) {
            if($row['role'] == 3) {
                $_SESSION['id_gv'] = $row['ID_GV']; 
                $_SESSION['tengv'] = $row['Ten'];
                $_SESSION['email'] = $row['Email'];
                $_SESSION['sdt'] = $row['SDT'];
                $_SESSION['lopday'] = $row['LopDay'];
                header("Location: ../Giao_Dien_WEB/login_teacher.php");
                exit(); 
            } else {
                echo '<script>
                    alert("Đăng Nhập Thất Bại!!! Sai Vai Trò!!!");
                    window.location.href = "../Giao_Dien_WEB/login.php";
                </script>';
            }
        } else {
            echo '<script>
                alert("Đăng nhập thất bại! Sai mật khẩu");
                window.location.href = "../Giao_Dien_WEB/login.php";
            </script>';
        }
    } else {
        echo '<script>
            alert("Đăng nhập thất bại! Sai tên đăng nhập");
            window.location.href = "../Giao_Dien_WEB/login.php";
        </script>';
    }
}
?>
