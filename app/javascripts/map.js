document.addEventListener("DOMContentLoaded", function() {
  // Access the data attribute to get the map data
  var mapElement = document.getElementById("map");
  var mapData = JSON.parse(mapElement.getAttribute("data-map-data"));

  // Initialize the map and center it on the first coordinate of the polygon
  var map = L.map('map').setView(mapData.well_known_text.coordinates[0][0], 13);

  // Add the map tile layer (you can change the URL to your preferred tile provider)
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

  // Create a Leaflet polygon layer and add it to the map
  var polygon = L.polygon(mapData.well_known_text.coordinates).addTo(map);
});
