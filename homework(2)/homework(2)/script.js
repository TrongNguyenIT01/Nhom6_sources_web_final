function changeFormType() {
    var type = document.getElementById('dangbai').value;
    var instr = document.getElementById('cauhoi_dapan');
    if (type === 'multiple_choice') {
        instr.innerHTML = `
            <label for="cauhoi">Câu Hỏi (ví dụ: 6-1=?):</label>
            <textarea id="cauhoi" name="cauhoi" required></textarea><br><br>
            <label>Lựa chọn 1:</label>
            <input type="text" name="option1" required><br><br>
            <label>Lựa chọn 2:</label>
            <input type="text" name="option2" required><br><br>
            <label>Lựa chọn 3:</label>
            <input type="text" name="option3" required><br><br>
            <label>Lựa chọn 4:</label>
            <input type="text" name="option4" required><br><br>
            <label>Đáp án đúng:</label><br>
            <input type="radio" name="correct_answer" value="1" required> Lựa chọn 1<br>
            <input type="radio" name="correct_answer" value="2"> Lựa chọn 2<br>
            <input type="radio" name="correct_answer" value="3"> Lựa chọn 3<br>
            <input type="radio" name="correct_answer" value="4"> Lựa chọn 4<br><br>
        `;
    } else if (type === 'fill_in_the_blank') {
        instr.innerHTML = `
            <label for="cauhoi">Câu Hỏi (sử dụng ___ cho chỗ trống, ví dụ: 1 + ___ = 3):</label>
            <textarea id="cauhoi" name="cauhoi" required></textarea><br><br>
            <label for="dapan">Đáp Án (từ đúng, ví dụ: 2):</label>
            <textarea id="dapan" name="dapan" required></textarea><br><br>
        `;
    } else if (type === 'drag_and_drop') {
        instr.innerHTML = `
            <label for="cauhoi">Các Item Lộn Xộn (phân cách bằng |, ví dụ: 3|1|5|4|2):</label>
            <textarea id="cauhoi" name="cauhoi" required></textarea><br><br>
            <label for="dapan">Thứ Tự Đúng (phân cách bằng |, ví dụ: 1|2|3|4|5):</label>
            <textarea id="dapan" name="dapan" required></textarea><br><br>
        `;
    }
}

function checkAnswer() {
    var dangBai = document.getElementById('dang_bai').value;
    var correctAnswer = document.getElementById('correct_answer').value;
    var resultDiv = document.getElementById('result');

    if (dangBai === 'multiple_choice') {
        var selected = document.querySelector('input[name="answer"]:checked');
        if (!selected) {
            resultDiv.style.display = 'block';
            resultDiv.style.backgroundColor = '#ffcccc';
            resultDiv.innerHTML = 'Vui lòng chọn một đáp án!';
            return;
        }
        var userAnswer = selected.value;
        var options = correctAnswer.split('|');
        var correct = options.pop();
        var labels = ['a', 'b', 'c', 'd'];
        var correctLabel = labels[parseInt(correct) - 1];
        if (userAnswer === correct) {
            resultDiv.style.display = 'block';
            resultDiv.style.backgroundColor = '#ccffcc';
            resultDiv.innerHTML = 'Đúng! Đáp án đúng là: ' + correctLabel + '. ' + options[parseInt(correct) - 1];
            saveResultOnce(1, exerciseId);
        } else {
            resultDiv.style.display = 'block';
            resultDiv.style.backgroundColor = '#ffcccc';
            resultDiv.innerHTML = 'Sai! Đáp án đúng là: ' + correctLabel + '. ' + options[parseInt(correct) - 1];
            saveResultOnce(0, exerciseId);
        }
    } else if (dangBai === 'fill_in_the_blank') {
        var userAnswer = document.getElementById('user_answer').value.trim();
        if (!userAnswer) {
            resultDiv.style.display = 'block';
            resultDiv.style.backgroundColor = '#ffcccc';
            resultDiv.innerHTML = 'Vui lòng nhập đáp án!';
            return;
        }
        if (userAnswer === correctAnswer) {
            resultDiv.style.display = 'block';
            resultDiv.style.backgroundColor = '#ccffcc';
            resultDiv.innerHTML = 'Đúng! Đáp án đúng là: ' + correctAnswer;
            saveResultOnce(1, exerciseId);
        } else {
            resultDiv.style.display = 'block';
            resultDiv.style.backgroundColor = '#ffcccc';
            resultDiv.innerHTML = 'Sai! Đáp án đúng là: ' + correctAnswer;
            saveResultOnce(0, exerciseId);
        }
    } else if (dangBai === 'drag_and_drop') {
        var items = Array.from(document.getElementById('sortable').children).map(item => item.textContent);
        var userAnswer = items.join('|');
        if (userAnswer === correctAnswer) {
            resultDiv.style.display = 'block';
            resultDiv.style.backgroundColor = '#ccffcc';
            resultDiv.innerHTML = 'Đúng! Thứ tự đúng là: ' + correctAnswer;
            saveResultOnce(1, exerciseId);
        } else {
            resultDiv.style.display = 'block';
            resultDiv.style.backgroundColor = '#ffcccc';
            resultDiv.innerHTML = 'Sai! Thứ tự đúng là: ' + correctAnswer;
            saveResultOnce(0, exerciseId);
        }
    }
}

document.addEventListener('DOMContentLoaded', function() {
    if (typeof Sortable !== 'undefined') {
        Sortable.create(document.getElementById('sortable'), {
            animation: 150,
            onEnd: function(evt) {
                console.log('Thứ tự mới:', evt.to.children);
            }
        });
    }
});
function saveResult(score, exerciseId) {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "save_result.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                // Hiển thị trạng thái "đã làm" ngay lập tức
                showDoneBanner('Bạn đã nộp bài. Bài này đã được đánh dấu là <b>đã làm</b>.');
                lockExerciseUI();

                // (Tuỳ chọn) Reload lại trang sau 1.2s để server-side cũng chặn vào lần sau:
                // setTimeout(function(){ location.reload(); }, 1200);
            } else {
                console.error("save_result lỗi:", xhr.status, xhr.responseText);
            }
        }
    };
    xhr.send("score=" + encodeURIComponent(score) + "&exercise_id=" + encodeURIComponent(exerciseId));
}

// Cờ để tránh gửi nhiều lần
var alreadySubmitted = false;

function showDoneBanner(message) {
    var resultDiv = document.getElementById('result');
    if (!resultDiv) return;
    resultDiv.style.display = 'block';
    resultDiv.style.backgroundColor = '#ccffcc';
    resultDiv.innerHTML = message || 'Bạn đã nộp bài. Bài này đã được đánh dấu là <b>đã làm</b>.';
}

function lockExerciseUI() {
    var form = document.getElementById('exercise_form');
    if (form) {
        var inputs = form.querySelectorAll('input, button, select, textarea');
        inputs.forEach(function (el) {
            el.disabled = true;
            el.setAttribute('aria-disabled', 'true');
        });
    }
}

function saveResultOnce(score, exerciseId) {
    if (alreadySubmitted) return;
    alreadySubmitted = true;
    saveResult(score, exerciseId);
}

