<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Game Toán Kéo Thả</title>
  <link rel="stylesheet" href="game_keo_tha.css">
</head>
<body>
  <h1>🎮 Game Toán Kéo Thả</h1>
  <div id="score-display"></div>
  <div id="game-container">
    <div class="equation"></div>
    <div class="options"></div>
    <p id="message"></p>

    <div class="button-container">
      <a href="../login_student.php" class="game-button">Quay về Trang Chính</a>
      <button class="game-button submit-button" id="submitButton" disabled>Nộp Bài</button>
      <button class="game-button next-button" id="nextButton" disabled>Câu Tiếp Theo</button>
      <button class="game-button reset-button" id="resetButton">Reset Điểm</button>
    </div>
  </div>

  <div id="game-over-message" style="display:none;">
    Chúc mừng! Bạn đã hoàn thành tất cả các câu hỏi.
    <br>
    <div id="final-score"></div>
    <br><br>
    <button class="game-button submit-button" id="finalizeButton">Chơi Lại</button>
  </div>

  <script src="game_keo_tha.js"></script>
</body>
</html>
