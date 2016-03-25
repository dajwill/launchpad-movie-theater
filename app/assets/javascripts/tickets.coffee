# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.deleteIfIncomplete = ->
  $('window').onbeforeunload  ->
    alert 'You have unsaved changes!'
$ ->
  $('#ticket_expiration_date_3i').val('')
