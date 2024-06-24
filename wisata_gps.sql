-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2023 pada 11.42
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_gps`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(8) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga_tiket` varchar(255) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `alamat`, `deskripsi`, `harga_tiket`, `latitude`, `longitude`) VALUES
(53, 'Candi Prambanan', 'Jl. Raya Solo - Yogyakarta No.16, Kranggan, Bokoharjo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571', 'Candi Prambanan adalah candi Hindu terbesar di Indonesia sekaligus salah satu candi yang terindah di Asia Tenggara. Menurut prasasti Siwagrha, candi ini mulai dibangun pada masa pemerintahan Rakai Pikatan (pertengahan abad ke-9) dari Kerajaan Mataram Kuno. Diperkirakan ada 240 candi besar dan kecil di kompleks Candi Prambanan. Namun, hanya 18 candi yang berhasil dipugar, sisanya adalah tumpukan batu yang berserakan.  Tiga dari 8 candi utama disebut candi Trimurti (\"tiga wujud\"), dipersembahkan untuk 3 dewa Hindu tertinggi: Dewa Brahma Sang Pencipta, Wisnu Sang Pemelihara, dan Siwa Sang Pemusnah.', '25000 - 50000', '-7.7520153', '110.4888925'),
(54, 'Malioboro', 'Jl. Malioboro, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271', 'Belum ke Jogja rasanya kalau tidak ke Jl. Malioboro. Ada banyak toko yang bisa dikunjungi ditempat ini. Atau setidaknya bisa berjumpa dengan kehangatan dan kerumunan orang-orang yang ingin menikmati suasana Yogyakarta. Suasana terbaiknya ada pada malam hari. Ada banyak pedagang yang berjualan (bukan lagi di jalan utama) tapi di jalan satelit disekitar Malioboro seperti di Jl. Sosrowijaya. Ada banyak penginapan juga disekitar sini tapi biasanya harganya lebih tinggi karena pusat wisata Jogja. Ada Delman dan Becak bagi yang tidak ingin jalan kaki. Harga bervariasi dan pintarlah menawar. Delman cocok bagi banyak orang karena harganya lumayan mahal sekitar Rp. 150.000 untuk satu kali rute putaran bisa muat 5-6 orang. Bagi yang sendiri atau berdua bisa naik Becak. Rata-rata makanan disekitar sini mulai dari Rp. 20.000-an. Bila ada pedagang asongan jangan lupa untuk berbagi rejeki karena mereka berjualan dan bukan meminta-minta. Ada juga tukang pijat dan penjual camilan. Paling seru bila andan berubtung ada pagelaran yang diadakan di Jalan Malioboro ini.', '0', '-7.79269', '110.365878'),
(55, 'Tamansari Yogyakarta', 'Patehan, Kraton, Yogyakarta City, Special Region of Yogyakarta 55133', 'Taman Sari Yogyakarta atau Taman Sari Keraton Yogyakarta a Bogor. Kebun ini dibangun pada zaman Sultan Hamengku Buwono I (HB I) pada tahun 1758-1765/9. Awalnya, taman yang mendapat sebadalah situs bekas taman atau kebun istana Keraton Ngayogyakarta Hadiningrat, yang dapat dibandingkan dengan Taman Sari Surakarta dan Kebun Raya Bogor sebagai kebun Istanutan ', '15000', '-7.810063', '110.359204'),
(56, 'Keraton Ngayogyakarta Hadiningrat', 'Jl. Rotowijayan Blok No. 1, Panembahan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta', 'Keraton Kasultanan Ngayogyakarta Hadiningrat atau yang sekarang lebih dikenal dengan nama Keraton Yogyakarta merupakan pusat dari museum hidup kebudayaan Jawa yang ada di Daerah Istimewa Yogyakarta. Tidak hanya menjadi tempat tinggal raja dan keluarganya semata, Keraton juga menjadi kiblat perkembangan budaya Jawa, sekaligus penjaga nyala kebudayaan tersebut. Di tempat ini wisatawan dapat belajar dan melihat secara langsung bagaimana budaya Jawa terus hidup serta dilestarikan. Keraton Yogyakarta dibangun oleh Pangeran Mangkubumi pada tahun 1755, beberapa bulan setelah penandatanganan Perjanjian Giyanti. Dipilihnya Hutan Beringin sebagai tempat berdirinya keraton dikarenakan tanah tersebut diapit dua sungai sehingga dianggap baik dan terlindung dari kemungkinan banjir. Meski sudah berusia ratusan tahun dan sempat rusak akibat gempa besar pada tahun 1867, bangunan Keraton Yogyakarta tetap berdiri dengan kokoh dan terawat dengan baik.', '5000', '-7.806923', '110.363923'),
(57, 'Gembira Loka Zoo', 'Jl. Kebun Raya No.2, Rejowinangun, Kec. Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55171', 'Gembira Loka merupakan tempat yang tepat untuk berwisata bersama keluarga. Tak hanya bisa mencoba berbagai wahana permainan dan menyaksikan tingkah aneka satwa, di Gembira Loka Anda juga bisa menemukan kadal raksasa, Komodo Dragon.', '60000 - 75000', '-7.8040112', '110.3954191'),
(58, 'Taman Pintar Yogyakarta', 'Jl. Panembahan Senopati No.1-3, Ngupasan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122', 'Disebut “Taman Pintar”, karena di kawasan ini nantinya para siswa, mulai pra sekolah sampai sekolah menengah bisa dengan leluasa memperdalam pemahaman soal materi-materi pelajaran yang telah diterima di sekolah dan sekaligus berekreasi. Dengan Target Pembangunan Taman Pintar adalah memperkenalkan science kepada siswa mulai dari dini, harapan lebih luas kreatifitas anak didik terus diasah, sehingga bangsa Indonesia tidak hanya menjadi sasaran eksploitasi pasar teknologi belaka, tetapi juga berusaha untuk dapat menciptakan teknologi sendiri.Bangunan Taman Pintar ini dibangun di eks kawasan Shopping Center, dengan pertimbangan tetap adanya keterkaitan yang erat antara Taman Pintar dengan fungsi dan kegiatan bangunan yang ada di sekitarnya, seperti Taman Budaya, Benteng Vredeburg, Societiet Militer dan Gedung Agung.', '20000', '-7.801023', '110.367776'),
(59, 'Bunker Kaliadem Merapi', 'Kinarejo, Hargobinangun, Pakem, Sleman Regency, Special Region of Yogyakarta 55582', 'Bunker Kaliadem di Kepuharjo, Kapanewon Cangkringan, Kabupaten Sleman menjadi salah satu spot destinasi wisata di kawasan lereng Gunung Merapi. Wisatawan yang berkunjung dapat melihat langsung bangunan bunker, bahkan masuk ke bagian dalamnya. Di area bunker Kaliadem ini wisatawan disuguhi  panorama keindahan alam lereng Gunung Merapi. Ketika cuaca cerah, wisatawan dapat melihat visual Gunung Merapi dengan jelas.', '0', '-7.582955', '110.447903'),
(60, 'Tlogo Putri Kaliurang', 'CC4J+HW8, Jl. Tlogo Putri, Kaliurang, Hargobinangun, Kec. Pakem, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55582', 'Tlogo Putri Kaliurang disebut sebagai wisatawa alam karena tempat wisata ini berada di bukit Plawangan di lereng selatan Gunung Merapi. Pada tahun 1980-an, Tlogo Putri Kaliurang terkenal sebagai kolam renang umum. Namun akhirnya, kolam renang tersebut tutup setelah munculnya berbagai kolam renang di kawasan Yogyakarta. Puncaknya setelah Yogyakarta dilanda gempa pada tahun 2006. Kolam renang tutup, kemudian pihak pengelola mengubah menjadi destinasi wisata baru yang dilengkapi berbagai wahana.', '6000', '-7.592681', '110.433242'),
(61, 'Taman Kaliurang', 'CC2G+HJX, Kaliurang Barat, Kaliurang, Hargobinangun, Pakem, Sleman Regency, Special Region of Yogyakarta 55582', 'Taman Kaliurang adalah tempat wisata yang paling sesuai dan terjangkau untuk piknik bersama keluarga. Udaranya sejuk dan banyak pohon rindang. Kita juga diperbolehkan membawa makanan dan minuman dari luar.  Taman Kaliurang dihiasi patung raksasa dari dongeng tujuh anak, lorong naga, perosotan dinosaurus, patung gajah, dan banyak ayunan. Kondisinya memang sudah berumur, tetapi kita tidak perlu membayar lagi untuk bermain di sini.', '8000', '-7.598534', '110.4261683'),
(62, 'Suraloka Zoo', 'Jl. Boyong No.97, Kaliurang, Hargobinangun, Kec. Pakem, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55585', 'Suraloka Zoo adalah tempat wisata edukasi di Kaliurang, 26 km utara Kota Jogja. Koleksi hewannya memang tidak sebanyak Gembira Loka, tetapi anak-anak senang bisa berinteraksi langsung dengan banyak hewan di sini. Tempatnya juga bersih dan terawat. Suraloka Zoo buka setiap hari, mulai pk 09.00 hingga pk 17.00. Harga tiket masuknya Rp30.000, anak di bawah 1 tahun bisa masuk gratis.', '30000 - 150000', '-7.607452', '110.421108'),
(63, 'Tebing Breksi', 'Jl. Desa Lengkong, RT.02/RW.17, Gn. Sari, Sambirejo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55572', 'Bertahun-tahun kawasan ini menjadi pundi-pundi ekonomi bagi warga sekitar yang melakukan penambangan batuan kapur. Kikis demi kikis tubuh batu kapur tua itu adalah sumber mata pencaharian utama mereka. Lalu tahun 2014 datang—setelah tersisa kira-kira hanya sepersepuluh dari volume awal Tebing Breksi—dan membawa peneliti gabungan dari Institut Teknologi Bandung (ITB) dan Universitas Pembangunan Nasional (UPN) meninjau Tebing Breksi. Hasilnya? Ditemukan jenis batuan tufan yang langka, sehingga Tebing Breksi ditetapkan sebagai salah satu Geoheritage Yogyakarta yang dilarang untuk ditambang lagi.', '10000', '-7.7817362', '110.5038746'),
(64, 'Candi Ijo', 'Jl. Candi Ijo, Nglengkong, Sambirejo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55572', 'Candi Ijo dibangun sekitar abad ke-9, di sebuah bukit yang dikenal dengan Bukit Hijau atau Gumuk Ijo yang ketinggiannya sekitar 410 m di atas permukaan laut. Karena ketinggiannya, maka bukan saja bangunan candi yang bisa dinikmati tetapi juga pemandangan alam di bawahnya berupa teras-teras seperti di daerah pertanian dengan kemiringan yang curam. Meski bukan daerah yang subur, pemandangan alam di sekitar candi sangat indah untuk dinikmati.', '5000', '-7.783877', '110.511615'),
(65, 'Pantai Parangtritis', 'Pantai Parangtritis Mancingan RT 07, Pantai, Parangtritis, Kec. Kretek, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55772', 'Pantai Parangtritis hanya berjarak 27 km dari pusat Kota Yogyakarta. Pantai ini terkenal dengan pemandangan sunset yang romantis. Selain itu, Pantai Parangtritis ini merupakan pantai yang paling terkenal di antara pantai-pantai lain yang tersebar di wilayah Yogyakarta.  Pantai ini mempunyai pemandangan yang unik dan tidak terdapat pada obyek wisata lain. Obyek wisata ini mempunyai ombak yang besar dan di sekitar tempat wisata ini terdapat gunung-gunung pasir yang disebut dengan gumuk.  Saat matahari sudah condong ke barat dan cuaca sedang cerah, para wisatawan bisa bersenang-senang di pantai ini. Walaupun wisatawan tidak diperbolehkan untuk berenang di pantai ini, namun pantai ini tidak kekurangan fasilitas untuk having fun. Di pinggir pantai terdapat persewaan ATV (All Terrain Vehicle), para wisatawan bisa menyewanya untuk berkendara melintasi gundukan pasir pantai.', '10000', '-8.026504', '110.337097'),
(66, 'Sungai Mudal', 'Banyunganti, Jatimulyo, Girimulyo, Kulon Progo Regency, Special Region of Yogyakarta 55674', 'Ekowisata Sungai mudal merupakan salah satu objek wisata air yang terletak di pegunungan menoreh. Objek wisata ini diresmikan pada tahun 2015. Mudal adalah mata air yang mengalir sepanjang tahun dan digunakan sebagai sumber air bersih oleh warga sekitar. Nama mudal sendiri berasal dari Bahasa Jawa yang berarti “keluar.” Taman sungai tuk mudal secara administratif berada di Dusun Banyunganti, Desa Jatimulyo, Kec Girimulyo, Kabupaten Kulonprogo.  Dari tempat parkir, pengunjung diharuskan berjalan sekitar 500 meter menuju lokasi Sungai Mudal tersebut. Tempat wisata ini biasa digunakan untuk berenang. Namun, Ekowisata Sungai Mudal juga menyediakan fasilitas lain seperti camping ground dan flying fox. Objek wisata ini juga dilengkapi dengan adanya gazebo yang dapat digunakan untuk beristirahat sambil melepas penat. Sama halnya dengan Kedung Pedut dan Grojogan Sewu, rute yang mudah ditempuh dari Yogyakarta ke arah barat melalui Jalan Godean kemudian ke arah Kulon Progo kurang lebih 50km.', '10000', '-7.762724', '110.116297'),
(67, 'Waduk Sermo', 'Sremo tengah rt: 63/23, Sremo Tengah, Hargowilis, Kec. Kokap, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55653', 'Waduk Sermo terletak di Daerah Istimewa Yogyakarta,tepatnya di Dusun Sermo,Desa Hargowilis,Kecamatan Kokap,Kabupaten Kulon Progo,yang berjarak ± 35 km dari kota Yogyakarta dan ± 6 km dari Pusat Wates Kulon Progo.  Waduk Sermo dibangun pada bulan Maret 1994 dengan waktu pelaksanaan 32 bulan. Pengisian pertama dimulai pada akhir bulan Maret 1996. Pelaksana pembangunan waduk ini adalah Hyundai—Duta Graha J.O dan konsultan pengawas oleh Elc.Electroconsult dari Itali berkerja sama dengan PT. Bina Karya dan PT.Wiratman. Pembangunan konstruksi Bendungan Sermo menelan biaya sebesar Rp 32,4 milyar.  Tujuan pembangunan Waduk Sermo adalah untuk meningkatkan penyediaan irigasi, pengendali banjir, usaha perikanan, pariwisata, dan prasarana olah raga air.', '0', '-7.825035', '110.123765'),
(68, 'Museum Benteng Verdeburg', 'Jl. Margo Mulyo No.6, Ngupasan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122', 'Berdirinya benteng Vredeburg di Yogyakarta tidak lepas dari lahirnya Kasultanan Yogyakarta. Kraton Kasultanan Yogyakarta pertama dibangun pada tanggal 9 Oktober 1755. Setelah kraton mulai ditempati kemudian dibangun bangunan pendukung lainnya seperti Pasar Gedhe, Masjid, alun-alun dan bangunan pelengkap lainnya. Kemajuan kraton semakin pesat sehingga hal ini membawa kekhawatiran bagi pihak Belanda. Oleh karena itu, pihak Belanda  mengusulkan kepada  Sultan agar diizinkan membangun sebuah benteng di dekat kraton. Pembangunan benteng tersebut dengan dalih agar Beanda dapat menjaga keamanan katon dan sektarnya, akan tetapi dibalik dalih  tresebut, Belanda mempunyai maksud tersendiri yaitu untuk memudahkan Belanda dalam mengontrol segala perkembangan yang terjadi di dalam kraton. Letak benteng yang hanya satu jarak tembak meriam dari kraton dan lokasinya yang menghadap ke jalan utama menuju kraton menjadi indikasi bahwa fungsi benteng dapat dimanfaatkan sebagai benteng strategi, intimidasi, penyerangan dan blokade. Dengan kata lain bahwa berdirinya benteng tersebut dimaksudkan untuk berjaga-jaga apabila sewaktu-waktu Sultan berbalik menyerang Belanda dan berubah memusuhi Belanda.', '10000', '-7.8002345', '110.365778');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
