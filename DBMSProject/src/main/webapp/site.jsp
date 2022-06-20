<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Painter's Palette</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
</head>
<body class="w3-black">

<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <!-- Avatar image in top left corner -->
  <img src="pictures/logo13.png" style="width:100%">
  <a href="#" class="w3-bar-item w3-button w3-padding-large w3-black">
    <img src="pictures/pinkhouse.png" style="width:100%">
    <p>HOME</p>
  </a>
  <a href="#about" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <img src="pictures/image.png" style="width:99%">
    <p>PLACE ORDER</p>
  </a>
  <a href="#colors" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <img src="pictures/pal13.png" style="width:99%">
    
    <p>COLORS</p>
  </a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <img src="pictures/reg.png" style="width:99%">
    <p>TRACK ORDER</p>
  </a>
</nav>

<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
  <div class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
    <a href="#" class="w3-bar-item w3-button" style="width:25% !important">HOME</a>
    <a href="#about" class="w3-bar-item w3-button" style="width:25% !important">PLACE ORDER</a>
    <a href="#photos" class="w3-bar-item w3-button" style="width:25% !important">COLORS</a>
    <a href="#contact" class="w3-bar-item w3-button" style="width:25% !important">TRACK ORDER</a>
  </div>
</div>

<!-- Page Content -->

<div class="w3-padding-large" id="main">
  <!-- Header/Home -->
<div class="w3-main" style="margin-left:15px;margin-right:40px">

  <style>
.parallax {
  /* The image used */
  background-image: url("pictures/home.jpg");

  /* Set a specific height */
  min-height: 500px;

  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>


 <!-- Header -->
  <div class="w3-container" style="margin-top:20px" id="showcase">
    <h1 class="w3-jumbo"><b>PAINTER'S PALETTE</b></h1>
    <h2 class="w3-xxxlarge w3-text-red"><b>Founded By: DC and AR</b></h2>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  <img src="pictures/POC.jpg" alt="Italian Trulli">
  
  <div class="column">
    <img src="pictures/66.jpg.jpeg" alt="Snow" style="width:100%">
  </div>
  
  


  <!-- PLACE ORDER SECTION -->

  <div class="w3-content w3-justify w3-text-white w3-padding-64" id="about">
    <h2 class="w3-jumbo">PLACE ORDER</h2>
    <hr style="width:200px" class="w3-opacity">

    <form action = PlaceOrderServ target="_blank" method = Post id = "placeOrder">
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Name"  name = "txtName"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Email"  name = "txtEmail"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Color"  name = "txtColor"></p>
      <p><input class="w3-input w3-padding-16" type="number" placeholder="Quantity (in gallons)"  name = "txtQuantity"></p>
      <p>
        <button class="w3-button w3-light-grey w3-padding-large" type="submit">
          <i class="fa fa-paper-plane"></i> PLACE ORDER
        </button>
      </p>
      
    </form>
  <!-- End Contact Section -->
  </div>
    <h3 class="w3-padding-16 w3-text-light-grey">CUSTOMER RATINGS</h3>
    <p class="w3-wide">COLOR QUALITY</p>
    <div class="w3-white">
      <div class="w3-dark-grey" style="height:28px;width:95%"></div>
    </div>
    <p class="w3-wide">SERVICE CHARGE</p>
    <div class="w3-white">
      <div class="w3-dark-grey" style="height:28px;width:85%"></div>
    </div>
    <p class="w3-wide">LOCATIONS</p>
    <div class="w3-white">
      <div class="w3-dark-grey" style="height:28px;width:80%"></div>
    </div><br>
    
    <div class="w3-row w3-center w3-padding-16 w3-section w3-light-grey">
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">11+</span><br>
        Partners
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">55+</span><br>
        Projects Done
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">15+</span><br>
        MNC Clients
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">150+</span><br>
        Happy Clients
      </div>
    </div>
    
    </div>
    
   
  



<!-- Header -->
  <div class="w3-content w3-justify w3-text-white w3-padding-64" id="colors">
    <h2 class="w3-jumbo" align = "center">COLOR RANGE</h2>
    <hr style="width:950px" class="w3-opacity">   
  </div>


  <style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 20%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>


<div class="row">
  <div class="column">
    <img src="pictures/1c.png" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/2c.png" alt="Forest" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/3c.png" alt="Mountains" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/4c.png" alt="Mountains" style="width:100%">
  </div>
    <div class="column">
    <img src="pictures/5c.png" alt="Mountains" style="width:100%">
  </div>
</div>

<div class="row">
  <div class="column">
    <img src="pictures/6c.png" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/7c.png" alt="Forest" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/8c.png" alt="Mountains" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/9c.png" alt="Mountains" style="width:100%">
  </div>
    <div class="column">
    <img src="pictures/10c.png" alt="Mountains" style="width:100%">
  </div>
</div>
<div class="row">
  <div class="column">
    <img src="pictures/11c.png" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/12c.png" alt="Forest" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/13c.png" alt="Mountains" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/14c.png" alt="Mountains" style="width:100%">
  </div>
    <div class="column">
    <img src="pictures/15c.png" alt="Mountains" style="width:100%">
  </div>
</div>
<div class="row">
  <div class="column">
    <img src="pictures/16c.png" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/17c.png" alt="Forest" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/18c.png" alt="Mountains" style="width:100%">
  </div>
  <div class="column">
    <img src="pictures/19c.png" alt="Mountains" style="width:100%">
  </div>
    <div class="column">
    <img src="pictures/20c.png" alt="Mountains" style="width:100%">
  </div>
</div>














  <!-- Contact Section -->
  <div class="w3-padding-64 w3-content w3-text-white" id="contact">
    <h2 class="w3-jumbo">TRACK ORDER</h2>
    <hr style="width:400px" class="w3-opacity">



    <form action=TrackOrderServ target="_blank" method = Get id = "trackOrder">
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-padding-16" type="Number" placeholder="TrackingID"  name = "TrackingID"></p>
      
      <p>
        <button class="w3-button w3-light-grey w3-padding-large" type="submit" >
         
          <i class="https://www.google.co.in/"></i> TRACK ORDER
        </button>
      </p>
    </form>
  <!-- End Contact Section -->
  </div>
  
    <!-- Footer -->
  <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
   
  <!-- End footer -->
  </footer>

<!-- END PAGE CONTENT -->
</div>

</body>
</html>