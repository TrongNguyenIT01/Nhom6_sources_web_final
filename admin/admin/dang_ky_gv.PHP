<?php
require '../config/config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['user'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $sex = $_POST['sex'];
    $class = $_POST['class'];   
    $address = $_POST['address'];
    $password = $_POST['password'];
    $roleGV = 3;

    // Check trùng user
    $checkUser = "SELECT * FROM `user` WHERE user_name = '$username'";
    $result = mysqli_query($conn, $checkUser);
    if (mysqli_num_rows($result) > 0) {
        echo '<script>alert("Tên đăng nhập giáo viên đã tồn tại!");window.location.href="../admin/admin_teacher_dk.php";</script>';
        exit();
    }

    // Sinh ID GV
    $queryMax = "SELECT MAX(CAST(SUBSTRING(ID, 3) AS UNSIGNED)) AS maxNum FROM `user` WHERE ID LIKE 'GV%'";
    $resMax = mysqli_query($conn, $queryMax);
    $rowMax = mysqli_fetch_assoc($resMax);
    $num = ($rowMax['maxNum'] != null) ? $rowMax['maxNum'] + 1 : 1;
    $newGVID = "GV" . str_pad($num, 3, "0", STR_PAD_LEFT);

    // Map class
    $classID = [
        "1" => "CL01",
        "2" => "CL02",
        "3" => "CL03",
        "4" => "CL04",
        "5" => "CL05"
    ];
    $selectedClass = $classID[$class] ?? null;
    if (!$selectedClass) {
        echo '<script>alert("Lớp học không hợp lệ!");window.location.href="../admin/admin_student_dk.php";</script>';
        exit();
    }

    // Mã hoá mật khẩu
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Tạo user GV
    $sqlUserGV = "INSERT INTO `user` (ID, user_name, email, SDT, `password`, `role`) 
                  VALUES ('$newGVID', '$username', '$email', '$phone', '$hashedPassword', '$roleGV')";

    if (mysqli_query($conn, $sqlUserGV)) {
        // Thêm giáo viên
        $sqlGV = "INSERT INTO giaovien (ID_GV, ID, Ten, GioiTinh, DiaChi, LopDay, Email, SDT) 
                  VALUES ('$newGVID', '$newGVID', '$username','$sex', '$address','$selectedClass', '$email', '$phone')";

        if (mysqli_query($conn, $sqlGV)) {
            echo '<script>
                alert("Cấp Tài Khoản Giáo Viên Thành Công");
                window.location.href="../admin/admin_teacher_dk.php";
            </script>';
        } else {
            echo '<script>alert("Đăng ký thành công nhưng lỗi khi thêm Giáo Viên! Lỗi: '.$conn->error.'");window.location.href="../admin/admin_teacher_dk.php";</script>';
        }
    } else {
        echo '<script>alert("Đăng ký thất bại khi tạo User! Lỗi: '.$conn->error.'");window.location.href="../admin/admin_teacher_dk.php";</script>';
    }
}
?>
