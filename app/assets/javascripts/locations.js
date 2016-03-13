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

function getLocations(location, callback) {
  $.getJSON('/locations/api.json', location)
   .done(function (data) {
     callback(data);
   });
}
