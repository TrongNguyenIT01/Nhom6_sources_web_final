const isLoggedIn = true;

window.onload = () => {
  const notLoggedInSection = document.getElementById('not-logged-in');
  const commentForm = document.getElementById('comment-form');

  if (isLoggedIn) {
    notLoggedInSection.style.display = 'none';
    commentForm.style.display = 'block';
  } else {
    notLoggedInSection.style.display = 'block';
    commentForm.style.display = 'none';
  }
};
