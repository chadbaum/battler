// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
$(function () {
  var leaveParty = function (event) {
    event.preventDefault();
    // Ajax
    $.ajax({
      type: "PATCH",
      url: ui.item.data('character'),
      dataType: 'json',
      data: { character: { party_id: nil } }
    })
  };
  $('#leave-party').on('click', leaveParty);
});
