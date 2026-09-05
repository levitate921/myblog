document.addEventListener('DOMContentLoaded', function () {
  if (!document.querySelector('.answer-reveal-page')) return;

  document.querySelectorAll('.md-typeset p, .md-typeset li').forEach(function (el) {
    if (el.textContent.trim().indexOf('答案：') !== 0) return;
    var strong = el.querySelector('strong');
    if (!strong) return;

    var span = document.createElement('span');
    span.className = 'answer-hidden';
    span.tabIndex = 0;
    span.title = '悬停或点击查看答案';
    strong.parentNode.insertBefore(span, strong);
    span.appendChild(strong);

    span.addEventListener('click', function () {
      span.classList.toggle('is-shown');
    });
  });
});
