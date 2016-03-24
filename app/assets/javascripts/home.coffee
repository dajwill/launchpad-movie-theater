window.activateTime = ->
  $('.showtimes .button').click ->
    $(@).parent('.showtimes').find('.button').removeClass('active')
    $(@).addClass('active')

$ ->
  activateTime()
