// // Modal title JS
// const timelineModalJs = () => {
//   $('#timelineModal').on('show.bs.modal', function (event) {
//     var button = $(event.relatedTarget) // Button that triggered the modal
//     var title = button.data('modaltitle') // Extract info from data-* attributes
//     var modal = $(this)
//     modal.find('.modal-title').text(title)
//
//   })
// }

const timelineModalJs = () => {
  $('#timelineModal').on('show.bs.modal', function (event) {
    const button = $(event.relatedTarget)
    const title = button.data('modaltitle')
    const modal = $(this)
    modal.find('.modal-title').text(title['title'])
    let modalBody = ""
    title['icons'].forEach((icon, i) => {
      const titleIcon = '<i class="fas fa-' + icon + '"></i>'
      const titleContent = `<h6>${titleIcon} Arrive by ${icon}</h6>`
      const titleDesc = `<p>${title['descriptions'][i]}</p>`
      modalBody += titleContent + titleDesc
    });
    modal.find('.modal-body').html(modalBody)

  })
}

export { timelineModalJs };
