<?php require '../config/config.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ADMIN</title>
  <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded" rel="stylesheet"/>
  <link rel="stylesheet" href="admin.css"/>
</head>
<body>
  <div class="layout">
    <!-- Sidebar -->
    <aside class="sidebar" id="sidebar">  
      <h2 class="logo">Toán Học Diệu Kì</h2>
      <ul class="menu">
        <li>
          <a href="#" class="active" onclick="loadContent('admin_login.php', this)">
            <span class="material-symbols-rounded">dashboard</span> TRANG CHỦ
          </a>
        </li>
        <li>
          <a href="#" onclick="loadContent('admin_student.php', this)">
            <span class="material-symbols-rounded">school</span> HỌC SINH
          </a>
        </li>
        <li>
          <a href="#" onclick="loadContent('admin_teacher.php', this)">
            <span class="material-symbols-rounded">person_pin</span> GIÁO VIÊN
          </a>
        </li>
        <li>
          <a href="#" onclick="loadContent('admin_phuhuynh.php', this)">
            <span class="material-symbols-rounded">family_restroom</span> PHỤ HUYNH
          </a>
        </li>
      </ul>
    </aside>

    <!-- Nội dung load động -->
    <main class="main-content">
      <iframe id="content-frame" src="admin_login.php" frameborder="0"></iframe>
    </main>
  </div>

  <script src="admin.js"></script>
</body>
</html>