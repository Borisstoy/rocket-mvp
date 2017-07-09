$ ->
  reposition = ->
    modal = $(this)
    dialog = modal.find('.modal-dialog')
    modal.css 'display', 'block'

    dialog.css 'margin-top', Math.max(0, ($(window).height() - dialog.height()) / 2)
    return

  $('.modal').on 'show.bs.modal', reposition
  $(window).on 'resize', ->
    $('.modal:visible').each reposition
    return
  return

