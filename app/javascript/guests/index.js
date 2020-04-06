const onRefreshOpenModal = () => {
  $.ajax().done(function(){
    if ($(".guests")) {
      const guestID = window.location.hash;
      if (guestID) {
        console.log(`guestmodal-${guestID.substring(1)}`)
        $(`#guestmodal-${guestID.substring(1)}`).modal('show');
      }
    }
  })
}
//
// const guestModalJs = () => {
//   // // const editButton = document.getElementById("demo");
//   // // const noButton = document.getElementById("demo");
//   const btnYes = document.querySelectorAll('.btn-yes');
//   if (btnYes) {
//     btnYes.forEach(el => el.addEventListener('click', event => {
//       document.addEventListener("DOMContentLoaded", function(){
//         $(`#guestmodal${event.target.dataset.guestId}`).modal('show')
//       })
//     }));
//   }
// }

export { onRefreshOpenModal };
