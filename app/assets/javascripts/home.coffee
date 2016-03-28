window.activateTime = ->
  $('.showtimes .button').click ->
    data = $(@).data()
    $(@).parent('.showtimes').find('.button').removeClass('active')
    if $(@).hasClass('green')
      $(@).addClass('active')
      $("##{data['input']}").find('#ticket_showing_id').val(data['id'])
      $("##{data['button']}").removeClass('hidden')
    else
      $("##{data['button']}").addClass('hidden')


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

window.activateModal = ->
  $('.purchase.button').click ->
    data = $(@).data()
    console.log data['modal']
    $("##{data['modal']}").modal('show')

window.closeAlert = ->
  $('.message .close').click ->
    $(@).closest('.message').transition 'fade'

$ ->
  activateTime()
  labelSoldOut()
  labelSeats()
  activateModal()
  closeAlert()

  $(window).on 'popstate', (e) ->
    if e.originalEvent.state.tag
      window.location.replace document.location.href
