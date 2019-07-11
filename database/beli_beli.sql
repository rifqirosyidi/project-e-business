-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2019 at 06:55 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beli_beli`
--

-- --------------------------------------------------------

--
-- Table structure for table `cloth`
--

CREATE TABLE `cloth` (
  `id_cloth` int(10) NOT NULL,
  `nama_cloth` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `warna` varchar(30) NOT NULL,
  `bahan` varchar(500) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cloth`
--

INSERT INTO `cloth` (`id_cloth`, `nama_cloth`, `harga`, `ukuran`, `warna`, `bahan`, `stok`) VALUES
(1, 'Emporio Dark Grey Kemeja Pria Premium', 199000, 'M', 'Abu-abu', 'Emporio Dark Grey dibuat dengan detil yang rapi menggunakan bahan chambray yang pastinya sangat nyaman untuk digunakan. Kemeja pria premium ini sangat elegan.', 10),
(2, 'Cardenio Blue Navy Kemeja Pria Premium', 219000, 'M', 'Blue Navy', 'Berbahan baby canvas dengan kualitas tinggi menjadi keunggulan Cardenio Blue Navy yang dilengkapi dengan ukuran slim fit.. Kemeja pria lengan panjang ini cocok digunakan untuk berbagai kegiatan.\r\n\r\n', 10),
(3, 'Cardenio Dark Green Kemeja Pria Premium', 219000, 'S', 'Dark Green', 'Berbahan baby canvas dengan kualitas tinggi menjadi keunggulan Cardenio Dark Green yang dilengkapi dengan ukuran slim fit.. Kemeja pria lengan panjang ini cocok digunakan untuk berbagai kegiatan.', 5),
(4, 'Emporio Azule Pattern Kemeja Pria Premium', 199000, 'M', 'Biru Corak', 'Berbahan katun dengan kualitas tinggi menjadi keunggulan Emporio Azule Pattern. Bahannya yang tepat akan membuat Anda merasa nyaman saat mengenakannya.\r\n\r\n', 5),
(5, 'Quixanno Light Blue Kemeja Pria Lengan Pendek', 199000, 'L', 'Light Blue', 'Quixanno Light Blue terbuat dari bahan Oxford dan dibuat dengan detail yang sangat rapi. Kemeja pria premium ini memiliki keunggulan di jahitan, desain, dan warna serta bahan yang mendapatkan garment washing dalam tahap produksi.', 9),
(6, 'Emporio Blanco Pattern Kemeja Pria Premium', 199000, 'XL', 'Putih Corak', 'Berbahan katun dengan kualitas tinggi menjadi keunggulan Emporio Blanco Pattern. Kemeja ini dilengkapi dengan corak batik dengan desain yang sangat elegan.', 9),
(7, 'Kemeja Lengan Pendek Gray', 199000, 'XL', 'Abu-abu', 'Menggunakan bahan chambray yang pastinya sangat nyaman untuk digunakan. Kemeja pria premium ini sangat elegan.', 5),
(8, 'Sweater Pria', 259000, 'L', 'Putih', 'Katun Kombed ( Combed Cotton )', 5),
(9, 'Blouse Wanita', 125000, 'M', 'Merah Maroon', 'Kain Katun yang lembut', 5),
(10, 'Jaket Wanita Musim Dingin', 250000, 'L', 'Dark Blue', 'Bahan Baby Terry', 5),
(11, 'Blouses Ladies Top', 250000, 'L', 'Dark Blue', 'Bahan Kain Lembut', 3),
(12, 'Blouses Ladies Top', 150000, 'L', 'Pink Soft', 'Bahan Combad yang halus', 10),
(13, 'Outer Batik', 125000, 'L', 'Hijau Corak Batik', 'Bahan yang halus', 5),
(14, 'Baju Muslimah', 200000, 'L', 'Abu-abu Corak', 'Bahan yang halus', 10),
(15, 'Baju Wanita', 150000, 'L', 'Coklat Muda', 'Bahan yang halus', 10),
(16, 'Baju Wanita Putih 2', 200000, 'L', 'White Bone', 'Bahan yang halus', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE `kids` (
  `id_kids` int(10) NOT NULL,
  `nama_kids` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `stok` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`id_kids`, `nama_kids`, `harga`, `deskripsi`, `stok`) VALUES
(1, 'Baju Laki Laki Biru', '49.900', 'Bahan Kaos katun yang adem, menyerap keringat dan nyaman untuk bayi.\r\nUkuran : Panjang Baju 34 cm, Lebar Dada 26cm Panjang Celana 26cm (3-15 Bulan)\r\n\r\n', 10),
(2, 'Baju Anak Cowok Kemeja Garis Garis Import', '136.000', '100% Brand New and High Quality\r\nNyamman digunakan da desaign trendi\r\nEstimasi untuk anak 2-3 tahun\r\n', 5),
(3, 'Baju Anak Cool Army Big Size', '75.900', 'Bahan Baju : Kaos Katun. Celana+Rompi+Topi bahan campuran.\r\nHarga per set\r\nMohon cantumkan pilihan ukuran.\r\n\r\nUkuran 20 Panjang Baju 39 cm, Lebar Dada 34 cm, Panjang Celana 35 cm (4.5 - 5 Tahun) \r\nUkuran 22 : Panjang Baju 40cm, Lebar Dada 35 cm, Panjang Celana 37 cm (5 - 6 Tahun) \r\nUkuran 24 : Panjang Baju 43cm, Lebar Dada 36 cm, Panjang Celana 40 cm (6 - 6.5 Tahun)', 15),
(4, 'Baju Bayi Kuning Berkerah', '62.500', 'Bahan kaos Katun yang lembut, adem dan menyerap keringat. \r\n\r\nUkuran : Panjang Baju 35 cm, Lebar Dada 28 cm, Panjang Celana 28 cm ( 1-2 Tahun)', 0),
(5, 'Baju Bayi Laki Laki Setelan Tuxedo Howard', '54.000', 'Ukuran : Panjang Baju 34 cm, Lebar Dada 26 cm, Panjang Celana 29 cm (3-12 Bulan)\r\nSetelan Kemeja Bayi , Rompi Sambung, dasi \r\nBahan katun yg adem dan nyaman untuk Anak Bayi.', 5),
(6, 'Baju Pesta Bayi Romper Tuxedo Lucky Cream', '79.000', 'Bahan Kaos dari katun yang adem dan menyerap keringat, sangat nyaman untuk bayi \r\n\r\nUkuran 1 : Panjang Baju 46 cm, Lebar Dada 26 cm, Tinggi Baju 37 cm (2-7 Bulan)\r\n\r\nUkuran 2: Panjang Baju 48 cm, Lebar Dada 27 cm, Tinggi Baju 39 cm (7-12 Bulan) \r\n\r\nUkuran 3 : Panjang Baju 50 cm, Lebar Dada 27.5 cm, Tinggi Baju 42 cm (12-20 Bulan)', 10),
(7, 'Baju Bayi Kostum Batman', '50.000', 'Bahan Kaos katun yang adem, mneyerap keringat dan nyaman untuk bayi.\r\n\r\nUkuran : Panjang Baju 34 cm, Lebar Dada 26cm Panjang Celana 26cm (6-15 Bulan)', 9),
(8, 'Baju Bayi Donald Tie', '50.000', 'Bahan Kaos katun yang adem, mneyerap keringat dan nyaman untuk bayi.\r\n\r\nUkuran : Panjang Baju 34 cm, Lebar Dada 26cm Panjang Celana 26cm (3-15 Bulan)', 10),
(9, 'Robocar Poli Transform Set 6 in 1 Mainan Anak Mobil Robot Transformer', '220.000', 'Ukuran produk : Tinggi 10 cm\r\n1 set terdiri dari 6 Karakter Robocar Poli : \r\nPoli (Biru) \r\nRoy (Merah) \r\nHeli (Hijau) \r\nAmber (pink) \r\nBucky (Kuning) \r\nMark (Oren)\r\nMaterial produk berbahan plastik PVC \r\nBagian tubuh dapat digerak dan dirubah menjadi robot / mobil / heli dan sebaliknya', 10),
(10, 'Mainan Doctor Kit Sset Dokter Toy Set Anak ', '149.000', 'Mainan Peralatan Dokter (Doctor Set) , Ada Berbagai Macam Peralatan Dokter , Cocok Buat Si Kecil Yang Suka Bermain Peran Dokter.\r\n\r\n*Ada 3Alat Yang Bisa Menyala (Baterai Bawaan)\r\n* Uk Kemasan 36x24x5 cm\r\n* Untuk Anak Usia 3 Tahun Keatas\r\n*1 Set Berisi :\r\n- Senter (Bisa Nyala)\r\n-Stetoskop (Nyala & Bunyi)\r\n- Alat Periksa Gigi (Nyala)\r\n- Suntikan,Kacamata Dll Seperti Gambar', 10),
(11, 'Kitchen set Mainan anak Masak Masakan', '170.000', 'Mainan dapur-dapuran. Ada kompor dan oven menggunakan baterai yang bisa menyala lampu seakan-akan api kompor dan suara memasak.dapat dibawa-bawa dengan mudah, karena dapat di ubah menjadi Koper\r\nMenggunakan batere AA 3bh untuk suara dan lampu pada oven dan kompor. Ada suara orang menggoreng dan merebus, juga suara timer oven. Lengkap dengan peralatan dapur, panci, wajan, perlengkapan cuci piring,dll.\r\n\r\nUkuran : 42 X 25 X 65,5 cm\r\n', 10),
(12, 'LILIN MAINAN PLASTISIN FUN DOH SUSHI SET PLAY DOH', '30.000', 'Fundoh Sushi set, varian fundoh yang diciptakan untuk melengkapi dapur masak kamu dalam membuat sebuah Sushi yang lezat. dikemas dengan box yang berwarna kuning membuat tampilan banyak digemari oleh anak. tidak hanya itu didalamnya terdapat 1 set cetakan sushi dan 3 doh warna. semuanya disediakan untuk mendukung kamu menciptakan makanan sushi yang lezat.\r\n', 5),
(13, 'BONEKA BARBIE FASHION FAIRY', '100.000', 'Boneka Barbie yang cantik lengkap dengan baju dan assesoris Cocok untuk teman bermain siKecil\r\nTinggi boneka 27cm\r\nvolume trik 2kg.', 3),
(14, 'TAYO LITTLE BUS GARASI PULL BACK 4 in 1 SET', '250.000', 'Mainan Tayo Bus Garage 4 in 1 set \r\nPullback Garasi Bis Mobil. Pintu Bus bisa dibuka\r\nMainan 1 set terdiri dari :\r\nTayo ( Biru ) + Garasi pelontar\r\nLani ( kuning ) + Garasi pelontar\r\nRogi ( Hijau ) + Garasi pelontar\r\nGani ( Merah ) + Garasi pelontar\r\n\r\nUkuran Garasi : 12 x 8.5 x 5 cm\r\nUkuran Bus : 7 x 4 x 4.5 cm\r\nMaterial : Plastik PVC Aman untuk anak', 10),
(15, 'Mainan Kereta Api', '130.000', 'Mainan kereta api yang sangat cocok untuk menemani waktu bermain anak Anda.\r\nAnda juga mendapat track kereta api yang dapat dirakit sesuai dengan keinginan Anda.\r\nDitenagai menggunakan baterai untuk menyalakan mainan kereta api ini.\r\nProduct Size: 21.5 x 4 x 6 cm\r\nTrack Size: 54 x 25 cm\r\n', 5),
(16, 'Lego Classic Creative Builder Box', '330.000', 'Mainan blok dan puzzle\r\nDidesain fun dan playful\r\nUntuk usia 4 tahun ke atas\r\nDirancang untuk meningkatkan kreativitas dan imajinasi anak\r\nAman untuk anak', 5);

-- --------------------------------------------------------

--
-- Table structure for table `makeup`
--

CREATE TABLE `makeup` (
  `id_makeup` int(10) NOT NULL,
  `nama_makeup` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `guna` varchar(1000) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makeup`
--

INSERT INTO `makeup` (`id_makeup`, `nama_makeup`, `harga`, `guna`, `stok`) VALUES
(1, 'GARNIER Sakura White Pinkish Radiance & Smooth Pores Day Cream', '40.000', 'Ekstrak alami sakura dan Pore Smoothing Serum di dalamnya efektif menghaluskan pori wajah untuk kulit mulus, cerah merona. \r\nUVA/UVB Filternya melindungi dari sinar UV agar kulit tak kembali gelap\r\nCocok untuk tipe kulit normal-berminyak dan sensitif karena sudah teruji klinis', 20),
(2, 'Lipstick Set Long Lasting Velvet Lips', '150.000', '100% baru dan bahan berkualitas tinggi\r\nBibir Anda akan terlihat penuh sensual yang siap menggoda siapa pun.\r\n\r\nSpesifik:\r\n1. Anda dapat memilih 12 warna\r\n2. Kualitas Tinggi, multicolor\r\n3. Tahan lama, tahan air, tidak pudar', 15),
(3, 'Maybelline Color Sensational So Nude Lipstick', '91.700', 'Lipstik dengan hasil warna nude yang natural, fresh dan tidak pucat di bibir. Dengan formula yang menutrisi bibir agar tetap lembap dan sehat.\r\n\r\nTampil natural dan fresh dengan lipstik Color Sensational So Nude yang mengandung coral pigment untuk hasil warna nude yang segar dan natural di bibir serta kandungan honey nectar yang menutrisi bibir agar tetap lembap dan sehat.', 10),
(4, 'Flawless Ultra 32 Eyeshadow Palette', '200.000', '\r\nRiasan Mata Flawless Ultra 32 Eye Revolution dari Makeup Revolution adalah palet eyeshadow profesional yang sempurna. Ia memiliki semua yang Anda butuhkan dalam satu palet koleksi yang praktis! Ada 32 warna dengan perpaduan besar antara warna shimmer dan matte yang dapat dikenakan dan eksperimental untuk menciptakan tampilan dan permainan apa pun, untuk kinerja dan nilai yang luar biasa!\r\n\r\nManfaat:\r\nUltra eyeshadows dikemas penuh dengan pigmen\r\nTermasuk cermin berukuran besar\r\nKoleksi ultra 32 nude dan nuansa siang dan malam alami', 10),
(5, 'MAYBELLINE Fit Me Matte Poreless Foundation', '119.000', 'Fit Me! Matte + Poreless Foundation dengan formula ultra-lightweight. The ultimate natural skin fit! ingin punya wajah tanpa pori-pori? ini dia solusinya! Fit Me! Matte + Poreless Foudation adalah foundation tahan lama untuk kulit berminyak dengan formula ringan ultra-lightweight. Mengandung micro-powder yang mampu menyerap minyak berlebih untuk hasil matte dan tampak tidak berpori. The ultimate natural skin fit! Formula ringan cocok untuk dipakai sehari-hari. Tahan lama dan tersedia dalam 6 shades. Mampu meratakan tekstur wajah untuk jenis kulit normal cenderung berminyak.\r\n\r\n- Foundation dengan formula yang ringan\r\n- Mampu menyerap minyak berlebih pada wajah\r\n- Hasil matte, tampak tidak berpori, dan tahan lama', 10),
(6, 'Wardah Everyday Cheek and Lip Tint', '44.000', 'Lip tint ini mengandung tujuh essence natural yang diklaim dapat memberi hidrasi pada bibir. Formulanya juga tidak akan membuat bibir menjadi kering serta tidak masuk ke dalam garis-garis bibir. Menariknya lagi, produk ini punya hasil akhir glossy yang sangat cantik. Meskipun hasilnya glossy, Anda tak perlu khawatir karena warnanya tidak mudah transfer. Selain itu, produk ini juga punya tekstur yang ringan dan mudah diratakan pada bibir', 10),
(7, 'HYPERCURL MASCARA', '69.000', 'Maskara dengan formula untuk melentikkan dan menebalkan butu mata hingga 4 kali.\r\n\r\nKelebihan :\r\n- 4X lebih tebal\r\n\r\n- Lentik Natural\r\n\r\n- Smudge Proof\r\n\r\n- Waterproof\r\n\r\n- Tahan hingga 24 Jam\r\n\r\n- Tahan 24 jam*\r\n\r\n- Waterproof \r\n', 10),
(8, 'Wardah A Series Blush On', '60.000', 'Blush on palette\r\nFormula microcoated particle dan mengandung moisturizer\r\n2 Warna vibrant\r\nUntuk tampilan akhir pipi dengan matte finish yang menawan dan tahan lama\r\nColor tone : A series (Pink, maroon)', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pant`
--

CREATE TABLE `pant` (
  `id_pant` int(10) NOT NULL,
  `nama_pant` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `warna` varchar(30) NOT NULL,
  `bahan` varchar(500) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pant`
--

INSERT INTO `pant` (`id_pant`, `nama_pant`, `harga`, `warna`, `bahan`, `stok`) VALUES
(1, 'Sweat Long Skirt', '150.000', 'Abu Abu', '72% Cotton, 28% Polyester/ Rib: 82% Cotton, 18% Polyester', 5),
(2, 'WOMEN 2 Way Long Skirt', '249.000', 'Abu Abu', '48% Polyester, 48% Rayon, 4% Spandex', 9),
(3, 'Women Front Button', '165.000', 'White Bone', '56% Cotton, 41% Polyester, 3% Spandex/ Lining: 100% Polyester', 5),
(4, 'Red Pleated Skirt', '290.000', 'Merah Maroon', 'Top\r\nTwill\r\nGathered\r\nButton-fastening keyhole at back\r\nNon-stretchy fabric\r\nHand wash or dry clean\r\nImported', 5),
(5, 'Black Diamond Credo Pants', '150.000', 'Abu Abu', 'Bahan Katun organik\r\nDua saku depan, dua saku belakang dan slot sikat di saku belakang kanan\r\nFit: Santai\r\nUkuran: 28-38', 5),
(6, 'ALPINE LIGHT PANTS Women', '245.000', 'Pink Soft', 'Bahan : 85% nylon, 15% elastane\r\nNyaman digunakan\r\n', 3),
(7, 'Patagonia Gristone Rock Pants', '125.000', 'Forge Gray', 'Terbuat dari bahan cotton yang lembut yang dicampur polyster\r\nKain nyaman serta bebas bau\r\nKain anti mikroba dan anti air', 5),
(8, 'Patagonia Venga Rock Pants', '200.000', 'Abu Abu', 'Bahan dari coton serta polyester yang dicampur spandex\r\nAnti Mikroba\r\nNyaman digunakan setiap hari', 10);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(10) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `NIK` int(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `jumlah_pesan` int(30) NOT NULL,
  `no_rek` varchar(100) NOT NULL,
  `total_harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `nama_pembeli`, `nama_produk`, `NIK`, `alamat`, `no_hp`, `jumlah_pesan`, `no_rek`, `total_harga`) VALUES
(1, '', '', 0, '', '', 0, '', 0),
(2, '', '', 0, '', '', 0, '', 0),
(3, '', '', 0, '', '', 0, '', 0),
(4, '', '', 0, '', '', 0, '', 0),
(5, '', '', 0, '', '', 0, '', 0),
(6, '', '', 0, '', '', 0, '', 0),
(7, '', '', 0, '', '', 0, '', 0),
(8, 'fa', 'Baju Wanita', 0, ' as', 'fsda', 1, 'sdaf', 150000),
(9, 'dfaf', 'Cardenio Blue Navy Kemeja Pria Premium', 31, ' dfa', '213', 2, '14234', 438000),
(10, '', '', 0, '', '', 0, '', 0),
(11, '', '', 0, '', '', 0, '', 0),
(12, 'fad', 'Emporio Blanco Pattern Kemeja Pria Premium', 0, 'fsaf ', 'fa', 2, '121', 398000),
(13, 'Agung', 'Emporio Dark Grey Kemeja Pria Premium', 26788, ' Malang', '09857889', 2, '87676767', 398000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cloth`
--
ALTER TABLE `cloth`
  ADD PRIMARY KEY (`id_cloth`);

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`id_kids`);

--
-- Indexes for table `makeup`
--
ALTER TABLE `makeup`
  ADD PRIMARY KEY (`id_makeup`);

--
-- Indexes for table `pant`
--
ALTER TABLE `pant`
  ADD PRIMARY KEY (`id_pant`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cloth`
--
ALTER TABLE `cloth`
  MODIFY `id_cloth` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
  MODIFY `id_kids` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `makeup`
--
ALTER TABLE `makeup`
  MODIFY `id_makeup` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pant`
--
ALTER TABLE `pant`
  MODIFY `id_pant` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
