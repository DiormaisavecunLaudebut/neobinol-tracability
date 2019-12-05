const arrows = document.querySelectorAll('.arrow');

const open = (e) => {
  e.currentTarget.previousElementSibling.click();
  e.currentTarget.classList.toggle('arrow-swipped')
}
const openCard = () => {
  arrows.forEach((arrow => {
    arrow.addEventListener('click', open);
  }))
}

export { openCard }
