# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.validatePurchase = ->
  $('.ui.form').form
    on: 'blur'
    inline: 'true'
    fields:
      empty:
        identifier: "ticket_first_name"
        rules: [ {
          type: 'empty'
          prompt: 'Please enter a name'
        } ]
      dropdown:
        identifier: 'dropdown'
        rules: [ {
          type: 'empty'
          prompt: 'Please select a dropdown value'
        } ]
      checkbox:
        identifier: 'ticket_expiration_date'
        rules: [ {
          type: 'empty'
          prompt: 'Please enter an expiration date'
        } ]
      card_number:
        identifier: 'ticket_card_number'
        rules: [{
          type: 'creditCard'
          prompt: 'Please enter a valid credit card number'
        }]
      cvc:
        identifier: 'ticket_cvc'
        rules: [{
          type: 'exactLength[3]'
          prompt: 'Please enter a valid CVC'
        }]
      email:
        identifier: 'ticket_email'
        rules: [{
          type: 'email'
          prompt: 'Please enter a valid email'
        }]
$ ->
  validatePurchase()
  $('#ticket_expiration_date_3i').val('')
