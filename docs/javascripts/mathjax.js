window.MathJax = {
  loader: {
    load: ['[tex]/mhchem']
  },
  tex: {
    inlineMath: [['$', '$'], ['\\(', '\\)']],
    displayMath: [['$$', '$$'], ['\\[', '\\]']],
    packages: {'[+]': ['mhchem']}
  },
  svg: {
    fontCache: 'global'
  }
};
