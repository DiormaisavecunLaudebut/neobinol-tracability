const arrows = document.querySelectorAll('.arrow');
const links = document.querySelectorAll('.btn-link');

const resetArrowStyle = (link) => {
  if (link.classList.value.match('collapsed')) {
    link.nextElementSibling.classList.remove('arrow-swipped')
  }
}
const open = (e) => {
  const btn = e.currentTarget.previousElementSibling;
  links.forEach(link => resetArrowStyle(link));
  btn.click();

}

const openCard = () => {
  arrows.forEach((arrow => {
    arrow.addEventListener('click', open);
  }))
}

export { openCard }
