// const onRefreshOpenAccordion = () => {
//     // $("#accordion").on("ajax:success", function() {
//     if ($("#accordion")) {
//       const guestID = window.location.hash;
//       if (guestID) {
//         $(`${guestID}`).collapse('show');
//       }
//     }
// }


const guestModalJs = () => {
  const allButtons = document.getElementsByClassName('btn-guest');
  // const editButton = document.getElementById("demo");
  // const noButton = document.getElementById("demo");
  if (allButtons) {
    console.log(allButtons)
  }
}

export { guestModalJs };


// export { onRefreshOpenAccordion };
