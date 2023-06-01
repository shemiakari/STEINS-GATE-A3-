<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home (ADMIN).aspx.cs" Inherits="A3.Home__ADMIN_" %>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
      <link rel="icon" type="image/png" href="SG LOGO.png" />
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins"/>

<style>
@import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,800');

@media (min-width: 500px) {
  .col-sm-6 {
    width: 50%;
  }
}
html, body {
  height: 100%;
  min-height: 18em;
  background-color:black;
  font-family:Poppins;
}

.frontend-side {
  background-image: linear-gradient(
      rgba(255, 0, 0, 0.5),
      rgba(255, 0, 0, 0.5)
    ),  url("https://www.liveabout.com/thmb/WumrUmBV9QYpT9zYO7PJ4TRy7IE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/shopkeeper-explaining-a-selection-of-denim-to-customer-in-mens-clothing-boutique-814558344-efe16f92599a41af9ba3a1883f83b678.jpg");
}

.uiux-side {
  background-image: linear-gradient(
      rgba(0, 15, 200, 0.5),
      rgba(0, 15, 200, 0.5)
    ), url("https://static.dezeen.com/uploads/2016/01/seibu-shibuya-nendo-fashion-hat-store-interior-tokyo-japan_dezeen_936_2.jpg");
}

.split-pane {
  padding-top: 1em;
    margin-top:-20px;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  height: 50%;
  min-height: 9em;
  font-size: 2em;
  color: white;
  font-family: 'Poppins', sans-serif;
	font-weight:300;
;
}
@media(min-width: 500px) {
  .split-pane {
    padding-top: 2em;
    height: 100%;
  }
}
.split-pane > div {
  position: relative;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
  text-align: center;
}
.split-pane > div .text-content {
  line-height: 1.6em;
  margin-bottom: 1em;
}
.split-pane > div .text-content .big {
  font-size: 2em;
}
.split-pane > div img {
  height: 1.3em;
}
@media (max-width: 500px) {
  .split-pane > div img {
    display:none;
  }
}
.split-pane button, .split-pane a.button {
  font-family: 'Open Sans', sans-serif;
	font-weight:800;
  background: none;
  border: 1px solid white;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
  width: 15em;
  padding: 0.7em;
  font-size: 0.5em;
  -moz-transition: all 0.2s ease-out;
  -o-transition: all 0.2s ease-out;
  -webkit-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  text-decoration: none;
  color: white;
  display: inline-block;
	cursor: pointer;
}
.split-pane button:hover, .split-pane a.button:hover {
  text-decoration: none;
  background-color: white;
  border-color: white;
	cursor: pointer;
}
.uiux-side.split-pane button:hover, .split-pane a.button:hover {
  color: violet;
}
.frontend-side.split-pane button:hover, .split-pane a.button:hover {
  color: blue;
}

#split-pane-or {
  font-size: 2em;
  color: white;
  font-family: 'Open Sans', sans-serif;
  text-align: center;
  width: 100%;
  position: absolute;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
}
@media (max-width: 925px) {
  #split-pane-or {
    top:15%;
  }
}
#split-pane-or > div img {
  height: 2.5em;
}
@media (max-width: 500px) {
  #split-pane-or {
    position: absolute;
    top: 50px;
  }
  #split-pane-or > div img {
    height:2em;
  }
}
@media(min-width: 500px) {
  #split-pane-or {
    font-size: 3em;
  }
}
.big {
  font-size: 2em;
}

#slogan {
  position: absolute;
  width: 100%;
  z-index: 100;
  text-align: center;
  vertical-align: baseline;
  top: 0.5em;
  color: white;
  font-family: 'Poppins', sans-serif;
  font-size: 1.4em;
}
@media(min-width: 500px) {
  #slogan {
    top: 5%;
    font-size: 1.8em;
  }
}
#slogan img {
  height: 0.7em;
}
.bold {
	text-transform:uppercase;
}
.big {
	font-weight:800;
}

    
    
 /*=============*/
    
:root{
    --white-color: black;
    --light-color: white;
    --dark-color: blue;
    --primary-color: blue;
}
    .navbar {
  background-color: black;
  color: white;
  padding: 10px;
  width: 100%;
font-family: Poppins;
font-weight: 400;
        height: 70px;
}

.navbar .logo {
  float: left;
  color: white;
  font-weight: 800;
  margin-right: 20px;
}
/*=== USERNAME =====*/
.navbar .username {
  float: left;
  list-style-type: none;
  margin: 0;
  padding: 0;
    margin-right: 50px;
    margin-top: 11px;
    font-size:16px;
}

.navbar .username li {
  display: inline-block;
}
/*END*/
.navbar .list-items {
  float: right;
  list-style-type: none;
  margin: 0;
  padding: 0;
    margin-right: 140px;
    margin-top: 11px;
}

.navbar .list-items li {
  display: inline-block;
  margin-left: 10px;
}
    .navbar .list-items li:nth-child(1) {
        color: var(--primary-color);
        font-weight: bolder;
    }


.navbar .list-items li a {
  color: white;
  text-decoration: none;
  font-weight: 400;
font-size: 16px;
    margin-left: 120px;
        text-transform: uppercase;

}
    
    
    .navbar .list-items li a:hover {
            color: var(--primary-color);

    }
    
 /* Media query for medium screens */
@media screen and (min-width: 600px) {
    navbar {
        padding: 0rem;
    }

    navbar .list items {
        display: flex;
        gap: 2rem;
    }

    nav .list-items li a {
        background: transparent;
    }
}
 
.sglogo{
    width:65px;
    height:60px;
    margin-left:60px;
    margin-top:-6px;
}
.sglogo:hover{
    
}
</style>
</head>
<body>
<!-- Add the navbar -->
<div class="navbar">
  <div class="logo"><img class="sglogo" src="SG LOGO.png" /></div>
    <ul class="username">
        <li>Welcome Administrator: <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label></li>
        
    </ul>
  <ul class="list-items">
    <li><a href="#">Home</a></li>
    <li><a href="#">Projections</a></li>
    <li><a href="#">Help</a></li>
    <li><a href="#" onclick="myFunction()">Log Out</a></li>
  </ul>
</div>
<div class='split-pane col-xs-12 col-sm-6 uiux-side'>
  <div>
    <div class='text-content'>
      <div class="bold">Keep track of</div>
      <div class='big'>DEPARTMENTS</div>
    </div>
    <button>
      DEPARTMENTS
    </button>
  </div>
</div>
<div class='split-pane col-xs-12 col-sm-6 frontend-side'>
  <div>
    <div class='text-content'>
      <div class="bold">Keep track of </div>
      <div class='big'>EMPLOYEES</div>
    </div>
    <a class='button'>
EMPLOYEES    </a>
  </div>
</div>
<div id='split-pane-or'>
  <div>
    <img src='SG Logo.png'>
  </div>
</div>
<script>
    function myFunction() {
        let text;
        if (confirm("Are you sure you want to log out?")) {
            window.location.href = "Log In.aspx";
        } else {
            alert("Good choice!");
        }
        document.getElementById("demo").innerHTML = text;
    }
</script>
</body>
</html>



