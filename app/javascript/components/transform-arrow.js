const cards = document.querySelectorAll('.card-header');
const links = document.querySelectorAll('.btn-link');

const resetArrowStyle = (link) => {
  if (link.classList.value.match('collapsed')) {
    link.nextElementSibling.classList.remove('arrow-swipped')
  }
}

const swipeArrow = (e) => {
  links.forEach(link => resetArrowStyle(link));
  e.currentTarget.querySelector('.arrow').classList.add('arrow-swipped')
}

const transformArrow = () => {
  cards.forEach((card) => {
    card.addEventListener('click', swipeArrow)
  })
}

export { transformArrow }
