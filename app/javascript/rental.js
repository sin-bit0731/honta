const isAgreed = document.querySelector('#check');
const btn = document.querySelector('#rental-btn');
	
isAgreed.addEventListener('change', () => {
  if (isAgreed.checked === true){
    btn.disabled = false;
  } else {
    btn.disabled = true;
  }
});