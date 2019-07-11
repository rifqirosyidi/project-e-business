<?php 
include "config.php";

 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Beli Beli .com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <img src="images/logo.png" width="50px"><a class="navbar-brand" href="index.php">beli-beli.com</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage"><i class="fas fa-home"></i> HOME</a></li>
        <li><a href="clothes.php"><i class="fas fa-tshirt"></i> CLOTHES</a></li>
        <li><a href="pants.php"><i class="fas fa-bacon"></i> PANTS</a></li>
        <li><a href="makeup.php"><i class="fas fa-magic"></i> MAKEUP</a></li>
        <li><a href="kids.php"><i class="fas fa-child"></i> KIDS</a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/Banner.png" alt="New York" width="1200" height="700">
        <div class="carousel-caption">
          <h3>beli-beli.com</h3>
          <p>Special Price Up to 50% Off</p>
        </div>      
      </div>

      <div class="item">
        <img src="images/Banner2.png" alt="Chicago" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Discover Collection</h3>
          <p>New Product, Fall 2019</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="images/Banner3.png" alt="Los Angeles" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Discount Up To 50% Off</h3>
          <p>Find The Best Quality with The Best Price</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <h3>beli-beli.com</h3>
  <img src="images/logo.png" width="80px" style="filter: invert(100%); padding-bottom: 20px">
  <p>Selamat Datang di <em>beli-beli.com</em></p>
  <p><em>beli-beli.com</em> menyediakan produk-produk yang original dan berkualitas. Berbagai macam produk mulai dari produk kecantikan, baju, kebutuhan anak-anak dan produk lainnya dapat dengan mudah ditemukan di situs jual beli ini. Selain itu, proses transaksi yang mudah serta aman menjadikan situs jual beli <em>beli-beli.com</em> menjadi pilihan dalam belanja online.</p>
  <br>
  <div class="row">
    <div class="col-sm-3">
      <p class="text-center"><strong>Clothes</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="img/clothes/Hoodie Wanita.jpg" class="img-circle person" alt="Random Name" width="255" height="255" style="border: 10px solid #ffa09a">
      </a>
      <div id="demo" class="collapse">
        <p>Temukan Baju Berkualitas dan murah, hanya di</p>
        <p><em>beli-beli.com</em></p>
      </div>
    </div>
    <div class="col-sm-3">
      <p class="text-center"><strong>Pants</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="img/pants/Patagonia Gristone Rock Pants.jpg" class="img-circle person" alt="Random Name" width="255" height="255" style="border: 10px solid #090b457d">
      </a>
      <div id="demo2" class="collapse">
        <p>Temukan celana yang sesuai dengan selera anda
            <p><em>beli-beli.com</em></p>
      </div>
    </div>
    <div class="col-sm-3">
      <p class="text-center"><strong>Make Up</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="img/makeup/Maybelline Color Sensational So Nude Lipstick.jpg" class="img-circle person" alt="Random Name" width="255" height="255" style="border: 10px solid #ffa09a">
      </a>
      <div id="demo3" class="collapse">
          <p>Temukan makeup yang sesuai dengan selera anda
            <p><em>beli-beli.com</em></p>
      </div>
    </div>
    <div class="col-sm-3">
      <p class="text-center"><strong>Kids</strong></p><br>
      <a href="#demo4" data-toggle="collapse">
        <img src="img/kids/Baju Anak Cowok Kemeja Garis Garis Import.jpg" class="img-circle person" alt="Random Name" width="255" height="255" style="border: 10px solid #090b457d">
      </a>
      <div id="demo4" class="collapse">
   <p>Temukan kebutuhan anak yang sesuai dengan selera anda
             <p><em>beli-beli.com</em></p>
      </div>
    </div>
  </div>
</div>

<!-- Container (TOUR Section) -->
<div id="tour" class="bg-1">
  <div class="container">
    <h3 class="text-center">Our Team</h3>    
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="paris.jpg" alt="Rifqi" width="400" height="300">
          <p><strong>Rifqi Rosyidi</strong></p>
          <p>16.51.0010</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="newyork.jpg" alt="Agung" width="400" height="300">
          <p><strong>Agung Prasetyo</strong></p>
          <p>16.51.0012</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="sanfran.jpg" alt="Indra" width="400" height="300">
          <p><strong>Bagus Indra Cahya</strong></p>
          <p>16.51.0002</p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>beli-beli.com</em></p>

  <div class="row">
    <div class="col-md-4">
      <p></p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Malang, Jawa Timur</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +62 334901665</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: support@beli-beli.com</p>
    </div>
    <form>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit" onclick="showPopup()">Send</button>
        </div>
      </div>
    </div>
  </form>
  </div>
  <br>
</div>

<!-- Image of location/map -->

<!-- Footer -->
<footer class="text-center" style="padding: 5px; font-family: lato light">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Designed By : <a href="#" data-toggle="tooltip" title="Visit w3schools">Us &copy 2019        </a></p> 
</footer>

<script>



$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>
