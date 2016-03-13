$(document).ready(function(){
  var dataset;
  $('.typeahead').typeahead({
    hint: true,
    highlight: true
  },
  {
    name: 'cities',
    source: function(query, syncResults, asyncResults) {
      if (query.length < 3) {
        syncResults(substringMatcher(popularCities, query));
      }
      if (query.length >= 3 && query.length <= 8) {
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

  $('.typeahead').bind('typeahead:selected', function(obj, datum, name) {
      var location = {};
      locationString = JSON.stringify(datum);

      searchCity(locationString);
  });

  $('.typeahead').bind('typeahead:autocomplete', function(obj, datum, name) {
      var location = {};
      locationString = JSON.stringify(datum);

      searchCity(locationString);
  });

  $('.typeahead[type=text]').on('keydown', function(e) {
    if (e.which == 13) {
      e.preventDefault();
      var location = {};
      locationString = $(".typeahead").val();

      searchCity(locationString);
    }
  });

  function substringMatcher(data, query) {
      var matches, substringRegex;
      query = query.toUpperCase();

      // an array that will be populated with substring matches
      matches = [];

      // iterate through the pool of strings and for any string that
      // contains the substring `q`, add it to the `matches` array
      $.each(data, function(i, str) {
        if (str.toUpperCase().startsWith(query)) {
          matches.push(str);
        }
      });

      return matches;
  }

  function splitAddress(address) {
    var addressArray = address.split(',');
    var location = {
      city: addressArray[0],
      state: addressArray[1],
      country: addressArray[2]
    };
    return location;
  }

  function searchCity(address) {
    getLocations(splitAddress(locationString));
    $('.sliding-panel-content,.sliding-panel-fade-screen').toggleClass('is-visible');
  }

});
