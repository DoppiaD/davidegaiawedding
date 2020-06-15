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
require('@client-side-validations/client-side-validations')
require('@client-side-validations/simple-form/dist/simple-form.bootstrap4')
import "bootstrap";
// import cloudinary from "cloudinary-core"; // Needed for cloudinary auto settings
import { initUpdateNavbarOnScroll } from '../components/navbar'
import { windowHeight, scrollToChevron } from '../components/banner'
import { timelineModalJs } from '../pages/logistics'
import { onRefreshOpenModal } from '../guests/index'
import { setAvatarPictureInModal, activateCSValidation } from '../guests/edit'
import { initializeBootstrapTooltip, copyBankText } from '../registry/index'

document.addEventListener('turbolinks:load', () => {
  initUpdateNavbarOnScroll()
  windowHeight()
  scrollToChevron()
  timelineModalJs()
  onRefreshOpenModal()
  copyBankText()
  initializeBootstrapTooltip()
  setAvatarPictureInModal()
  activateCSValidation()
  // Initialize Cloudinary
  // cloudinary.Cloudinary.new({cloud_name: "doppiad"}).responsive();
  $(".alert" ).fadeOut(3000) // Fade Out flash alerts

  $('.navbarOverlayContent').on('show.bs.dropdown', function(){
    console.log(this)
    $(this).find('.navbarOverlayContent').first().stop(true, true).slideDown(300);
  });

  $('.navbar-toggler').on('hide.bs.dropdown', function(){
    $(this).find('.navbarOverlayContent').first().stop(true, true).slideUp(300);
  });

});
