document.addEventListener("DOMContentLoaded", function() {
  var map = L.map('map').setView([52.2297, 21.0122], 13); // Start at Warsaw

  // Map layer from OpenStreetMap
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  // Add pins for each place
  var places = <%= raw @places.to_json %>; // Places from the Rails backend
  places.forEach(function(place) {
    L.marker([place.latitude, place.longitude]).addTo(map)
      .bindPopup(place.name);
  });

  // Example marker for Tilgate Park
  L.marker([51.0975, -0.1833]).addTo(map)
    .bindPopup("Tilgate Park");
});
