//= require simplemde.min

document.addEventListener('DOMContentLoaded', setup);
document.addEventListener('turbolinks:load', setup);

function setup() {
  initSimpleMDE(document);
  initObserver(document.querySelector('.field-unit--nested'));
}

function initSimpleMDE(element) {
  if (!element) return;

  element.querySelectorAll('[data-simplemde="false"]').forEach(function(el) {
    var hideIcons = el.getAttribute('data-hide-icons');
    new SimpleMDE({ element: el, hideIcons: hideIcons });
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
