<?php
session_start();
include '../config/config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $password = $_POST['password'];
    $confirm  = $_POST['confirm'];

    if ($password !== $confirm) {
        $error = "Mật khẩu không khớp!";
    } elseif (!isset($_SESSION['otp_email'])) {
        $error = "Không tìm thấy email để đặt lại mật khẩu!";
    } else {
        $email = $_SESSION['otp_email'];
        $hashed = password_hash($password, PASSWORD_DEFAULT);

        $stmt = $conn->prepare("UPDATE user SET password=? WHERE email=?");
        $stmt->bind_param("ss", $hashed, $email);
        $stmt->execute();

        // Xoá session sau khi đổi mật khẩu
        session_destroy();

        $success = "Đổi mật khẩu thành công! <a href='login.php'>Đăng nhập</a>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tạo mật khẩu mới</title>
    <link rel="stylesheet" href="A_style.css">
</head>
<body>
    <div class="wrapper">
        <form action="A_password-again.php" method="POST">
            <h1>Đặt lại mật khẩu</h1>
            <input type="hidden" name="email" value="<?php echo htmlspecialchars($_GET['email'] ?? ''); ?>">
            <div class="login">
                <div class="input-box">
                    <input type="password" name="password" placeholder="Nhập mật khẩu mới" required>
                </div>
                <div class="input-box">
                    <input type="password" name="confirm" placeholder="Nhập lại mật khẩu" required>
                </div>
                <button type="submit" class="btn">Thành công</button>
            </div>
        </form>
        <?php 
            if (!empty($error))   echo "<p style='color:red'>$error</p>";
            if (!empty($success)) echo "<p style='color:green'>$success</p>";
        ?>
    </div>
</body>
</html>
