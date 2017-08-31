$(document).ready(function(){
  var current = $("#currentCurrency"),
      wanted = $("#wantedCurrency"),
      currentValue = $("#changeCurrency");
  current.select2({ placeholder: "What currency do you use?" });
  wanted.select2({ placeholder: "What currency you want to get?"});
  currentValue.change(function(){
    $.post( "/convert", { current: current.value, wanted: wanted.value, value: currentValue.value })
  })
});

