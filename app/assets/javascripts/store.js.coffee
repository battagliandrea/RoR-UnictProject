# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#SONO EVENTI CHE SI ATTIVANO QUANDO L'UTENTE ARRIVA SULLA PAGINA OPPURE CAMBIA PAGINA
$(document).on "ready page:change", ->
  #DEFINISCE FUNZIONE CHE VIENE ASSOCIATA AL CLICK DELL'IMMAGINE PRESENTE IN STORE
   $('.store .entry > img').click ->
     #ELEBORA L'EVENTO CLICK
     $(this).parent().find(':submit').click()
