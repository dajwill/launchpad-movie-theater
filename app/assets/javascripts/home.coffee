window.activateTime = ->
  $('.showtimes .button').click ->
    data = $(@).data()
    $(@).parent('.showtimes').find('.button').removeClass('active')
    $(@).addClass('active')
    $("##{data['input']}").find('#ticket_showing_id').val(data['id'])
    console.log $("##{data['input']}").find('#ticket_showing_id').val()

window.labelSoldOut = ->
  $('.ui.inverted.red.button').hover (->
    $this = $(@)
    # caching $(this)
    $this.data 'initialText', $this.text()
    $this.text 'Sold Out'
    return
  ), ->
    $this = $(@)
    # caching $(this)
    $this.text $this.data('initialText')
    return

window.labelSeats = ->
  $('.ui.inverted.green.button').hover (->
    $this = $(@)
    # caching $(this)
    $this.data 'initialText', $this.text()
    $this.text $(@).data("seats")
    return
  ), ->
    $this = $(@)
    # caching $(this)
    $this.text $this.data('initialText')
    return

$ ->
  activateTime()
  labelSoldOut()
  labelSeats()

  $('.cookie.nag')
    .nag('clear')
  ;
