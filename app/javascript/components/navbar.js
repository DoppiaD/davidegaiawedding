const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-davide');
  const banner = document.querySelector('.home-banner');
  if (navbar && banner) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-davide-colorize');
      } else {
        navbar.classList.remove('navbar-davide-colorize');
      }
    });
  } else {
    navbar.classList.add('navbar-davide-colorize');
  }
};

export { initUpdateNavbarOnScroll };
