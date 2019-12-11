import "bootstrap";
import { closeInfo } from "../components/close-info"
import { openCard } from "../components/open-step-card"

closeInfo();
openCard();

const targetNodes = document.querySelectorAll('.btn-link');
const config = { attributes: true, childList: true };

const resetArrowStyle = (mutation) => {
  const arrow = mutation.target.nextElementSibling
  if (mutation.target.className.match('collapsed')) {
    arrow.classList.remove('arrow-swipped');
  } else {
    arrow.classList.add('arrow-swipped');
  }
}

const callback = function(mutationsList) {
    for(let mutation of mutationsList) {
        if (mutation.type == 'attributes') {
            resetArrowStyle(mutation);
        }
    }
};

targetNodes.forEach((node) => {
  let observer = new MutationObserver(callback);
  observer.observe(node, config);
})
