<?php
session_start();
require '../config/config.php';

if (isset($_POST['submit'])) {
    $username = $_POST['user'];
    $password = $_POST['password'];

    $sql = "SELECT u.*, p.ID_PH, p.TenCon, h.ID_HS, h.ID_Lop
            FROM user u
            JOIN phuhuynh p ON u.ID = p.ID_PH
            JOIN hocsinh h ON p.TenCon = h.Ten
            WHERE u.user_name = ? OR u.ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $username, $username);
    $stmt->execute();
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();

    if ($row) {
        $hashedPassword = $row['password'];
        $isValidPassword = false;

      
        if (password_verify($password, $hashedPassword)) {
            $isValidPassword = true;
        } elseif ($password === $hashedPassword) {
            $isValidPassword = true;
        }

        if ($isValidPassword) {
            if ($row['role'] == 2) { 
                $_SESSION['id_ph']     = $row['ID_PH'];
                $_SESSION['tencon']    = $row['TenCon'];
                $_SESSION['user_name'] = $row['user_name'];
                $_SESSION['id_hs']     = $row['ID_HS'];

                // Lấy tên lớp từ ID_Lop
                $sql2 = "SELECT TenLop FROM lophoc WHERE ID_Lop = ?";
                $stmt2 = $conn->prepare($sql2);
                $stmt2->bind_param("s", $row['ID_Lop']);
                $stmt2->execute();
                $result2 = $stmt2->get_result();

                if ($r2 = $result2->fetch_assoc()) {
                    $_SESSION['tenlop'] = $r2['TenLop'];
                } else {
                    $_SESSION['tenlop'] = "Chưa có dữ liệu";
                }

                header("Location: ../Giao_Dien_WEB/login_phuhuynh.php");
                exit();
            } else {
                echo '<script>
                    alert("Đăng Nhập Thất Bại!!! Sai Vai Trò!!!");
                    window.location.href = "../Giao_Dien_WEB/A_phuhuynh.php";
                </script>';
            }
        } else {
            echo '<script>
                alert("Đăng nhập thất bại! Sai mật khẩu");
                window.location.href = "../Giao_Dien_WEB/A_phuhuynh.php";
            </script>';
        }
    } else {
        echo '<script>
            alert("Đăng nhập thất bại! Sai tên đăng nhập");
            window.location.href = "../Giao_Dien_WEB/A_phuhuynh.php";
        </script>';
    }
}
?>
