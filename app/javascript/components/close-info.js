const closeInfo = () => {
 const cross = document.querySelector('.close-info');
 cross.addEventListener('click', e => {
  e.currentTarget.parentElement.remove();
 })
}

export { closeInfo }
