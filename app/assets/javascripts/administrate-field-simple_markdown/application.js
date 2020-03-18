//= require simplemde.min

document.addEventListener('DOMContentLoaded', setup);
document.addEventListener('turbolinks:load', setup);

function setup() {
  initSimpleMDE(document);
  initObserver(document.querySelector('.simple_markdown'));
}

function initSimpleMDE(element) {
  if (!element) return;

  element.querySelectorAll('[data-simplemde="false"]').forEach(function(el) {
    new SimpleMDE({ element: el });
    el.setAttribute('data-simplemde', true);
  });
}

function initObserver(element) {
  if (!element) return;

  const observer = new MutationObserver(function (mutations) {
    for (let mutation of mutations) {
      if (mutation.addedNodes.length) {
        mutation.addedNodes.forEach(function(node) {
          initSimpleMDE(node);
        });
      }
    }
  });

  observer.observe(element, { childList: true });
}
