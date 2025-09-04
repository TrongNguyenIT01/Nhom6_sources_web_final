<?php
session_start();
include '../config/config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $otp = $_POST['otp'];

    if (isset($_SESSION['otp']) && isset($_SESSION['otp_expiry'])) {
        if (time() > $_SESSION['otp_expiry']) {
            $error = "Mã OTP đã hết hạn!";
        } elseif ($otp == $_SESSION['otp']) {
            // OTP đúng
            header("Location: A_password-again.php");
            exit();
        } else {
            $error = "Mã OTP không đúng!";
        }
    } else {
        $error = "Bạn chưa yêu cầu mã OTP!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Xác minh mã</title>
    <link rel="stylesheet" href="A_style.css">
</head>
<body>
    <div class="wrapper">
        <form action="A_code.php" method="POST">
            <h1>Quên mật khẩu</h1>
            <h3>Mã đã gửi qua Email của bạn. Vui lòng nhập mã</h3>
            <div class="login">
                <input type="hidden" name="email" value="<?php echo htmlspecialchars($_GET['email'] ?? ''); ?>">
                <div class="input-box">
                    <input type="text" name="otp" placeholder="Nhập mã" required>
                </div>
                <button type="submit" class="btn">Tiếp tục</button>
                <div class="register-link"><p><a href="login.php">Trang chủ</a></p></div>
            </div>
        </form>
        <?php if (!empty($error)) echo "<p style='color:red'>$error</p>"; ?>
    </div>
</body>
</html>
