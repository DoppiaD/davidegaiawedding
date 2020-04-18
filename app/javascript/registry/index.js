const copyBankText = () => {
  const copyTextareaBtn = $('.btn-bank-copy')
  if (copyTextareaBtn) {
    copyTextareaBtn.on('click', function() {

      var copyTextarea = $(this).data("clipboard-target")
      var copyItem = $(copyTextarea)

      copyItem.focus()
      copyItem.select()
      document.execCommand('copy')
      copyItem.blur()
    })
  }
}

const initializeBootstrapTooltip = () => {
  if (!window.matchMedia || (window.matchMedia("(min-width: 1201px)").matches)) {

  $('[data-toggle="tooltip"]').tooltip()  // enable tooltips
  }
}

export { initializeBootstrapTooltip };

export { copyBankText };
