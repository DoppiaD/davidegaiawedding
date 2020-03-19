// const compute = (hotelData) => {
//   const hotelComputedHeight = parseInt(getComputedStyle(hotelData).height, 10);
//   return (hotelComputedHeight * 1.1 + 'px');
// };
//
// const hotelPictureIpadSize = () => {
//   const hotelPicture = document.querySelector('.hotel-picture');
//   const hotelData = document.querySelector('.hotel-data');
//     if (hotelPicture && hotelData) {
//       hotelPicture.style.height = compute(hotelData);
//       window.onresize = function() {
//       hotelPicture.style.height = compute(hotelData);
//     }
//   }
// };
//
// export { hotelPictureIpadSize };
const timelineModalJs = () => {
  $('#timelineModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    var modal = $(this)
    modal.find('.modal-title').text('New message to ' + recipient)
    modal.find('.modal-body input').val(recipient)
  })
}

export { timelineModalJs };
