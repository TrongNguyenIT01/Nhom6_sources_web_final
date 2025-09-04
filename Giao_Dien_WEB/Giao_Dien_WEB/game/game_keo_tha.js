let shuffledQuestions = [];
let currentQuestionIndex = 0;
let correctAnswers = parseInt(localStorage.getItem('correctAnswers')) || 0;
let totalQuestions = parseInt(localStorage.getItem('totalQuestions')) || 0;

const dropzone = document.createElement("div");
dropzone.classList.add("dropzone");
dropzone.id = "dropzone";

const equationContainer = document.querySelector(".equation");
const optionsContainer = document.querySelector(".options");
const message = document.getElementById("message");
const submitButton = document.getElementById("submitButton");
const nextButton = document.getElementById("nextButton");
const resetButton = document.getElementById("resetButton");
const scoreDisplay = document.getElementById("score-display");
const gameContainer = document.getElementById("game-container");
const gameOverMessage = document.getElementById("game-over-message");
const finalScoreDisplay = document.getElementById("final-score");
const finalizeButton = document.getElementById("finalizeButton");

function shuffleArray(array) {
  for (let i = array.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [array[i], array[j]] = [array[j], array[i]];
  }
}

function renderQuestion() {
  if (currentQuestionIndex >= shuffledQuestions.length) {
    gameContainer.style.display = "none";
    gameOverMessage.style.display = "block";
    finalScoreDisplay.innerText = `Kết quả của bạn là: ${correctAnswers}/${totalQuestions}`;
    return;
  }

  const currentQuestion = shuffledQuestions[currentQuestionIndex];
  equationContainer.innerHTML = '';
  optionsContainer.innerHTML = '';
  message.innerText = '';
  submitButton.disabled = true;
  nextButton.disabled = true;

  const questionText = document.createTextNode(currentQuestion.question);
  equationContainer.appendChild(questionText);
  equationContainer.appendChild(dropzone);

  const existingImg = document.querySelector('.question-img');
  if (existingImg) existingImg.remove();
  if (currentQuestion.image) {
    const img = document.createElement("img");
    img.src = currentQuestion.image;
    img.alt = "Ảnh minh họa";
    img.classList.add("question-img");
    equationContainer.parentNode.insertBefore(img, equationContainer.nextSibling);
  }

  let options = [currentQuestion.option1, currentQuestion.option2, currentQuestion.option3, currentQuestion.answer];
  options = Array.from(new Set(options));
  shuffleArray(options);

  options.forEach((opt, idx) => {
    const numberDiv = document.createElement("div");
    numberDiv.classList.add("number");
    numberDiv.draggable = true;
    numberDiv.id = `num${idx}`;
    numberDiv.innerText = opt;
    optionsContainer.appendChild(numberDiv);
    numberDiv.addEventListener("dragstart", (e) => {
      e.dataTransfer.setData("text", e.target.id);
    });
  });

  dropzone.innerText = '';
  dropzone.classList.remove("correct", "wrong", "disabled");
  dropzone.addEventListener("dragover", (e) => e.preventDefault());
  dropzone.addEventListener("drop", handleDrop);
}

let selectedAnswer = null;

function handleDrop(e) {
  e.preventDefault();
  const data = e.dataTransfer.getData("text");
  const draggedNumberElement = document.getElementById(data);
  if (!draggedNumberElement) return;

  const draggedNumber = draggedNumberElement.innerText;
  dropzone.innerText = draggedNumber;
  selectedAnswer = draggedNumber;
  submitButton.disabled = false;
}

submitButton.addEventListener("click", () => {
  if (selectedAnswer !== null) {
    submitButton.disabled = true;
    nextButton.disabled = false;

    const numbers = document.querySelectorAll(".number");
    numbers.forEach(num => num.draggable = false);
    dropzone.removeEventListener("drop", handleDrop);
    dropzone.classList.add("disabled");

    const currentQuestion = shuffledQuestions[currentQuestionIndex];
    totalQuestions++;
    localStorage.setItem('totalQuestions', totalQuestions);

    if (selectedAnswer === currentQuestion.answer) {
      correctAnswers++;
      localStorage.setItem('correctAnswers', correctAnswers);
      dropzone.classList.add("correct");
      message.innerText = `✅ Chính xác! Bạn đã trả lời đúng.`;
      message.style.color = "#2ecc71";
    } else {
      dropzone.classList.add("wrong");
      message.innerText = `❌ Sai rồi. Đáp án đúng là ${currentQuestion.answer}.`;
      message.style.color = "#e74c3c";
    }
  } else {
    message.innerText = "Hãy kéo và thả một số vào ô trước khi nộp bài.";
    message.style.color = "#e67e22";
  }
});

nextButton.addEventListener("click", () => {
  currentQuestionIndex++;
  renderQuestion();
});

resetButton.addEventListener("click", () => {
  localStorage.removeItem('correctAnswers');
  localStorage.removeItem('totalQuestions');
  window.location.reload();
});

finalizeButton.addEventListener("click", () => {
  localStorage.removeItem('correctAnswers');
  localStorage.removeItem('totalQuestions');
  window.location.reload();
});

// Fetch dữ liệu từ PHP
fetch('game_keo_tha_layCH.php')
  .then(res => res.json())
  .then(data => {
    if (data.length > 0) {
      shuffleArray(data);
      shuffledQuestions = data;
      renderQuestion();
    } else {
      gameContainer.innerHTML = "<p>Không có câu hỏi nào trong cơ sở dữ liệu.</p>";
    }
  });
