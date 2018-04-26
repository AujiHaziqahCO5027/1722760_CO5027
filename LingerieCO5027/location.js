function myMap2() {
    var mapProp = {
        center: new google.maps.LatLng(4.8857309, 114.9316692),
        zoom: 18,
    };
    var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(4.8857309, 114.9316692),
        map: map
    });
}