const checkboxBgColor = () => {
  if ($('.edit-guest')) {
    $('.d-input-checkbox').each(function(i, obj) {
     const id = obj.id.slice(-4)
    if($(`#${obj.id}`).is(":checked")) {
      $(`.d-checkbox-${id}`).addClass("d-checkbox-colored-bg");
    } else {
      $(`.d-checkbox-${id}`).removeClass("d-checkbox-colored-bg");
    }
  })
  }
}

const toggleCheckboxBgColor = () => {
  if ($('.edit-guest')) {
    $('.d-input-checkbox').change(function(e) {
      const id = e.target.id.slice(-4)
      $(`.d-checkbox-${id}`).toggleClass("d-checkbox-colored-bg");
    })
  }
}

// export { toggleCheckboxBgColor };
// export { checkboxBgColor };
