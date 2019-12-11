const arrows = document.querySelectorAll('.arrow');
const links = document.querySelectorAll('.btn-link');

const open = (e) => {
  const btn = e.currentTarget.previousElementSibling;
  btn.click();

}

const openCard = () => {
  arrows.forEach((arrow => {
    arrow.addEventListener('click', open);
  }))
}

export { openCard }
