
const observer = new IntersectionObserver((entries) => {
  entries.forEach((entry) => {
    if (entry.isIntersecting) {
      entry.target.classList.add("show");
    } 
    else {
      entry.target.classList.remove("show");
    }
  });
});

const hiddenElements = document.querySelectorAll('.hidden');

hiddenElements.forEach((element) => {
  observer.observe(element);
});


const menuButton = document.querySelector('.menu-button');
const menu = document.querySelector(".menu");
menuButton?.addEventListener('click', () => {
  menuButton.classList.toggle('open');
  menu?.classList.toggle('open');
});

