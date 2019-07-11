<?php 
include "config.php";

$jmlDataPerHalaman = 8;
  $dataSiswa = query("SELECT * FROM cloth ORDER BY nama_cloth");
  $jmlTotalData = count($dataSiswa);

  $jmlHalaman = ceil($jmlTotalData / $jmlDataPerHalaman);


  if( isset($_GET["page"])) {   
    $halamanYangAktif = $_GET["page"]; //mendapatkan data halaman di url
  } else {
    $halamanYangAktif = 1;   // Jika diser masuk pertama kali ke halaman ini mka page akan otmtis di set ke page 1
  }

  $awalData = ($jmlDataPerHalaman * $halamanYangAktif) - $jmlDataPerHalaman;

$siswa = query("SELECT * FROM cloth ORDER BY nama_cloth LIMIT 
                      $awalData, $jmlDataPerHalaman");



 ?>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" type="text/css" href="style-box.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
<body>

<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:22%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Close Menu</a>
  <a href="index.php" onclick="w3_close()" class="w3-bar-item w3-button">Home</a>
  <a href="clothes.php" onclick="w3_close()" class="w3-bar-item w3-button">Clothes</a>
  <a href="kids.php" onclick="w3_close()" class="w3-bar-item w3-button">Kids</a>
  <a href="pants.php" onclick="w3_close()" class="w3-bar-item w3-button">Pants</a>
  <a href="makeup.php" onclick="w3_close()" class="w3-bar-item w3-button">Make Up</a>
</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    <div class="w3-right w3-padding-16">Clothes</div>
    <div class="w3-center w3-padding-16">
        <a href="index.php"><img src="images/logo.png" width="80px" style="filter: invert(70%); width: 60px; height: 60px; cursor:pointer"></a>
    </div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food" >
    <?php foreach ($siswa as $row) : ?>
      <div class="w3-quarter" style="heigth: 500px">
        <a style="text-decoration: none" href="detail-clothes.php?id=<?php echo $row['id_cloth'] ; ?>">
        <img src="img/clothes/<?php echo $row['nama_cloth'] ?>.jpg" alt="Sandwich" style="width:100%">
        <h3 style="font-family: lato light"><?php echo $row["nama_cloth"]; ?></h3>
        <p>Harga : Rp. <?php echo $row["harga"]; ?></p>
        </a>
      </div>
    <?php endforeach; ?>
    
  </div>
<div style="text-align: center;">
  <?php for ($i=1; $i <= $jmlHalaman ; $i++) : ?>
    <?php if ( $i == $halamanYangAktif ) : ?>
      <a class="w3-bar-item w3-black w3-button" style="background-color: #353535; font-weight: bold;" href="?page=<?php echo $i; ?>"><?php echo $i; ?></a>
    <?php else : ?>
      <a class="w3-bar-item w3-black w3-button" href="?page=<?php echo $i; ?>"><?php echo $i; ?></a>
      <?php endif; ?>
    <?php endfor; ?>
</div>  
  <!-- Pagination -->
  <!-- <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div> -->
<!-- End page content -->
</div>

<footer class="text-center" style="padding: 5px; background: #2d2d30; text-align: center; color: white; font-family: lato light; margin-top: 20px">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP" style="color: white">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Designed By : <a href="#" data-toggle="tooltip" title="Visit w3schools">Us &copy 2019</a></p> 
</footer>

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>

</body>
</html>
