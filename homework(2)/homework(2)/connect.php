<?php
    $servername ="127.0.0.1";
    $username ="toanhocd_upload";
    $password ="toanhocd_upload";
    $db_name= "toanhocd_upload";
    $conn= new mysqli($servername, $username, $password , $db_name);

    if($conn->connect_error){
        die("Đăng Nhập Thất Bại".$conn->connection_error);
    }else{echo " "; }
    
    $conn->set_charset("utf8mb4");
    
?>