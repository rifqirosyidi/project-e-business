<?php 
error_reporting(0);
include 'config.php';

$id = $_GET['id'];
$detailed = query("SELECT * FROM pant WHERE id_pant = $id");


	$nama_pembeli = $_POST["nama_pembeli"];
	$nama_produk= $_POST["nama_produk"];
	$nik = $_POST["NIK"];
	$alamat = $_POST["alamat"];
	$no_hp = $_POST["no_hp"];
	$jumlah_pesan = $_POST["jumlah_pesan"];
	$no_rek = $_POST["no_rek"];
	$harga_satuan = $_POST['harga_satuan'];
	$stok = $_POST['stok'];

	if( $jumlah_pesan > $stok ){
		echo "<script> 
		alert('JUmlah Pesanan melebihi stok');
		document.location.href = 'detail-pants.php'; </script>";
		return false;
	}

	$total_harga =  $jumlah_pesan * $harga_satuan;

	if (isset($_POST['beli'])) {
		$query = "INSERT INTO transaksi 
	               VALUES
	             ('', '$nama_pembeli', '$nama_produk',  '$nik', '$alamat', '$no_hp', '$jumlah_pesan', '$no_rek', '$total_harga')
	             ";

	    if ($query) {
	    	echo "<script> 
			alert('Pesanan telah diproses'); 
			</script>";
	    }
	}

   mysqli_query($conn, $query);
 ?>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Retrospect by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
		<link rel="stylesheet" type="text/css" href="style-box.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>

		<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:22%;min-width:300px" id="mySidebar">
		  <a href="javascript:void(0)" onclick="w3_close()"
		  class="w3-bar-item w3-button">Close Menu</a>
		  <a href="#food" onclick="w3_close()" class="w3-bar-item w3-button">Food</a>
		  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">About</a>
		</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    <div class="w3-right w3-padding-16">MakeUp</div>
    <div class="w3-center w3-padding-16">
    	<a href="index.php"><img src="images/logo.png" width="80px" style="filter: invert(70%); width: 60px; height: 60px; cursor:pointer"></a>
    </div>
  </div>
</div>

		<!-- One -->
		<?php foreach ($detailed as $pants) : ?>
			<section id="one" class="wrapper style1" style="background-color: #FFF">
				<div class="inner">
					<article class="feature left">
						<span class="image"><img src="img/pants/<?php echo $pants['nama_pant'] ?>.jpg" alt="" /></span>
						<div class="content">
							<h2><?php echo $pants['nama_pant']; ?></h2>
							<table>
							<tr>
								<td>Harga :</td>
								<td><?php echo $pants['harga']; ?></td>
							</tr>
							<tr>
								<td>Warna :</td>
								<td><?php echo $pants['warna']; ?></td>
							</tr>
							<tr>
								<td>Bahan :</td>
								<td style="text-align: justify;"><?php echo $pants['bahan']; ?></td>
							</tr>
							<tr>
								<td>Stok :</td>
								<td><?php echo $pants['stok']; ?></td>
							</tr>
							</table>
							<ul class="actions">
								<li>
									<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="border: 5px solid #80d4c2; background: #51baa4;">Beli</button>
								</li>
							</ul>
						</div>
					</article>
				</div>
			</section>
		<?php endforeach; ?>

<!-- Modal -->


  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Form Pemesanan</h4>
        </div>
        <div class="modal-body">
        <?php foreach ($detailed as $transaksi ) : ?>
          <form method="POST" action="">
          	<input type="hidden" name="nama_produk" value="<?php echo $transaksi['nama_pant'] ?>">
          	<input type="hidden" name="harga_satuan" value="<?php echo $transaksi['harga'] ?>">
          	<input type="hidden" name="stok" value="<?php echo $transaksi['stok']; ?>">

          	Nama Pembeli<input type="text" name="nama_pembeli" required>
          	Nama Produk<br><p> <?php echo $transaksi["nama_pant"]; ?> </p>
          	NIK<input type="text" name="NIK" required>
          	Alamat<textarea name="alamat" required> </textarea>
          	No HP<input type="text" name="no_hp" required><br>
          	Jumlah Pesan<br><input type="number" name="jumlah_pesan" required><br>
          	No Rekening<input type="text" name="no_rek" required><br>
          	Total Harga/Satuan<br><p>Rp. <?php echo $transaksi['harga']; ?></p>
         	<button type="submit"  style="background: #0089e0;" class="btn btn-default" name="beli">Beli</button>
          </form>
      <?php endforeach; ?>
        </div>
        
      </div>
      
    </div>
  </div>

		<!-- Footer -->
			<footer class="text-center" style="padding: 5px; background: #2d2d30; text-align: center; color: white; font-family: lato light; margin-top: 20px">
			  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP" style="color: white">
			    <span class="glyphicon glyphicon-chevron-up"></span>
			  </a><br><br>
			  <p>Designed By : <a href="#" data-toggle="tooltip" title="Visit w3schools">Us &copy 2019        </a></p> 
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			

	</body>
</html>