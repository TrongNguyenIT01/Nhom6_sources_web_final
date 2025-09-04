<?php
session_start();
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require __DIR__ . '/vendor/autoload.php';
include '../config/config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];

    // Kiểm tra email trong DB
    $stmt = $conn->prepare("SELECT * FROM user WHERE email=?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Tạo OTP
        $otp = rand(100000, 999999);
        $_SESSION['otp'] = $otp;
        $_SESSION['otp_email'] = $email;
        $_SESSION['otp_expiry'] = time() + 600; // 10 phút

        $mail = new PHPMailer(true);
        try {
            // Cấu hình SMTP Gmail
            $mail->isSMTP();
            $mail->Host       = 'smtp.gmail.com';
            $mail->SMTPAuth   = true;
            $mail->Username   = 'hoangphu24122005@gmail.com';   // Gmail bạn
            $mail->Password   = 'enav ylqm kpwe ooah';          // App Password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port       = 587;

            // Người gửi
            $mail->setFrom('hoangphu24122005@gmail.com', 'Hệ thống');
            // Người nhận
            $mail->addAddress($email);

            // Nội dung
            $mail->isHTML(true);
            $mail->Subject = 'Mã xác minh đặt lại mật khẩu';
            $mail->Body    = "Mã OTP của bạn là: <b>$otp</b> (hết hạn sau 10 phút)";
            $mail->CharSet = 'UTF-8';
            $mail->Encoding = 'base64';

            $mail->send();

            // Nếu gửi thành công thì chuyển trang nhập mã
            header("Location: A_code.php");
            exit();
        } catch (Exception $e) {
            echo "Không gửi được email. Lỗi: {$mail->ErrorInfo}";
        }
    } else {
        $error = "Email không tồn tại!";
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="A_style.css">
    <title>Quên mật khẩu</title>
</head>
<body>
    <div class="wrapper">
        <form action="A_forget.php" method="POST">
            <h1>Quên mật khẩu</h1>
            <div class="login">
                <div class="input-box">
                    <input type="email" name="email" placeholder="Nhập email" required>
                </div>
                <button type="submit" class="btn">Tiếp tục</button>
                <div class="register-link"><p><a href="login.php">Trang chủ</a></p></div>
            </div>
        </form>
        <?php if (!empty($error)) echo "<p style='color:red'>$error</p>"; ?>
    </div>
</body>
</html>
