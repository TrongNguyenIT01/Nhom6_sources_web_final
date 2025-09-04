  <?php
      require '../config/config.php';
      session_start();
      if (!isset($_SESSION['user_id'])) {
          header("Location: login.php");
          exit();
  }
  ?>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Final Web</title>
  <link rel="stylesheet" href="login_student.css" />
</head>
<body>
  <header>
    <div class="topbar">
      <div class="menu">
        <button class="menu-item active"></button>
      </div>
      <div class="right-icons">
        <span class="icon" onclick="toggleSidebar()">👤</span>
      </div>
    </div>
    <nav class="toolbar">
      <span class="logo">Toán Học Diệu Kì</span>
    </nav>
  </header>

  
  <main class="banner">
    <h1>Giỏi toàn diện cùng đội ngũ giáo viên</h1>
    <h2>Thuộc <span class="highlight">TOP 5</span> trường điểm quốc gia</h2>

    <div class="cta-container">
      <span class="cta btn-phuhuynh">
        <a href="../homework/do_exercise.php" target="_blank">📘 Bài tập từ Phụ Huynh</a>
      </span>

      <span class="cta btn-onluyen">
        <a href="../homework(2)/do_exercise.php" target="_blank">✏️ Tự ôn luyện</a>
      </span>

      <span class="cta btn-hoc">
        <a href="../goc_hoc_tap (1) (1)/Trang Hoc.php">📚 Góc học tập</a>
      </span>

      <span class="cta btn-ketqua">
        <a href="KQ_KT.php">🏆 Xem điểm kiểm tra</a>
      </span>

      <span class="cta btn-ketqua">
        <a href="view_ketqua.php">🏆 Xem kết quả</a>
      </span>
    </div>
  </main>


    <div class="teachers">
      <div class="teacher-card">
        <img src="gv1.jpg" alt="thành viên">
        <p class="teacher-name">Nguyễn Trọng Nguyễn</p>
        <p class="teacher-id">2311554114</p>
      </div>
      <div class="teacher-card">
        <img src="gv2.jpg" alt="thành viên">
        <p class="teacher-name">Nguyễn Cao Hoàng Phú</p>
        <p class="teacher-id">2311553870</p>
      </div>
      <div class="teacher-card">
        <img src="gv3.jpg" alt="thành viên">
        <p class="teacher-name">Nguyễn Nhật Long</p>
        <p class="teacher-id">2311552884</p>
      </div>
      <div class="teacher-card">
        <img src="gv4.jpg" alt="thành viên">
        <p class="teacher-name">Hứa Gia Kiên</p>
        <p class="teacher-id">2311553788</p>
      </div>
      <div class="teacher-card">
        <img src="gv5.jpg" alt="thành viên">
        <p class="teacher-name">Đặng Anh Khoa</p>
        <p class="teacher-id">2311553740</p>
      </div>
      <div class="teacher-card">
        <img src="gv6.jpg" alt="thành viên">
        <p class="teacher-name">Lê Thành Huy</p>
        <p class="teacher-id">2311553353</p>
      </div>
    </div>


  </main>
<!--ìnfor-->

  <div class="sidebar" id="studentSidebar">
    <div class="sidebar-header">
      <h3>Thông Tin Học Sinh</h3>
      <span class="close-btn" onclick="toggleSidebar()">✖</span>
    </div>
    <div class="sidebar-content">
      <p><strong>Họ tên học sinh: <?php echo $_SESSION['user_name']; ?> </strong> </p>
      <p><strong>Mã số: <?php echo $_SESSION['user_id']; ?></strong> </p>
<!--lấy cấp độ-->
      <?php 
      $sl_bt = $_SESSION['sl_bt'] ?? 0;
      $id_hs = $_SESSION['id_hs'] ?? null;
      $cap_do = "";

      if ($sl_bt < 10): 
          $cap_do = "Chưa có";
      ?>
          <p><strong>Cấp Độ: Chưa có cấp độ (bạn cần hoàn thiện ít nhất 10 bài tập để đạt cấp độ đầu tiên)</strong></p>
          <img src="../Cap_do/capdo.png" alt="Chưa có cấp độ" style="width:120px;height:auto;">

      <?php elseif ($sl_bt >= 10 && $sl_bt <= 20): 
          $cap_do = "Vàng";
      ?>
          <p><strong>Cấp Độ: Vàng</strong></p>
          <img src="../Cap_do/vang.png" alt="Vàng" style="width:120px;height:auto;">

      <?php elseif ($sl_bt >= 21 && $sl_bt <= 30): 
          $cap_do = "Bạch Kim";
      ?>
          <p><strong>Cấp Độ: Bạch Kim</strong></p>
          <img src="../Cap_do/bac_kim.png" alt="Bạch Kim" style="width:120px;height:auto;">

      <?php elseif ($sl_bt >= 31 && $sl_bt <= 45): 
          $cap_do = "Kim Cương";
      ?>
          <p><strong>Cấp Độ: Kim Cương</strong></p>
          <img src="../Cap_do/kim_cuong.png" alt="Kim Cương" style="width:120px;height:auto;">

      <?php elseif ($sl_bt >= 46 && $sl_bt <= 70): 
          $cap_do = "Lục Bảo";
      ?>
          <p><strong>Cấp Độ: Lục Bảo</strong></p>
          <img src="../Cap_do/luc_bao.png" alt="Lục Bảo" style="width:120px;height:auto;">

      <?php else: 
          $cap_do = "Cao Thủ";
      ?>
          <p><strong>Cấp Độ: Cao Thủ</strong></p>
          <img src="../Cap_do/cao_thu.png" alt="Cao Thủ" style="width:120px;height:auto;">
      <?php endif; ?>

      <?php
      // Cập nhật cấp độ vào DB nếu có ID học sinh
      if ($id_hs && $cap_do != "") {
          $sql = "UPDATE hocsinh SET CapDo = '$cap_do' WHERE ID_HS = '$id_hs'";
          mysqli_query($conn, $sql) or die(mysqli_error($conn));
      }
      ?>
        <p><strong>ID Phụ Huynh: <?php echo $_SESSION['id_ph']; ?> </strong> </p>
     
      <a href="logout.php"><button class="logout-btn">Đăng xuất</button></a>
      <a href="Doi_pass.php"><button class="logout-btn">Đổi Mật Khẩu</button></a>
      
    </div>
  </div>

      <!-- Khu vực trò chơi -->
<section class="games">
  <h2>Vừa học vừa chơi</h2>
  <div class="game-cards">
    <div class="game-card">
      <div class="game-image"><img src="image_game/keo_tha.png" alt="Kéo thả đáp án" width="200"></div>
      <p>Kéo thả đáp án</p>
      <?php if ($cap_do == "Vàng" || $cap_do == "Bạch Kim" || $cap_do == "Kim Cương" || $cap_do == "Lục Bảo" || $cap_do == "Cao Thủ"): ?>
        <a href="../Giao_Dien_WEB/game/game_keotha.php"><button>Bắt đầu trò chơi</button></a>
      <?php else: ?>
        <button disabled>Bạn cần cấp độ Vàng để chơi</button>
      <?php endif; ?>
    </div>

  
    <div class="game-card">
      <div class="game-image"><img src="image_game/me_cung.png" alt="Giải mã mê cung" width="200" height="140"></div>
      <p>Giải mã mê cung</p>
      <?php if ($cap_do == "Bạch Kim" || $cap_do == "Kim Cương" || $cap_do == "Lục Bảo" || $cap_do == "Cao Thủ"): ?>
        <a href="game/game_me_cung.php"><button>Bắt đầu trò chơi</button></a>
      <?php else: ?>
        <button disabled>Bạn cần cấp độ Bạch Kim để chơi</button>
      <?php endif; ?>
    </div>

    <div class="game-card">
      <div class="game-image"><img src="image_game/tinh-nhanh.png" alt="Trò chơi tính nhanh" width="200" height="140"></div>
      <p>Trò chơi tính nhanh</p>
      <?php if ($cap_do == "Kim Cương" || $cap_do == "Lục Bảo" || $cap_do == "Cao Thủ"): ?>
        <a href="game/tinh_nhanh.html"><button>Bắt đầu trò chơi</button></a>
      <?php else: ?>
        <button disabled>Bạn cần cấp độ Kim Cương để chơi</button>
      <?php endif; ?>
    </div>

    <div class="game-card">
      <div class="game-image"><img src="image_game/giai_cuu_chu_rua.png" alt="Giải cứu chú rùa" width="200"></div>
      <p>Giải cứu chú rùa</p>
      <?php if ($cap_do == "Lục Bảo" || $cap_do == "Cao Thủ"): ?>
        <a href="game/chu_rua.html"><button>Bắt đầu trò chơi</button></a>
      <?php else: ?>
        <button disabled>Bạn cần cấp độ Lục Bảo để chơi</button>
      <?php endif; ?>
    </div>
  </div>
</section>

  <footer class="footer">
    <div class="footer-top">
      <div class="footer-section">
        <h3>CHĂM SÓC KHÁCH HÀNG</h3>
        <p><strong>Trung tâm Trợ giúp</strong></p>
        <p>Email: toanhocdieuki@gmail.com</p>
        <p>Đường dây nóng: 0907926248</p>
      </div>
      <div class="footer-section">
        <h3>VỀ TOÁN HỌC DIỆU KÌ</h3>
        <p>Giới thiệu về Toán Học Diệu Kì</p>
        <p>Liên hệ với Chúng tôi</p>
        <p>Sơ đồ trang web</p>
      </div>
      <div class="footer-section">
        <h3>SÂN CHƠI</h3>
        <p>Bảng tin trường học</p>
        <p>Thử tài đố vui</p>
        <p>Hỏi bài & Chữa bài</p>
      </div>
      <div class="footer-section">
        <h3>KẾT NỐI</h3>
        <div class="social-icons">
          <a href="https://www.facebook.com/huagiakien123"><img src="https://cdn-icons-png.flaticon.com/512/733/733547.png" alt="Facebook" width="28" ></a>
          <a href="https://www.youtube.com/results?search_query=to%C3%A1n+l%E1%BB%9Bp+1+%C4%91%E1%BA%BFn+l%E1%BB%9Bp+5"><img src="https://cdn-icons-png.flaticon.com/512/1384/1384060.png" alt="YouTube" width="28"></a>
        </div>
      </div>
    </div>
  </footer>

  <script src="login_student.js"></script>
</body>
</html>
