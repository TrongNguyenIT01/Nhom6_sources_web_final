<?php
 require '../config/config.php';
session_start();
  if (!isset($_SESSION['id_hs'])) {
      header("Location: login_student.php");
      exit();
}

  $maLop = $_SESSION['id_lop']; 
?>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Trang Học Tập</title>
  <link rel="stylesheet" href="TrangHoc.css">
</head>
<body>
  <div class="top-banner">
    <img src="butchi.jpg" alt="Học Toán" />
  </div>

  <div class="grade-container">
    <?php if ($maLop == "CL01"): ?>
      <div class="grade-card yellow">
        <div class="grade-header">Lớp <span>1</span></div>
        <ul>
          <li><a href="baihoc1.php" class="icon">Bài học ›</a></li>
          <li><a href="../homework(2)/do_exercise.php" target="_blank"sclass="icon">Bài Tập ›</a></li>
          <li><a href="bai_KT_lop1.php" class="icon">Bài Kiểm Tra ›</a></li>
        </ul>
      </div>
    <?php endif; ?>

    <?php if ($maLop == "CL02"): ?>
      <div class="grade-card blue">
        <div class="grade-header">Lớp <span>2</span></div>
        <ul>
          <li><a href="baihoc2.php" class="icon">Bài học ›</a></li>
          <li><a href="../homework(2)/do_exercise.php" target="_blank" class="icon">Bài Tập ›</a></li>
          <li><a href="bai_KT_lop2.php" class="icon">Bài Kiểm Tra ›</a></li>
        </ul>
      </div>
    <?php endif; ?>

    <?php if ($maLop == "CL03"): ?>
      <div class="grade-card cyan">
        <div class="grade-header">Lớp <span>3</span></div>
        <ul>
          <li><a href="baihoc3.php" class="icon">Bài học ›</a></li>
          <li><a href="../homework(2)/do_exercise.php" target="_blank" class="icon">Bài Tập ›</a></li>
          <li><a href="bai_KT_lop3.php" class="icon">Bài Kiểm Tra ›</a></li>
        </ul>
      </div>
    <?php endif; ?>

    <?php if ($maLop == "CL04"): ?>
      <div class="grade-card green">
        <div class="grade-header">Lớp <span>4</span></div>
        <ul>
          <li><a href="baihoc4.php" class="icon">Bài học ›</a></li>
          <li><a href="../homework(2)/do_exercise.php" target="_blank" class="icon">Bài Tập ›</a></li>
          <li><a href="bai_KT_lop4.php" class="icon">Bài Kiểm Tra ›</a></li>
        </ul>
      </div>
    <?php endif; ?>

    <?php if ($maLop == "CL05"): ?>
      <div class="grade-card purple">
        <div class="grade-header">Lớp <span>5</span></div>
        <ul>
          <li><a href="baihoc5.php" class="icon">Bài học ›</a></li>
          <li><a href="../homework(2)/do_exercise.php" target="_blank" class="icon">Bài Tập ›</a></li>
          <li><a href="bai_KT_lop5.php" class="icon">Bài Kiểm Tra ›</a></li>
        </ul>
      </div>
    <?php endif; ?>
  </div>

  <a href="../Giao_Dien_WEB/login_student.php" class="back-home">🔙 Quay Lại Trang Chính 🔙</a>
</body>
</html>
