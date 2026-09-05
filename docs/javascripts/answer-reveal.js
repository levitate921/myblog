(function () {
  var css =
    '.answer-hidden{cursor:pointer}' +
    '.answer-hidden strong{color:transparent;background:var(--md-code-bg-color);border-radius:4px;padding:0 .25em;box-shadow:inset 0 -1px 0 var(--md-default-fg-color--lighter)}' +
    '.answer-hidden:hover strong,.answer-hidden:focus strong,.answer-hidden.is-shown strong{color:inherit;background:transparent;box-shadow:none}';
  var style = document.createElement('style');
  style.textContent = css;
  document.head.appendChild(style);

  function init() {
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
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
