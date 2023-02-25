function initMap() {

  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 13,
    center: new google.maps.LatLng(52.2297700, 21.0117800)
  })

  const myLatLng = new google.maps.LatLng(52.2297700, 21.0117800)

  const mapElement = document.getElementById('map')
  const {markers} = mapElement.dataset

  const array = JSON.parse(markers)

  array.forEach((marker)=>{
    const markerOnMap = new google.maps.Marker({
      position: {lat: parseFloat(marker.lat), lng: parseFloat(marker.lon)},
      map: map,
      title: marker.name 
    });
    google.maps.event.addListener(markerOnMap, 'click', (event)=> {
      const elements = document.querySelectorAll(`[data-id]`)
      elements.forEach((e) => e.classList.remove('bg-gray-700'))
      const element = document.querySelector(`[data-id="${marker.id}"]`)
      element.classList.add('bg-gray-100')
    })
  })

}

window.initMap = initMap;
