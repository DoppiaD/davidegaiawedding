const windowHeight = () => {
  const banner = document.querySelector('.home-banner');
  if (banner) {
    banner.style.height = window.innerHeight + 'px';
    window.onresize = function() {
      banner.style.height = window.innerHeight + 'px';
    };
  }
};

// Native Javascript behaviour does not work in Safari
// const scrollToChevron = () => {
//   const chevron = document.querySelector('.chevron-animate')
//   chevron.addEventListener('click', e => {
//     e.preventDefault(); // Prevent link from following through to its given href
//     document.querySelector('#chevron-hook').scrollIntoView({
//         behavior: 'smooth'
//     });
//   });
// };

const scrollToChevron = () => {
  $(document).on('click', 'a[href^="#"]', function (event) {
      event.preventDefault();

      $('html, body').animate({
          scrollTop: $($.attr(this, 'href')).offset().top
      }, 500);
  });
};

export { windowHeight };
export { scrollToChevron };
