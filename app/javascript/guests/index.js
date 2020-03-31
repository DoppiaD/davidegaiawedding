const onRefreshOpenAccordion = () => {
    // $("#accordion").on("ajax:success", function() {
    if ($("#accordion")) {
      const guestID = window.location.hash;
      if (guestID) {
        $(`${guestID}`).collapse('show');
      }
    }

        // $(`${guestID}`).collapse('show')
        //
        // $(`${guestID}`).style.width = "500px"

    // .on "ajax:error", (e, xhr, status, error) ->
    //   $("#new_post").append "<p>ERROR</p>"

}

export { onRefreshOpenAccordion };
