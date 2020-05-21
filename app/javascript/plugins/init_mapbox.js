import mapboxgl from 'mapbox-gl';
const mapElement = document.getElementById('map');
 
const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {

  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11'
  });



  if (mapElement) {
    const markers = JSON.parse(mapElement.dataset.markers);

      markers.forEach((marker) => {
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .addTo(map);
      });
    };

    fitMapToMarkers(map, markers);
};

export { initMapbox };
