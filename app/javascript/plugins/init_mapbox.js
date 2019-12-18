import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/outdoors-v11'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    let n = 1
    markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
    const el = document.createElement('div');
    el.className = 'marker';
    el.style.backgroundImage = `url('https://res.cloudinary.com/dlodtvkez/image/upload/v1576671314/bm${n}.png')`;
    el.style.backgroundSize = 'contain';
    el.style.width = '25px';
    el.style.height = '34px';
    n++
    new mapboxgl.Marker(el)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
    });
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
