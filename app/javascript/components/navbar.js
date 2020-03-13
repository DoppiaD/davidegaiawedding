const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('#navbar-main');
  const navbarMobile = document.querySelector('#navbar-mobile');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-davide-white');
        navbarMobile.classList.add('navbar-davide-white');
      } else {
        navbar.classList.remove('navbar-davide-white');
        navbarMobile.classList.remove('navbar-davide-white');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
