
const timelineModalJs = () => {
  $('#timelineModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var title = button.data('modaltitle') // Extract info from data-* attributes
    var modal = $(this)
    modal.find('.modal-title').text(title)
  })
}

// const timelineSetTitle = () => {
//   // $('trip-item').on('click', function (event) {
//     const tDesc = document.getElementsByClassName("timeline-desc");
//     for (let item of tDesc) {
//       item.lastElementChild.textContent = item.dataset.modaltitle
//     }
//
//     //
//     //
//     //
//     // for (var i = 0; i < tContent.length; i++) {
//     //   $('timeline-desc h5').textContent
//     // }
//
//     //
//     //
//     //
//     // var title = button.data('modaltitle') // Extract info from data-* attributes
//     // var modal = $(this)
//     // modal.find('.modal-title').text(title)
//   // })
// }

export { timelineModalJs };
// export { timelineSetTitle };

// console.log(modal)
