function initMap() {
  const lng = document.getElementById('place_address_attributes_location_attributes_lon')
  const lat = document.getElementById('place_address_attributes_location_attributes_lat')

  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 13,
    center: new google.maps.LatLng(lat.value || 52.2297700, lng.value || 21.0117800)
  })

  google.maps.event.addListener(map, 'click', (event) => {
    var marker = new google.maps.Marker({
      position: event.latLng,
      map: map
    });
    lng.value = marker.getPosition().lng()
    lat.value = marker.getPosition().lat()

  });
  
  window.map = map

}

window.initMap = initMap;