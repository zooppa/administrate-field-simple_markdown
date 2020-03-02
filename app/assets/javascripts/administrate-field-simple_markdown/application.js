//= require simplemde.min

// Initialize SimpleMDE on existing elements
document.addEventListener("DOMContentLoaded", function() {
  initSimpleMDE(document);
});

// Observe nested object form for new elements to initialize
const target = document.querySelector(".field-unit--nested");
const observer = new MutationObserver(callback);
observer.observe(target, { childList: true });

function callback(mutations) {
  for (let mutation of mutations) {
    if (mutation.addedNodes.length) {
      mutation.addedNodes.forEach(function(node) {
        initSimpleMDE(node);
      });
    }
  }
}

function initSimpleMDE(element) {
  if (!element) return;

  element.querySelectorAll("[data-simplemde]").forEach(function(el) {
    new SimpleMDE({ element: el });
  });
}
