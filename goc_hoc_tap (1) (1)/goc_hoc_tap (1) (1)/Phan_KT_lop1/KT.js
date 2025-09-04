// Thời gian kiểm tra
let remaining = 900; // 15p
    const timeEl = document.getElementById("time");

    function format(sec) {
      const m = Math.floor(sec / 60);
      const s = sec % 60;
      return `${String(m).padStart(2,'0')}:${String(s).padStart(2,'0')}`;
    }

    function tick() {
      if (remaining > 0) {
        remaining--;
        timeEl.textContent = format(remaining);
      } else {
        clearInterval(timerId);
        timeEl.textContent = "00:00";
      }
    }

    // hiển thị ban đầu và chạy
    timeEl.textContent = format(remaining);
    const timerId = setInterval(tick, 1000);

// Câu hỏi
async function loadQuestions() {
      const res = await fetch("questions.json");
      const questions = await res.json();
      const form = document.getElementById("quizForm");

      questions.forEach((q, i) => {
        const div = document.createElement("div");
        div.classList.add("question");
        div.innerHTML = `<p><b>Câu ${i+1}: ${q.question}</b></p>`;
        
        const optsDiv = document.createElement("div");
        optsDiv.classList.add("options");
        q.options.forEach(opt => {
          optsDiv.innerHTML += `
            <label>
              <input type="radio" name="q${q.id}" value="${opt}"> ${opt}
            </label>
          `;
        });
        div.appendChild(optsDiv);
        form.appendChild(div);
      });
    }

    loadQuestions();

    // Nộp bài
    async function submitQuiz() {
      const res = await fetch("questions.json");
      const questions = await res.json();
      let sent = 0;
      let score=0;
      questions.forEach(q => {
        const selected = document.querySelector(`input[name="q${q.id}"]:checked`);
        if (selected && selected.value === q.answer) {
          sent ++;
        } 
        score = sent*(10/questions.length) ;
      });
      
      alert(`Bạn làm đúng ${sent}/${questions.length} câu và điểm của bạn là:${score}`);
    }