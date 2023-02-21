function initMap() {
  const lon = document.getElementById('place_address_attributes_location_attributes_lon') 
  const lat = document.getElementById('place_address_attributes_location_attributes_lat')
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 10,
    center: new google.maps.LatLng(lat.value || -34, lon.value || 151)
  })
  map.addListener("center_changed", () => {
    lon.value = map.getCenter().lng()
    lat.value = map.getCenter().lat()
  });
  window.map = map
}
                    
window.initMap = initMap;