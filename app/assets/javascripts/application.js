//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require select2.min
//= require_tree .

$(document).ready(function(){
  $("#currentCurrency").select2({
    placeholder: "What currency do you use?"
  });
  $("#wantedCurrency").select2({
    placeholder: "What currency you want to get?"
  });
});
