const cards = document.querySelectorAll('.card-header');

const swipeArrow = (e) => {
  const arrow = e.currentTarget.querySelector('.arrow');
  // console.log(arrow)
  arrow.classList.toggle('arrow-swipped');
}

const transformArrow = () => {
  cards.forEach((card) => {
    card.addEventListener('click', swipeArrow)
  })
}

export { transformArrow }
