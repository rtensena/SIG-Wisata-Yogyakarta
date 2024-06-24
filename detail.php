<?php
$id = $_GET['id_wisata'];
include_once "ambildata_id.php";
$obj = json_decode($data);
$id_wisata = "";
$nama_wisata = "";
$alamat = "";
$deskripsi = "";
$harga_tiket = "";
$lat = "";
$long = "";
foreach ($obj->results as $item) {
  $id_wisata .= $item->id_wisata;
  $nama_wisata .= $item->nama_wisata;
  $alamat .= $item->alamat;
  $deskripsi .= $item->deskripsi;
  $harga_tiket .= $item->harga_tiket;
  $lat .= $item->latitude;
  $long .= $item->longitude;
}

$title = "Detail dan Lokasi : " . $nama_wisata;
//include_once "header.php"; 
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>INFO WISATA YOGYAKARTA</title>
  <link rel="icon" href="admin/img/logo-yk.png">
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css" integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI=" crossorigin="" />
  <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js" integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM=" crossorigin=""></script>

  <!-- leaflet routing machine -->
  <link rel="stylesheet" href="https://unpkg.com/leaflet-routing-machine@latest/dist/leaflet-routing-machine.css" />

  <!-- leaflet locate -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet.locatecontrol@0.79.0/dist/L.Control.Locate.min.css" />
</head>

<body>
  <!-- leaflet js locate -->
  <script src="https://cdn.jsdelivr.net/npm/leaflet.locatecontrol@0.79.0/dist/L.Control.Locate.min.js" charset="utf-8"></script>

  <!-- leaflet js routing machine -->
  <script src="https://unpkg.com/leaflet-routing-machine@latest/dist/leaflet-routing-machine.js"></script>

  <?php include "header.php"; ?>

  <!-- <script>
    function initialize() {
      var myLatlng = new google.maps.LatLng();
      var mapOptions = {
        zoom: 13,
        center: myLatlng
      };

      var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

      var contentString = '<div id="content">' +
        '<div id="siteNotice">' +
        '</div>' +
        '<h1 id="firstHeading" class="firstHeading"></h1>' +
        '<div id="bodyContent">' +
        '<p></p>' +
        '</div>' +
        '</div>';

      var infowindow = new google.maps.InfoWindow({
        content: contentString
      });

      var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: 'Maps Info',
        icon: 'img/markermap.png'
      });
      google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map, marker);
      });
    }

    google.maps.event.addDomListener(window, 'load', initialize);
  </script> -->

  <!-- start banner Area -->
  <section class="about-banner relative">
    <div class="overlay overlay-bg"></div>
    <div class="container">
      <div class="row d-flex align-items-center justify-content-center">
        <div class="about-content col-lg-12">
          <h1 class="text-white">
            Detail Informasi Geografis Wisata
          </h1>

        </div>
      </div>
    </div>
  </section>
  <!-- End banner Area -->
  <!-- Start about-info Area -->
  <section class="about-info-area section-gap">
    <div class="container" style="padding-top: 120px;">
      <div class="row">

        <div class="col-md-7" data-aos="fade-up" data-aos-delay="200">
          <div class="panel panel-info panel-dashboard">
            <div class="panel-heading centered">
              <h2 class="panel-title"><strong>Informasi Wisata </strong></h4>
            </div>
            <div class="panel-body">
              <table class="table">
                <tr>
                  <!-- <th>Item</th> -->
                  <th>Detail</th>
                </tr>
                <tr>
                  <td>Nama Wisata</td>
                  <td>
                    <h5><?php echo $nama_wisata ?></h5>
                  </td>
                </tr>
                <tr>
                  <td>Alamat</td>
                  <td>
                    <h5><?php echo $alamat ?></h5>
                  </td>
                </tr>
                <tr>
                  <td>Deskripsi</td>
                  <td>
                    <h5><?php echo $deskripsi ?></h5>
                  </td>
                </tr>
                <tr>
                  <td>Harga Tiket</td>
                  <td>
                    <h5>Rp. <?php echo $harga_tiket ?></h5>
                  </td>
                </tr>
              </table>
            </div>
          </div>
        </div>

        <div class="col-md-5" data-aos="zoom-in">
          <div class="panel panel-info panel-dashboard">
            <div class="panel-heading centered">
              <h2 class="panel-title"><strong>Lokasi</strong></h4>
            </div>
            <div class="panel-body">
              <div id="map-canvas" style="width:100%;height:380px;"></div>
              <script>
                const map = L.map('map-canvas').setView([<?php echo $lat ?>, <?php echo $long ?>], 13);
                L.control.locate().addTo(map);

                const tiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
                  maxZoom: 19,
                  attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
                }).addTo(map);

                const loc = L.marker([<?php echo $lat ?>, <?php echo $long ?>]).addTo(map)
                  .bindPopup('<?php echo $nama_wisata ?>').openPopup();


                const popup = L.popup()
                  .setLatLng([-7.77454, 110.369339])
                //.setContent('Mie Gacoan')
                //.openOn(map);

                function onMapClick(e) {
                  popup
                    .setLatLng(e.latlng)
                    .setContent(`Anda menekan pada peta di koordinat ${e.latlng.toString()}`)
                    .openOn(map);
                }

                map.on('click', onMapClick);

                // map.on('click', function(e) {
                //   console.log(e)
                //   var newMarker = L.marker([e.latlng.lat, e.latlng.lng]).addTo(map);

                //   L.Routing.control({
                //     waypoints: [
                //       //L.latLng(-7.771138, 110.386059),
                //       //L.latLng(e.latlng.L.control.locate()),
                //       L.latLng(-7.761072, 110.409372),
                //       L.latLng(e.latlng.lat, e.latlng.lng)
                //     ]
                //   }).addTo(map);
                // });
              </script>
            </div>
          </div>
        </div>
  </section>
  <!-- End about-info Area -->
  <?php include "footer.php"; ?>
</body>

</html>