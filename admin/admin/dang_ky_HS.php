<?php
require '../config/config.php';

// Hàm bỏ dấu + viết liền
function vn_to_str($str) {
    $unicode = array(
        'a'=>'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',
        'd'=>'đ',
        'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
        'i'=>'í|ì|ỉ|ĩ|ị',
        'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
        'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
        'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
    );
    foreach($unicode as $nonUnicode=>$uni) {
        $str = preg_replace("/($uni)/i", $nonUnicode, $str);
    }
    $str = strtolower(str_replace(' ', '', $str)); // bỏ khoảng trắng
    return $str;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['user'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $sex = $_POST['sex'];
    $parent_name = $_POST['parent_name'];
    $class = $_POST['class'];   // giá trị 1,2,3,4,5
    $address = $_POST['address'];
    $password = $_POST['password'];
    $password2 = $_POST['password2'];
    $roleHS = 1; 
    $rolePH = 2;

    // Check password nhập lại
    if ($password !== $password2) {
        echo '<script>alert("Mật khẩu nhập lại không khớp!");window.location.href="../admin/admin_student_dk.php";</script>';
        exit();
    }

    // Check trùng username học sinh
    $checkUser = "SELECT * FROM `user` WHERE user_name = '$username'";
    $result = mysqli_query($conn, $checkUser);
    if (mysqli_num_rows($result) > 0) {
        echo '<script>alert("Tên đăng nhập học sinh đã tồn tại!");window.location.href="../admin/admin_student_dk.php";</script>';
        exit();
    }

    // Sinh ID HS
    $queryMax = "SELECT MAX(CAST(SUBSTRING(ID, 3) AS UNSIGNED)) AS maxNum FROM `user` WHERE ID LIKE 'HS%'";
    $resMax = mysqli_query($conn, $queryMax);
    $rowMax = mysqli_fetch_assoc($resMax);
    $num = ($rowMax['maxNum'] != null) ? $rowMax['maxNum'] + 1 : 1;
    $newHSID = "HS" . str_pad($num, 3, "0", STR_PAD_LEFT);

    // Sinh ID PH
    $queryMax = "SELECT MAX(CAST(SUBSTRING(ID, 3) AS UNSIGNED)) AS maxNum FROM `user` WHERE ID LIKE 'PH%'";
    $resMax = mysqli_query($conn, $queryMax);
    $rowMax = mysqli_fetch_assoc($resMax);
    $num = ($rowMax['maxNum'] != null) ? $rowMax['maxNum'] + 1 : 1;
    $newPHID = "PH" . str_pad($num, 3, "0", STR_PAD_LEFT);

    // Map class number -> ID lớp
    $classID = [
        "1" => "CL01",
        "2" => "CL02",
        "3" => "CL03",
        "4" => "CL04",
        "5" => "CL05"
    ];
    $selectedClass = isset($classID[$class]) ? $classID[$class] : null;
    if (!$selectedClass) {
        echo '<script>alert("Lớp học không hợp lệ!");window.location.href="../admin/admin_student_dk.php";</script>';
        exit();
    }

        // Mã Hóa MK
    $passwordMHHS = password_hash($password, PASSWORD_DEFAULT);  
    $phPassword = vn_to_str($parent_name);
    $password_MHPH = password_hash($phPassword, PASSWORD_DEFAULT);

    // Tạo user học sinh
    $sqlUserHS = "INSERT INTO `user` (ID, user_name, email, SDT, `password`, `role`) 
                  VALUES ('$newHSID', '$username', '$email', '$phone', '$passwordMHHS', '$roleHS')";

    // Tạo user phụ huynh 
    $phUserName = $parent_name; 
    $phPassword = vn_to_str($parent_name);
    $sqlUserPH = "INSERT INTO `user` (ID, user_name, email, SDT, `password`, `role`) 
                  VALUES ('$newPHID', '$phUserName', '$email', '$phone', '$password_MHPH', '$rolePH')";

    if (mysqli_query($conn, $sqlUserHS) && mysqli_query($conn, $sqlUserPH)) {
        // Thêm học sinh
        $sqlHS = "INSERT INTO hocsinh (ID_HS, ID, Ten_PH, ID_Lop, Ten, DiaChi, SDT, GioiTinh) 
                  VALUES ('$newHSID', '$newHSID', '$parent_name', '$selectedClass', '$username',
                          '$address', '$phone', '$sex')";

        // Thêm phụ huynh
        $sqlPH = "INSERT INTO phuhuynh (ID_PH, ID, Ten, SDT, DiaChi, TenCon) 
                  VALUES ('$newPHID', '$newPHID', '$parent_name','$phone','$address', '$username')"; 

        if (mysqli_query($conn, $sqlHS) && mysqli_query($conn, $sqlPH)) {
           echo '<script>
                alert("Cấp Tài Khoản Thành Công\nTên đăng nhập PH: '.$phUserName.'\nMật khẩu PH: '.$phPassword.'");
                window.location.href="../admin/admin_student_dk.php";
            </script>';
            echo '<script>alert("Đăng ký thành công nhưng lỗi khi thêm HocSinh hoặc PhuHuynh! Lỗi: '.$conn->error.'");window.location.href="../Giao Diện WEB/A_register.php";</script>';
        }
    } else {
        echo '<script>alert("Đăng ký thất bại khi tạo User! Lỗi: '.$conn->error.'");window.location.href="../Giao_Dien_WEB/A_register.php";</script>';
    }
}
?>
