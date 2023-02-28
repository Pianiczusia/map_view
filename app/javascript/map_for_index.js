function initMap() {

  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 13,
    center: new google.maps.LatLng(52.2297700, 21.0117800)
  })

  const buttons = document.querySelectorAll('.js-show-on-map')

  for (var i = 0; i < buttons.length; i++) {
    const button = buttons[i]
    button.addEventListener('click', (event) => {
      const lat = button.dataset.lat
      const lon = button.dataset.lon
      const latLon = new google.maps.LatLng(lat, lon)
      map.panTo(latLon)
    })
  }
  
  const mapElement = document.getElementById('map')
  const { markers } = mapElement.dataset
  const array = JSON.parse(markers)

  array.forEach((marker) => {
    const markerOnMap = new google.maps.Marker({
      position: { lat: parseFloat(marker.lat), lng: parseFloat(marker.lon) },
      map: map,
      title: marker.name
    });
    google.maps.event.addListener(markerOnMap, 'click', (event) => {
      const elements = document.querySelectorAll(`[data-id]`)
      elements.forEach((e) => e.classList.remove('bg-stone-100'))
      const element = document.querySelector(`[data-id="${marker.id}"]`)
      element.classList.add('bg-stone-100')
    })
  })
}

window.initMap = initMap;
