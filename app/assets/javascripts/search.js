$(document).ready(function(){
  var dataset;
  $('.typeahead').typeahead({
    hint: true,
    highlight: true,
    minLength: 3
  },
  {
    name: 'cities',
    source: function(query, syncResults, asyncResults) {

      if (query.length >= 3 && query.length <= 5) {
        $.ajax({
          url: 'http://gd.geobytes.com/AutoCompleteCity?callback=?&q=' + query,
          dataType: "jsonp",
        })
        .done(function(data) {
          dataset = data;
          asyncResults(data);
        });
      } else {
        syncResults(dataset);
      }
    }
  });
  $('.typeahead').on('blur', function () {
    ev = $.Event("keydown");
    ev.keyCode = ev.which = 40;
    $('.typeahead').trigger(ev);
    return true;
  });

  // function getcitydetails(fqcn) {
  //   if (typeof fqcn == "undefined") fqcn = jQuery("#f_elem_city").val();
  //   cityfqcn = fqcn;
  //   if (cityfqcn) {
  //       jQuery.getJSON(
  //                   "http://gd.geobytes.com/GetCityDetails?callback=?&fqcn="+cityfqcn,
  //                      function (data) {
  //               jQuery("#geobyteslatitude").val(data.geobyteslatitude);
  //               jQuery("#geobyteslongitude").val(data.geobyteslongitude);
  //               }
  //       );
  //   }
  // }
});
