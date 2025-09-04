<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Math Adventure - Phiêu lưu luyện Toán</title>
  <link rel="stylesheet" href="game_me_cung.css" />
</head>
<body>
  <div class="wrap">
    <header>
      <div class="title">🧭 Math Adventure - Phiêu lưu luyện Toán</div>
      <div class="controls">
        <label class="badge">Độ khó
          <select id="difficulty">
            <option value="1-2">Lớp 1-2 (cộng, trừ ≤20)</option>
            <option value="3-4" selected>Lớp 3-4 (cộng, trừ, nhân, chia ≤100)</option>
            <option value="5">Lớp 5 (nhân chia nhiều bước, ngoặc)</option>
          </select>
        </label>
        <button id="btnRestart">Chơi lại</button>
        <button id="btnHow">Hướng dẫn</button>
        <a href="../login_student.php"><button>🏠 Trang chủ</button></a>
      </div>
    </header>

    <div class="hud">
      <div class="badge">Level: <span id="level">1</span></div>
      <div class="badge">Điểm: <span id="score">0</span></div>
      <div class="badge">Thời gian: <span id="time">60</span>s</div>
      <div class="badge">Mạng:
        <span class="hearts" id="hearts"></span>
      </div>
      <div class="legend">🎮 Di chuyển: WASD hoặc phím mũi tên • Chạm vào nút tròn để điều khiển trên điện thoại. Đến cổng sẽ hiện câu hỏi, trả lời đúng để mở cổng.</div>
    </div>

    <canvas id="game" width="960" height="540"></canvas>
  </div>

    <div class="modal" id="quizModal" aria-modal="true" role="dialog">
    <div class="card">
      <div class="q-h">Cửa chặn Toán học</div>
      <div class="q-body" id="qText">2 + 3 = ?</div>
      <div class="opts" id="qOptions"></div>
      <div class="meta">
        <span>Trả lời đúng để mở cổng.</span>
        <span id="qFeedback"></span>
      </div>
    </div>
  </div>

  <div class="toast" id="toast"></div>

    <div class="dpad" id="dpad" aria-hidden="true">
    <button data-key="ArrowUp">▲</button>
    <div class="empty"></div>
    <button data-key="ArrowRight">▶</button>
    <button data-key="ArrowLeft">◀</button>
    <div class="empty"></div>
    <button data-key="ArrowDown">▼</button>
  </div>

  <script src="game_me_cung.js"></script>
</body>
</html>