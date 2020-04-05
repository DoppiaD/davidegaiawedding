const onRefreshOpenAccordion = () => {
    // $("#accordion").on("ajax:success", function() {
    if ($("#accordion")) {
      const guestID = window.location.hash;
      if (guestID) {
        $(`${guestID}`).collapse('show');
      }
    }
}


const guestModalJs = () => {
  $('#guestmodal').on('show.bs.modal', function (event) {
    const button = $(event.relatedTarget)
    const guestId = button.data('guest_id')
    // const modal = $(this)
    // modal.find('.modal-title').text()
    console.log(guestId)
    // modal.find('.modal-body').html(modalBody)

  })
}

export { guestModalJs };


export { onRefreshOpenAccordion };
