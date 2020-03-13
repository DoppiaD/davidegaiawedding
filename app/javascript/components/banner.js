const windowHeight = () => {
  const banner = document.querySelector('.home-banner');
  if (banner) {
    banner.style.height = window.innerHeight + 'px';
    window.onresize = function(event) {
      banner.style.height = window.innerHeight + 'px';
    };
  }
};

export { windowHeight };
