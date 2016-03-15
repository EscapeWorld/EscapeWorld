var bittersMap = function (geo) {
  var myLatlng = new google.maps.LatLng(geo.lat, geo.lon),
      mapCenter = new google.maps.LatLng(geo.lat, geo.lon),
      mapCanvas = document.getElementById('map_canvas'),
      mapOptions = {
        center: mapCenter,
        zoom: 9,
        scrollwheel: false,
        draggable: true,
        disableDefaultUI: false,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      },
      markerBounds = new google.maps.LatLngBounds(),
      map = new google.maps.Map(mapCanvas, mapOptions),
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
      // This will add the marker to the markerBounds Object
      markerBounds.extend(myLatlng);
      // this will fit the viewport and zoom based on all markerBound markers.
      map.initialZoom = true;
      map.fitBounds(markerBounds);

      google.maps.event.addListener(marker, 'click', function () {
        infowindow.open(map,marker);
      });

      google.maps.event.addListener(map, 'zoom_changed', function() {
        zoomChangeBoundsListener =
            google.maps.event.addListener(map, 'bounds_changed', function(event) {
                if (this.getZoom() > 14 && this.initialZoom === true) {
                    // Change max/min zoom here
                    this.setZoom(14);
                    this.initialZoom = false;
                }
            google.maps.event.removeListener(zoomChangeBoundsListener);
        });
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
      markerBounds.extend(myLatlng);

      google.maps.event.addListener(home, 'click', function () {
        console.log('map is ok?');
        infowindow.open(map,home);
      });
     map.fitBounds(markerBounds);
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
  };

  // store in session storage
  if (typeof(Storage) !== 'undefined') {
     sessionStorage.setItem('geodata', JSON.stringify(geoData));
  }

  // build bitters map
  bittersMap(geoData);
}

function error () {
  console.log('didnt get data');
}

// put the whole thing in motion!
window.onload = function () {
  var isGeoInStorage = sessionStorage.getItem('geodata');
  if (isGeoInStorage) {
    console.log(isGeoInStorage);
    bittersMap().init();
  } else {
    navigator.geolocation.getCurrentPosition(success, error);
  }
};
