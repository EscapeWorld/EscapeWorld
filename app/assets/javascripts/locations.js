// `getLocations` accepts an object as its first param
// and a callback to run on the result data

// the `location` object can either be in one of two formats:
// {
//   city: 'Atlanta',
//   state: 'Georgia',
//   country: 'USA'
// }

// OR

// {lat: 33.772, lon: -84.336}

// The callback is handed a response object with the following attributes:
// * location
//    The location attribute is an array of latitude and longitude for the
//    center of the search space (where the user currently is or the city
//    they have chosen to search in
// * locations
//    The locations attribute contains an array of Location objects with
//    information about name, address, geo coordinates, etc
// * count
//    The count attribute contains the number of locations found

function getLocations(location, callback) {
  $.getJSON('/locations/api.json', location)
   .done(function (data) {
     callback(data);
   });
}

// the "locations" function is called on the locations index page to:
// * build the map with markers
// * build buildap

function locations () {
    var search = JSON.parse(sessionStorage.getItem('searchLocation'));
    if (search) {
      var data = {
        city: search.city,
        state: search.state,
        country: search.country
      };
    } else {
      var geo = JSON.parse(sessionStorage.getItem('geodata'));
      data = {
        lat: geo.lat,
        lon: geo.lon
      };
    }
    getLocations(data, function (locations) {
      var mapCenter = {
        lat: locations.center[0],
        lon: locations.center[1]
      };

      var map = bittersMap(mapCenter);

      locations.locations.forEach(function (location) {
        var container = document.querySelector('.cards');
        cardify(container, location);

        var markData = {
          lat: location.latitude,
          lon: location.longitude
        }

        map.mark(markData);

      });

    });
  // }

  function error () {
    console.log('didnt get the data');
  }

  // Oooooooooh yeaaaaaaaah!
  // navigator.geolocation.getCurrentPosition(success, error);
}

function cardify (container, location) {
  container.innerHTML += `
    <div class="card" onclick="window.location='/locations/${location.id}'">
      <div class="card-copy">
        <p>${location.name}</p>
        <hr />
        <p>${location.street}</p>
        <p>${location.city}, ${location.state}, ${location.zip}</p>
      </div>
    </div>`
}


