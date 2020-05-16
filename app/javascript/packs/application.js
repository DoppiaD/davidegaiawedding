// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// CUSTOM JS
// ----------------------------------------------------
import "bootstrap";
// import cloudinary from "cloudinary-core"; // Needed for cloudinary auto settings
import { initUpdateNavbarOnScroll } from '../components/navbar'
import { windowHeight } from '../components/banner'
import { scrollToChevron } from '../components/banner'
import { timelineModalJs } from '../pages/logistics'
import { onRefreshOpenModal } from '../guests/index'
import { setAvatarPicture } from '../guests/edit'
import { copyBankText } from '../registry/index'
import { initializeBootstrapTooltip } from '../registry/index'

document.addEventListener('turbolinks:load', () => {
  initUpdateNavbarOnScroll();
  windowHeight();
  scrollToChevron();
  timelineModalJs();
  onRefreshOpenModal();
  copyBankText();
  initializeBootstrapTooltip();
  setAvatarPicture();

  // Initialize Cloudinary
  // cloudinary.Cloudinary.new({cloud_name: "doppiad"}).responsive();
});
