// Change Navbar color on scroll
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

// Do something
const lockBgScrollNavOverlay = () => {
  $('#navbarOverlayContent').on('shown.bs.collapse', function () {
    $('body').addClass("fixed-position");
  })
  $('#navbarOverlayContent').on('hidden.bs.collapse', function () {
    $('body').removeClass("fixed-position");
  })
};

export { lockBgScrollNavOverlay };
