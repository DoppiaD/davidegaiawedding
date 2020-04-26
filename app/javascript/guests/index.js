const onRefreshOpenModal = () => {
  if ($(".guests")) {
    const guestID = window.location.hash;
    if (guestID) {
      $(`#guestmodal-${guestID.substring(1)}`).modal('show');
    }
  }
}

// $.ajax().done(function(){
// $(document).on('page:change', function() {
export { onRefreshOpenModal };
