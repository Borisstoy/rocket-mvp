$(document).ready ->
  # Mobile nav-bar
  $('#nav-mobile').html $('#nav-main').html()
  $('#nav-trigger i').click ->
    if $('nav#nav-mobile a').hasClass('expanded')
      $('nav#nav-mobile a.expanded').removeClass('expanded').slideUp 250
      $(this).removeClass 'open'
    else
      $('nav#nav-mobile a').addClass('expanded').slideDown 250
      $(this).addClass 'open'
    return
