$(document).ready ->
  $('#nav-mobile').html $('#nav-main').html()
  $('#nav-trigger i').click ->
    if $('nav#nav-mobile a').hasClass('expanded')
      $('nav#nav-mobile a.expanded').removeClass('expanded').slideUp 250
      $(this).removeClass 'open'
    else
      $('#nav-mobile').css('display':'block')
      $('nav#nav-mobile a').addClass('expanded').slideDown 250
      $(this).addClass 'open'
    return
