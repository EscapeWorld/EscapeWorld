var bittersMap = function (geo) {
  var myLatlng = new google.maps.LatLng(geo.lat, geo.lon),
      mapCenter = new google.maps.LatLng(geo.lat, geo.lon),
      mapCanvas = document.getElementById('map_canvas'),
      mapOptions = {
        center: mapCenter,
        zoom: 13,
        scrollwheel: false,
        draggable: true,
        disableDefaultUI: true,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      },
      map = new google.maps.Map(mapCanvas, mapOptions),
      contentString =
        '<div id="content">'+
        '<div id="siteNotice">'+
        '</div>'+
        '<h1 id="firstHeading" class="firstHeading">home</h1>'+ // this needs to be dynamic
        '<div id="bodyContent"'+
        '<p>Atlanta, Ga</p>'+ // This is going to need to be dynamic somehow
        '</div>'+
        '</div>',
      infowindow = new google.maps.InfoWindow({
        content: contentString,
        maxWidth: 300
      }),
      marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: 'home'
      });

  return {
    init: function () {
      map.set('styles', [{
        featureType: 'landscape',
        elementType: 'geometry',
        stylers: [
          { hue: '#ffff00' },
          { saturation: 30 },
          { lightness: 10}
        ]}
      ]);

      google.maps.event.addListener(marker, 'click', function () {
        infowindow.open(map,marker);
      });
    },

    mark: function (geo) {
      // good
      var myLatlng = new google.maps.LatLng(geo.lat, geo.lon),
      // good
      home = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: 'home'
      });

      google.maps.event.addListener(home, 'click', function () {
        console.log('map is ok?');
        infowindow.open(map,home);
      });

      console.log(geo);
    }
  };
};

function success (position) {
  var lat = position.coords.latitude;
  var lon = position.coords.longitude;

  // build our own object
  var geoData = {
    lat: lat,
    lon: lon
  }

  // build bitters map
  bittersMap(geoData).init();
}

function error () {
  console.log('didnt get data')
}

// put the whole thing in motion!
window.onload = function () {
  navigator.geolocation.getCurrentPosition(success, error)
}
