<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="A3.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Explore</title>
    <link rel="icon" type="image/png" href="SG LOGO.png" />
    <style>
        :root{
    --white-color: black;
    --light-color: white;
    --dark-color: blue;
    --primary-color: blue;
}

*{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    border: 0;
    padding: 0;
    list-style: none;
    text-decoration: none;
    appearance: none;
    outline: none;
}

body{
    width: 100vw;
    height: 100vh;
    background: white;
}

a{
    color: white;
    transition: all 200ms ease;
    font-weight: 400;
}

a:hover{
    color: var(--primary-color);
}

nav{
    font-family: poppins;
    font-size: 0.8rem;
    text-transform: ;
    background: var(--white-color);
    position: fixed;
    width: 100%;
    box-shadow: 0 0.4rem 0.4rem rgba(0, 0, 0, 0.1);
}

nav .container{
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 0 auto;
    padding: 0.8rem;
    position: relative;
}

i{

    font-size: 1.2rem;
    cursor: pointer;
}

i:hover{
    color:var(--primary-color);
    transition: all 200ms ease;
}

ul{
    display: none;
}

nav input:checked ~ ul{
    display: block;
    position: absolute;
    width: 100%;
    top: 100%;
    left: 0;
    text-align: center;
}

nav ul li{
    padding: 1.4rem 0rem;
    background: var(--light-color);
    cursor: pointer;
    transition: all 200ms ease;
    animation: animateNavItem 500ms ease-out alternate forwards;
}

nav ul li:hover{
    background: white;
}

nav ul li:nth-child(1){
    border-top: 1px solid var(--primary-color);
}




@keyframes animateNavItem {
    0%{
        opacity: 0;
    }

    100%{
        opacity: 1;
    }
}







/* =========== MEDIA QUERY FOR MEDIUM SCREENS ============== */
@media screen and (min-width: 600px){
    nav{
        padding: 0rem;
    }
    nav .container{
        width: 80%;
        margin: 0 auto;
        padding: 0rem;
    }
    nav input, label{
        display: none;
    }

    ul{
        display: inline;
        display: flex;
        gap: 2rem;
    }

    nav .container ul li{
        background: transparent;
    }
}

/* =========== MEDIA QUERY FOR LARGE SCREENS ============== */

@media screen and (min-width: 800px){
    ul{
        gap: 4rem;
    }
}

/*--------------WAVES --------------*/
h1 {
  font-family: Poppins, sans-serif;
  font-weight:300;
  letter-spacing: 2px;
  font-size:48px;
}
p {
  font-family: Poppins, sans-serif;
  letter-spacing: 1px;
  font-size:14px;
  color: #333333;
}

.header {
  position:relative;
  text-align:center;
  background: linear-gradient(60deg, rgba(84,58,183,1) 0%, rgba(0,172,193,1) 100%);
  color:white;
}
.logo {
  width:50px;
  fill:white;
  padding-right:15px;
  display:inline-block;
  vertical-align: middle;
}

.inner-header {
  height:65vh;
  width:100%;
  margin: 0;
  padding: 0;
}

.flex { /*Flexbox for containers*/
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.waves {
  position:relative;
  width: 100%;
  height:15vh;
  margin-bottom:-7px; /*Fix for safari gap*/
  min-height:100px;
  max-height:150px;
}

.content {
  position:relative;
  height:20vh;
  text-align:center;
  background-color: white;
}

/* Animation */

.parallax > use {
  animation: move-forever 25s cubic-bezier(.55,.5,.45,.5)     infinite;
}
.parallax > use:nth-child(1) {
  animation-delay: -2s;
  animation-duration: 7s;
}
.parallax > use:nth-child(2) {
  animation-delay: -3s;
  animation-duration: 10s;
}
.parallax > use:nth-child(3) {
  animation-delay: -4s;
  animation-duration: 13s;
}
.parallax > use:nth-child(4) {
  animation-delay: -5s;
  animation-duration: 20s;
}
@keyframes move-forever {
  0% {
   transform: translate3d(-90px,0,0);
  }
  100% { 
    transform: translate3d(85px,0,0);
  }
}
/*Shrinking for mobile*/
@media (max-width: 768px) {
  .waves {
    height:40px;
    min-height:40px;
  }
  .content {
    height:30vh;
  }
  h1 {
    font-size:24px;
  }
}

/* BUTTON */
.frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
button {
  margin: 20px;
margin-top: 0px;
}
.custom-btn {
  width: 130px;
  height: 40px;
  color: #fff;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Poppins', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}




/* 3 */
.btn-3 {
  background: rgb(0,172,238);
background: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);
  width: 130px;
  height: 40px;
  line-height: 42px;
  padding: 0;
  border: none;
  
}
.btn-3 span {
  position: relative;
  display: block;
  width: 100%;
  height: 100%;
}
.btn-3:before,
.btn-3:after {
  position: absolute;
  content: "";
  right: 0;
  top: 0;
   background: rgba(2,126,251,1);
  transition: all 0.3s ease;
}
.btn-3:before {
  height: 0%;
  width: 2px;
}
.btn-3:after {
  width: 0%;
  height: 2px;
}
.btn-3:hover{
   background: white;
  box-shadow: none;
}
.btn-3:hover:before {
  height: 100%;
}
.btn-3:hover:after {
  width: 100%;
}
.btn-3 span:hover{
   color: rgba(2,126,251,1);
}
.btn-3 span:before,
.btn-3 span:after {
  position: absolute;
  content: "";
  left: 0;
  bottom: 0;
   background: rgba(2,126,251,1);
  transition: all 0.3s ease;
}
.btn-3 span:before {
  width: 2px;
  height: 0%;
}
.btn-3 span:after {
  width: 0%;
  height: 2px;
}
.btn-3 span:hover:before {
  height: 100%;
}
.btn-3 span:hover:after {
  width: 100%;
}

 /*============ CATEGORY ==============*/
 ul.category{
    position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%, -50%);
  display:flex;
  margin:0;
  padding:0;
}
ul.category li{
list-style:none;
  margin:0 5px;
}
ul.category li a .fa{
    font-size: 40px;
  color: #262626;
  line-height:80px;
  transition: .5s;
  padding-right: 14px;
}
ul.category li a span{
    padding:0;
  margin:0;
  position:absolute;
  top: 30px;
  color: #262626;
  letter-spacing: 4px;
  transition: .5s;
}
ul.category li a{
    text-decoration: none;
  display:absolute;
  display:block;
  width:210px;
  height:80px;
  background: #fff;
  text-align:left;
  padding-left: 20px;
  transform: rotate(-30deg) skew(25deg) translate(0,0);
  transition:.5s;
  box-shadow: -20px 20px 10px rgba(0,0,0,.5);
}

ul.category li a:before {
  content: '';
  position: absolute;
  top:10px;
  left:-20px;
  height:100%;
  width:20px;
  background: #b1b1b1;
  transform: .5s;
  transform: rotate(0deg) skewY(-45deg);
}
ul.category li a:after {
  content: '';
  position: absolute;
  bottom:-20px;
  left:-10px;
  height:20px;
  width:100%;
  background: #b1b1b1;
  transform: .5s;
  transform: rotate(0deg) skewX(-45deg);
}

ul.category li a:hover {
  transform: rotate(-30deg) skew(25deg) translate(20px,-15px);
  box-shadow: -50px 50px 50px rgba(0,0,0,.5);
}

ul.category li:hover .fa {
  color:#fff;
}

ul.category li:hover span {
  color:#fff;
}

ul.category li:hover:nth-child(1) a{
  background: #3b5998;
}
ul.category li:hover:nth-child(1) a:before{
  background: #365492;
}
ul.category li:hover:nth-child(1) a:after{
  background: #4a69ad;
}

ul.category li:hover:nth-child(2) a{
  background: #00aced;
}
ul.category li:hover:nth-child(2) a:before{
  background: #097aa5;
}
ul.category li:hover:nth-child(2) a:after{
  background: #53b9e0;
}

ul.category li:hover:nth-child(3) a{
  background: #dd4b39;
}
ul.category li:hover:nth-child(3) a:before{
  background: #b33a2b;
}
ul.category li:hover:nth-child(3) a:after{
  background: #e66a5a;
}

ul.category li:hover:nth-child(4) a{
  background: pink;
}
ul.category li:hover:nth-child(4) a:before{
  background: pink;
}
ul.category li:hover:nth-child(4) a:after{
  background: pink;
}
.sglogo{
    width:65px;
    height:60px;
}
      .label{
    font-family:Poppins;
    color:dodgerblue;
    font-size: 16px;
        margin-left:-175px;

}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
 <!-- Header -->
<div class="header">
<div class="navigation">
<nav>
        <div class="container">
             <a href="Home (USER).aspx"><img class="sglogo" src="SG LOGO.png" /></a>
                        <asp:Label ID="Label1" runat="server" ForeColor="White" CssClass="label"></asp:Label>
            <input type="checkbox" id="burger">
            <label for="burger"><i class="fas fa-bars"></i></label>
            <ul>
                <li><a href="Home (USER).aspx" style="font-size:16px;">HOME</a></li>
                <li><a href="Cart.aspx" style="font-size:16px;" >CART</a></li>
                <li><a href="#" style="font-size:16px;" >YOUR ORDERS</a></li>
                <li><a href="Help.aspx" style="font-size:16px;" >HELP</a></li>
                <li><a href="#" style="font-size:16px;" onclick="myFunction()">LOG OUT</a></li>
            </ul>

        </div>
    </nav>
</div>
<!--Content before waves-->
<div class="inner-header flex">
<!--Just the logo.. Don't mind this-->

<ul class="category" style="font-family:Poppins">
  <li>
    <a href="MEN.aspx">
      <i class="fa fa-male" aria-hidden="true"></i>
      <span> - MEN</span>
    </a>
  </li>
  <li>
    <a href="#">
      <i class="fa fa-child" style='color: blue'  aria-hidden="true"></i>
      <span> - BOYS</span>
    </a>
  </li>
  <li>
    <a href="Women.aspx">
      <i class="fa fa-child"  aria-hidden="true"></i>
      <span> - WOMEN</span>
    </a>
  </li>
  <li>
    <a href="#">
      <i class="fa fa-child" style='color: pink' aria-hidden="true"></i>
      <span> - GIRLS</span>
    </a>
  </li>
</ul>


</div>
<header>
   <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
</header>
  
<!--Waves Container-->
<div>
<svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
<defs>
<path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
</defs>
<g class="parallax">
<use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
<use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
<use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
<use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
</g>
</svg>
</div>
<!--Waves end-->

</div>
<!--Header ends-->

<!--Content starts-->
<div class="content flex">
<p>STEINS GATE</p>
</div>
<!--Content ends-->
    </form>
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

