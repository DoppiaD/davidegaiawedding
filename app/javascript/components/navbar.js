const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('#navbar-main');
  const navbarMobile = document.querySelector('#navbar-mobile');
  const banner = document.querySelector('.home-banner');
  if (navbar && banner) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-davide-colorize');
        navbarMobile.classList.add('navbar-davide-colorize');
      } else {
        navbar.classList.remove('navbar-davide-colorize');
        navbarMobile.classList.remove('navbar-davide-colorize');
      }
    });
  } else {
    navbar.classList.add('navbar-davide-colorize');
    navbarMobile.classList.add('navbar-davide-colorize');
  }
};

export { initUpdateNavbarOnScroll };
