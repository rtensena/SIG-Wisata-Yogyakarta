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

  <!-- start banner Area -->
  <section class="banner-area relative">
    <div class="overlay overlay-bg"></div>
    <div class="container">
      <div class="row fullscreen align-items-center justify-content-between">
        <div class="col-lg-6 col-md-6 banner-left">
          <h6 class="text-white">INFORMASI TEMPAT WISATA</h6>
          <h1 class="text-white">PROVINSI DAERAH ISTIMEWA YOGYAKARTA</h1>
          <p class="text-white">
            Sistem informasi ini merupakan aplikasi pemetaan geografis tempat wisata di wilayah Yogyakarta. Aplikasi ini memuat informasi dan lokasi dari tempat wisata di Yogyakarta.
          </p>
          <a href="#peta_wisata" class="primary-btn text-uppercase">Lihat Detail</a>
        </div>

      </div>
    </div>
    </div>
  </section>
  <!-- End banner Area -->


  <main id="main">
    <!-- Start about-info Area -->
    <section class="price-area section-gap">

      <section id="peta_wisata" class="about-info-area section-gap">
        <div class="container">

          <div class="title text-center">
            <h1 class="mb-10">Peta Lokasi Wisata</h1>
            <br>
          </div>

          <div class="row align-items-center">

            <div id="map" style="width:100%;height:480px;"></div>
            <script>
              const map = L.map('map').setView([-7.795026, 110.369751], 12);
              L.control.locate().addTo(map);

              const tiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 19,
                attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
              }).addTo(map);

              <?php
              $data = file_get_contents('http://localhost/SIG-WISATA/ambildata.php');
              $no = 1;
              if (json_decode($data, true)) {
                $obj = json_decode($data);
                foreach ($obj->results as $item) {
              ?>
                  const loc<?php echo $no ?> = L.marker([<?php echo $item->latitude ?>, <?php echo $item->longitude ?>]).addTo(map)
                    .bindPopup('<?php echo $item->nama_wisata ?>').openPopup();
              <?php
                  $no++;
                }
              }
              ?>

              var popup = L.popup();

              function onMapClick(e) {
                popup
                  .setLatLng(e.latlng)
                  .setContent("You clicked the map at " + e.latlng.toString())
                  .openOn(map);
              }

              map.on('click', onMapClick);
            </script>
          </div>
        </div>
      </section>
      <!-- End about-info Area -->


      <!-- Start price Area -->

      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="menu-content pb-70 col-lg-8">
            <div class="title text-center">
              <h1 class="mb-10">Jangkauan Peta</h1>
              <p>Aplikasi pemetaan geografis Wisata di Provinsi Daerah Istimewa Yogyakarta ini memuat informasi dan lokasi dari Wisata Alam dan Wisata Kuliner di Yogyakarta. Pemetaan diambil dari data lokasi Leaflet.js dan data dari website masing-masing tempat wisata.
              </p>
            </div>
          </div>
        </div>

        <!-- End other-issue Area -->

      </div>
      </div> <!-- ======= Counts Section ======= -->
      <section id="counts">
        <div class="container">
          <div class="title text-center">
            <h1 class="mb-10">Jumlah Tempat Wisata</h1>
            <br>
          </div>
          <div class="row d-flex justify-content-center">


            <?php
            include_once "count.php";
            $obj = json_decode($data);
            $wisata = "";
            foreach ($obj->results as $item) {
              $wisata .= $item->i;
            }
            ?>

            <div class="text-center">
              <h1><span data-toggle="counter-up"><?php echo $wisata; ?></span></h1>
              <br>
            </div>
          </div>
        </div>
      </section><!-- End Counts Section -->
      </div>
    </section>
    <!-- End testimonial Area -->


    <?php include "footer.php"; ?>
</body>

</html>