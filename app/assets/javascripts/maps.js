function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 7,
    center: {lat: 46.8131873, lng: 8.2242101}
  });

  setMarkers(map);
}

function setMarkers(map) {
  $.getJSON('/farms.json', function(json){
    for (var i = 0; i < json['data'].length; i++) {
      var contentString =
        '<a href="/' + json['data'][i]['type'] + '/' + json['data'][i]['id'] + '">' +
        json['data'][i]['attributes']['name'] + '<br>' +
        json['data'][i]['attributes']['address'] + '<br>' +
        json['data'][i]['attributes']['zip_code'] + ' ' +
        json['data'][i]['attributes']['place'] + '</a>'

      var infowindow = new google.maps.InfoWindow({
        content: contentString
      });

      var marker = new google.maps.Marker({
        position: {
          lat: json['data'][i]['attributes']['latitude'],
          lng: json['data'][i]['attributes']['longitude']
        },
        map: map,
        title: json['data'][i]['attributes']['name']
      });

      marker.addListener('click', function() {
        infowindow.open(map, marker);
      });
    }
  })
}
