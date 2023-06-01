<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="A3.Help" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Designers</title>
        <link rel="icon" type="image/png" href="SG LOGO.png" />

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}

.sglogo{
    width:165px;
    height:160px;
}

.paragraph{
    margin-left:340px;
    font-family:Poppins;
    font-size:22px;
    font-weight:200;
}
.sc
</style>
</head>
<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-black w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
      <a href="Home (USER).aspx"><img class="sglogo" src="SG LOGO.png" /></a><br />
  </div>
  <div class="w3-bar-block">
    
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-black w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span></span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
    <h1 class="w3-jumbo"><b>STEINS GATE.</b></h1>
    <h1 class="w3-xxxlarge w3-text-blue"><b>Help Page.</b></h1><h7 class="w3-large w3-text-blue"><b>(Click on the logo to return to the homepage.)</b></h7>
    <hr style="width:300px;border:5px solid dodgerblue" class="w3-round">
  </div>


  <!-- The Team -->
 <!-- The Team -->
  </div>
<div class="paragraph">
    <p>Welcome to Steins Gate! Once you have logged in or signed up, you will find yourself on the Home page. Click on the explore button.</p><br />
    <img src="Home.PNG" alt="" style="width:900px; height:500px;" /><br /> After that, you will be taken to the Categories page. Click on whatever category you want to shop in. 
    <img src="Categories.PNG" alt="" style="width:900px; height:500px;" /><br />
    <p>Peruse through the vast amount of stock displayed. Once you find something you like, hover over it and click on the Add To Cart button. Now remember, Steins Gate only offers one product at a time. The website is a work in progress. You are also unable to increase the quantity of your product. Click on the Cart button to proceed to your Cart.</p>
    <img src="Cart.PNG" alt="" style="width:900px; height:500px;" /><br />
    <p>On this page, you're able to remove the item you have picked, return to the catalogue and pick a new item. If you want to proceed with your purchase, click on the checkout button. </p>
    <img src="Cart Checkout.PNG" alt="" style="width:900px; height:500px;" /><br />
    <p>Enter the name and address of the person that will receive this package. Be it you or someone else. Click on 'Complete Purchase' to complete your purchase.</p>
    <img src="Checkout.PNG" alt="" style="width:900px; height:500px;" /><br />
    <p>The Orders page, where you will be able to view your pending orders. </p>
    <img src="Orders.PNG" alt="" style="width:900px; height:500px;" />
    
</div>


</body>
</html>
