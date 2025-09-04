<?php
require '../config/config.php';


$sqlStudents = "SELECT COUNT(ID_HS) AS total FROM hocsinh";
$resStudents = mysqli_query($conn, $sqlStudents);
$students = mysqli_fetch_assoc($resStudents)['total'] ?? 0;


$sqlTeachers = "SELECT COUNT(ID_GV) AS total FROM giaovien";
$resTeachers = mysqli_query($conn, $sqlTeachers);
$teachers = mysqli_fetch_assoc($resTeachers)['total'] ?? 0;


$sqlParents = "SELECT COUNT(ID_PH) AS total FROM phuhuynh";
$resParents = mysqli_query($conn, $sqlParents);
$parents = mysqli_fetch_assoc($resParents)['total'] ?? 0;
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="admin_login.css">
</head>
<body>
  <div class="main-content">
    <header>
      <h1 id="page-title">Trang chủ</h1>
    </header>
    <div class="cards">
      <div class="card">
        <h3>Học sinh</h3>
        <p><?= $students ?></p>
      </div>
      <div class="card">
        <h3>Giáo viên</h3>
        <p><?= $teachers ?></p>
      </div>
      <div class="card">
        <h3>Phụ huynh</h3>
        <p><?= $parents ?></p>
      </div>
    </div>
  </div>
</body>
</html>
