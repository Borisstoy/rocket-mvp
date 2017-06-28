$(document).ready ->
  $('#val-box-1').click ->
    $('#val-box-1').addClass('active-val')
    $('#val-box-2, #val-box-3, #val-box-4').removeClass('active-val')
    $('.val-box-1').addClass('show')
    $('.val-box-2, .val-box-3, .val-box-4')
      .addClass('hidden')
      .removeClass('show')

  $('#val-box-2').click ->
    $('#val-box-2').addClass('active-val')
    $('#val-box-1, #val-box-3, #val-box-4').removeClass('active-val')
    $('.val-box-2').addClass('show')
    $('.val-box-1, .val-box-3, .val-box-4')
      .addClass('hidden')
      .removeClass('show')

  $('#val-box-3').click ->
    $('#val-box-3').addClass('active-val')
    $('#val-box-1, #val-box-2, #val-box-4').removeClass('active-val')
    $('.val-box-3').addClass('show')
    $('.val-box-1, .val-box-2, .val-box-4')
      .addClass('hidden')
      .removeClass('show')

  $('#val-box-4').click ->
    $('#val-box-4').addClass('active-val')
    $('#val-box-1, #val-box-2, #val-box-3').removeClass('active-val')
    $('.val-box-4').addClass('show')
    $('.val-box-1, .val-box-2, .val-box-3')
      .addClass('hidden')
      .removeClass('show')


