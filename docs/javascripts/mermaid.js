document$.subscribe(function() {
  mermaid.initialize({
    startOnLoad: true,
    theme: 'default',
    flowchart: {
      useMaxWidth: true,
      htmlLabels: true
    },
    sequence: {
      useMaxWidth: true
    }
  });
})
