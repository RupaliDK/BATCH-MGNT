# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
   $('.datepicker').datepicker({
     dateFormat: "dd/mm/yy",  
     changeMonth: true,
     changeYear: true
   })
$("#event_start").datetimepicker()
$("#event_start").click ->
    $("#event_start").datetimepicker()