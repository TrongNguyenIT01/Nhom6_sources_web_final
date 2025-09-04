// ====== Cấu hình và tiện ích ======
const $ = sel => document.querySelector(sel);
const $$ = sel => document.querySelectorAll(sel);
const rnd = (a,b)=> Math.floor(Math.random()*(b-a+1))+a;

function toast(msg){
  const t = $('#toast'); t.textContent = msg; t.style.display = 'block';
  clearTimeout(toast._t);
  toast._t = setTimeout(()=> t.style.display = 'none', 1600);
}

function setHearts(h){
  const box = $('#hearts'); box.innerHTML='';
  for(let i=0;i<h;i++){ const d=document.createElement('div'); d.className='heart'; box.appendChild(d); }
}

// ====== Tạo câu hỏi theo độ khó ======
function genQuestion(difficulty){
  const ops12 = ['+','-'];
  const ops34 = ['+','-','×','÷'];
  const pick = arr => arr[rnd(0,arr.length-1)];

  let text, answer;
  if(difficulty==='1-2'){
    const a=rnd(0,20), b=rnd(0,20); const op=pick(ops12);
    if(op==='+'){ text=`${a} + ${b} = ?`; answer=a+b; }
    else { const x=rnd(0,20), y=rnd(0,x); text=`${x} - ${y} = ?`; answer=x-y; }
  } else if(difficulty==='3-4'){
    const op=pick(ops34);
    if(op==='+'){ const a=rnd(10,60), b=rnd(10,60); text=`${a} + ${b} = ?`; answer=a+b; }
    if(op==='-'){ const a=rnd(20,100), b=rnd(0,80); if(b>a){[a,b]=[b,a]} text=`${a} - ${b} = ?`; answer=a-b; }
    if(op==='×'){ const a=rnd(2,12), b=rnd(2,12); text=`${a} × ${b} = ?`; answer=a*b; }
    if(op==='÷'){ const b=rnd(2,12), a=b*rnd(2,12); text=`${a} ÷ ${b} = ?`; answer=Math.floor(a/b); }
  } else { // lớp 5
    // biểu thức 2 bước, có ngoặc
    const a=rnd(2,20), b=rnd(2,20), c=rnd(2,10);
    const form = rnd(1,3);
    if(form===1){ text = `(${a} + ${b}) × ${c} = ?`; answer=(a+b)*c; }
    else if(form===2){ const A=a*c; text = `${A} ÷ ${c} + ${b} = ?`; answer=A/c + b; }
    else { const A=a*b; const C=A - c; text = `${a} × ${b} - ${c} = ?`; answer=C; }
  }

  // tạo 3 nhiễu
  const opts = new Set([answer]);
  while(opts.size<4){
    const delta = rnd(-10,10) || 1;
    opts.add(answer + delta);
  }
  const choices = [...opts].sort(()=>Math.random()-0.5);

  return {text, answer, choices};
}

// ====== Bản đồ (Tile) ======
// 0: nền, 1: tường, 2: cổng (câu hỏi), 3: đích/portal
const maps = [
  { w:24,h:13, data:[] },
  { w:24,h:13, data:[] },
  { w:24,h:13, data:[] }
];

function makeMapBorders(w,h){
  const arr = new Array(w*h).fill(0);
  for(let x=0;x<w;x++){ arr[x]=1; arr[(h-1)*w + x]=1; }
  for(let y=0;y<h;y++){ arr[y*w]=1; arr[y*w + (w-1)] = 1; }
  return arr;
}

function carvePaths(arr,w,h){
  // thêm vài bức tường và cổng
  for(let y=3; y<h-3; y+=3){
    for(let x=1; x<w-1; x++) arr[y*w + x] = 1; // tường ngang
    const gateX = rnd(2,w-3);
    arr[y*w + gateX] = 2; // cổng mở bằng câu hỏi
  }
  // đích
  arr[(h-2)*w + (w-3)] = 3;
  return arr;
}

// tạo dữ liệu map ngẫu nhiên nhưng ổn định với seed nhỏ
for(let i=0;i<maps.length;i++){
  const w=maps[i].w,h=maps[i].h;
  let arr = makeMapBorders(w,h);
  arr = carvePaths(arr,w,h);
  // thêm đảo tường
  for(let k=0;k<40;k++){
    const x=rnd(2,w-3), y=rnd(2,h-3);
    if(arr[y*w+x]===0) arr[y*w+x] = Math.random()<0.2 ? 1 : 0;
  }
  maps[i].data = arr;
}

// ====== Game state ======
const canvas = document.getElementById('game');
const ctx = canvas.getContext('2d');
const tile = 40; // kích thước 1 ô (px) khi vẽ nội bộ, canvas đã upscale

const state = {
  level:1, score:0, time:60, lives:3,
  px: tile*2, py: tile*2, // vị trí nhân vật (px)
  speed: 3.0,
  freeze:false,
  currentGate:null,
  difficulty: $('#difficulty').value
};

setHearts(state.lives);

// ====== Input ======
const keys = new Set();
window.addEventListener('keydown',e=>{
  keys.add(e.key);
});
window.addEventListener('keyup',e=>{
  keys.delete(e.key);
});

// D-pad
$('#dpad').addEventListener('pointerdown', (e)=>{
  const k = e.target.getAttribute('data-key'); if(!k) return;
  e.target.setPointerCapture(e.pointerId);
  keys.add(k);
});
$('#dpad').addEventListener('pointerup', (e)=>{
  const k = e.target.getAttribute('data-key'); if(!k) return;
  keys.delete(k);
});

// ====== Collision helpers ======
function tileAt(x,y){
  const map = maps[state.level-1];
  const tx = Math.floor(x/tile), ty = Math.floor(y/tile);
  if(tx<0||ty<0||tx>=map.w||ty>=map.h) return 1;
  return map.data[ty*map.w + tx] ?? 0;
}

function tryMove(dx,dy){
  if(state.freeze) return;
  const nx = state.px + dx, ny = state.py + dy;
  // kiểm tra 4 điểm quanh nhân vật (hình vuông 28px)
  const r=14;
  const points = [
    [nx-r, ny-r], [nx+r, ny-r], [nx-r, ny+r], [nx+r, ny+r]
  ];
  for(const [x,y] of points){
    const t = tileAt(x,y);
    if(t===1){ return; }
    if(t===2){ // cổng
      // mở quiz nếu chưa mở
      openQuiz(Math.floor(x/tile), Math.floor(y/tile));
      return; // đứng lại trước cổng
    }
    if(t===3){ levelComplete(); return; }
  }
  state.px = nx; state.py = ny;
}

// ====== Quiz ======
function openQuiz(tx,ty){
  if(state.freeze) return;
  state.freeze = true; state.currentGate = {tx,ty};
  const {text, answer, choices} = genQuestion(state.difficulty);
  const modal = $('#quizModal');
  $('#qText').textContent = text;
  $('#qFeedback').textContent = '';
  const box = $('#qOptions'); box.innerHTML='';
  choices.forEach(v=>{
    const b = document.createElement('button');
    b.className='opt'; b.textContent = v;
    b.addEventListener('click', ()=>{
      if(Number(v)===Number(answer)){
        b.classList.add('correct');
        $('#qFeedback').textContent='✔ Chính xác! Cổng đã mở.';
        // mở cổng
        const map = maps[state.level-1];
        map.data[ty*map.w + tx] = 0;
        state.score += 10;
        updateHUD();
        setTimeout(()=>{ modal.style.display='none'; state.freeze=false; toast('+10 điểm');}, 300);
      } else {
        b.classList.add('wrong');
        $('#qFeedback').textContent='✖ Chưa đúng, thử lại! (-1 mạng)';
        state.lives = Math.max(0, state.lives-1); setHearts(state.lives);
        if(state.lives===0){ gameOver(); return; }
      }
    });
    box.appendChild(b);
  });
  modal.style.display='grid';
}

// ====== Vẽ ======
function draw(){
  const map = maps[state.level-1];
  // nền
  ctx.fillStyle = '#081021'; ctx.fillRect(0,0,canvas.width,canvas.height);
  // vẽ tile
  const cellW = canvas.width / map.w, cellH = canvas.height / map.h;
  for(let y=0;y<map.h;y++){
    for(let x=0;x<map.w;x++){
      const t = map.data[y*map.w+x];
      if(t===1){ // tường
        ctx.fillStyle = '#13203f';
        ctx.fillRect(x*cellW, y*cellH, cellW, cellH);
        ctx.strokeStyle = '#1f2f59'; ctx.strokeRect(x*cellW+0.5, y*cellH+0.5, cellW-1, cellH-1);
      } else if(t===2){ // cổng
        ctx.fillStyle = '#2a3f7a';
        ctx.fillRect(x*cellW, y*cellH, cellW, cellH);
        // vẽ biểu tượng khóa
        ctx.fillStyle = '#a5b4fc';
        const cx=x*cellW+cellW/2, cy=y*cellH+cellH/2;
        ctx.beginPath(); ctx.arc(cx,cy,Math.min(cellW,cellH)/5,0,Math.PI*2); ctx.fill();
      } else if(t===3){ // đích
        ctx.fillStyle = '#10462e'; ctx.fillRect(x*cellW, y*cellH, cellW, cellH);
        ctx.fillStyle = '#34d399';
        ctx.fillRect(x*cellW+cellW*.3, y*cellH+cellH*.3, cellW*.4, cellH*.4);
      } else {
        // nền đường
        ctx.fillStyle = '#091633'; ctx.fillRect(x*cellW, y*cellH, cellW, cellH);
      }
    }
  }

  // nhân vật (hình tròn phát sáng)
  const px = state.px * (canvas.width/(maps[state.level-1].w*tile));
  const py = state.py * (canvas.height/(maps[state.level-1].h*tile));
  ctx.save();
  const r = 12;
  const grd = ctx.createRadialGradient(px,py,2, px,py,18);
  grd.addColorStop(0,'#6ee7ff'); grd.addColorStop(1,'#1b314f');
  ctx.fillStyle = grd;
  ctx.beginPath(); ctx.arc(px,py,r,0,Math.PI*2); ctx.fill();
  ctx.restore();
}

// ====== Game loop ======
let last=0; let timerInt=null;
function update(){
  // input → movement
  let dx=0, dy=0;
  if(keys.has('ArrowLeft')||keys.has('a')||keys.has('A')) dx -= state.speed;
  if(keys.has('ArrowRight')||keys.has('d')||keys.has('D')) dx += state.speed;
  if(keys.has('ArrowUp')||keys.has('w')||keys.has('W')) dy -= state.speed;
  if(keys.has('ArrowDown')||keys.has('s')||keys.has('S')) dy += state.speed;
  // chuẩn hóa tốc độ đường chéo
  if(dx&&dy){ dx*=0.7071; dy*=0.7071; }
  tryMove(dx,dy);
}

function loop(ts){
  const dt = ts-last; last=ts;
  update();
  draw();
  requestAnimationFrame(loop);
}

// ====== HUD & Level ======
function updateHUD(){
  $('#level').textContent = state.level;
  $('#score').textContent = state.score;
}
function startTimer(){
  clearInterval(timerInt);
  $('#time').textContent = state.time;
  timerInt = setInterval(()=>{
    if(state.freeze) return; // dừng đếm khi đang quiz
    state.time--; $('#time').textContent = state.time;
    if(state.time<=0){ gameOver(); }
  },1000);
}

function resetLevel(){
  const map = maps[state.level-1];
  // vị trí xuất phát
  state.px = tile*2; state.py = tile*2;
  state.time = 60; state.lives = 3; setHearts(state.lives);
  state.freeze=false; state.currentGate=null;
  updateHUD(); startTimer();
}

function levelComplete(){
  state.score += 50; toast('🎉 Qua cửa! +50 điểm');
  if(state.level < maps.length){
    state.level++; resetLevel();
  } else {
    victory();
  }
}

function gameOver(){
  state.freeze = true; clearInterval(timerInt);
  toast('💥 Hết lượt!');
  setTimeout(()=>{
    alert(`Game Over!\nĐiểm: ${state.score}`);
    restart();
  }, 80);
}

function victory(){
  state.freeze = true; clearInterval(timerInt);
  setTimeout(()=>{
    alert(`Chúc mừng! Bạn đã hoàn thành tất cả level.\nĐiểm tổng: ${state.score}`);
    restart();
  }, 120);
}

function restart(){
  state.level = 1; state.score = 0; state.time = 60; state.lives=3; setHearts(state.lives);
  state.difficulty = $('#difficulty').value;
  updateHUD(); startTimer(); state.freeze=false; state.px=tile*2; state.py=tile*2;
}

// ====== UI events ======
$('#btnRestart').addEventListener('click', restart);
$('#btnHow').addEventListener('click', ()=>{
  alert(`Cách chơi:\n- Di chuyển bằng W, A, S, D hoặc mũi tên (trên điện thoại dùng cụm nút tròn).\n- Gặp CỔNG (ô xanh có chấm) sẽ hiện câu hỏi.\n- Trả lời đúng để mở cổng và nhận điểm. Sai bị trừ 1 mạng.\n- Đến ô ĐÍCH màu xanh lá để qua Level.\n- Đổi Độ khó ở góc phải để phù hợp với khối lớp.`)
});
$('#difficulty').addEventListener('change', (e)=>{
  state.difficulty = e.target.value; toast('Đã đổi độ khó');
});

// Hiển thị D-pad nếu là thiết bị cảm ứng
if('ontouchstart' in window){ $('#dpad').style.display='grid'; }

// ====== Start ======
restart();
requestAnimationFrame(loop);