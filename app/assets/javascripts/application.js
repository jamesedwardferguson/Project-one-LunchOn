// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize
//= require_tree .

var getMarkers = function() {
 $.ajax({
   url: '/lunch_items',
   type: "GET",
   dataType: "JSON"
 }).done(function(data) {
   // Loop through the data
   for (var i = 0, length = data.length; i < length; i++) {
   var latLng = {lat: data[i].latitude, lng: data[i].longitude};

   // Creating a marker and putting it on the map
     var marker = new google.maps.Marker({
       position: latLng,
       map: map,
       title: data.type
     });
   }
 });
};
      function initMap() {
        // Create a map object and specify the DOM element for display.
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -33.873, lng: 151.211},
          zoom: 15
        });
       var infoWindow = new google.maps.InfoWindow({map: map});
        // Try HTML5 geolocation.
       if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
        var pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        };

        infoWindow.setPosition(pos);
        infoWindow.setContent('You Are Here.');
        map.setCenter(pos);
      }, function() {
        handleLocationError(true, infoWindow, map.getCenter());
      });
    } else {
      // Browser doesn't support Geolocation
      handleLocationError(false, infoWindow, map.getCenter());
    }
    getMarkers();
   }

   function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
                          'Error: The Geolocation service failed.' :
                          'Error: Your browser doesn\'t support geolocation.');
   }
