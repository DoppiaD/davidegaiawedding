
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

export { copyBankText };
