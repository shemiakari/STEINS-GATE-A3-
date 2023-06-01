<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Women.aspx.cs" Inherits="A3.Women" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Women</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins"/>
    <link rel="stylesheet" href="style.css"/>
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet"/>
        <link rel="icon" type="image/png" href="SG LOGO.png" />

    <style>
        @import url(https://fonts.googleapis.com/css?family=PT+Sans:400,700);

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body{
  background: );
  font: 400 14px Pt Sans;
}

.displaybox{
  width: 85%;
  padding: 30px;
  margin: 100px auto;
  background-color: white;
  border-color:black;
  box-shadow: inset 1px 1px 1px rgba(0,0,0,0.15), 1px 1px 1px rgba(0,0,0,0.15);
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  flex-wrap: wrap;
  margin-top:60px;
}

.dis{
  height: 300px;
  width: 300px;
  margin: 40px 0 60px 0;
  box-shadow: inset 1px 1px 1px rgba(0,0,0,0.05), 1px 1px 1px rgba(0,0,0,0.05);
  position: relative;
  z-index: 100;
}

.dis1{
 background-size: 80%;
 background-color: white;
}

.dis2{
   /*
   background: url("Sancho.jpg") no-repeat center center;
 background-size: 87%;
 background-color: white;
       */
}

.dis3{
  background: url("https://i.imgur.com/67HoMxe.jpg") no-repeat center center;
 background-size: 92%;
 background-color: white;
}

.dis4{
  background: url("https://i.imgur.com/zND1WED.jpg") no-repeat center center;
 background-size: 94%;
 background-color: white;
}

.dis5{
  background: url("https://i.imgur.com/IgIsXz4.jpg") no-repeat center center;
 background-size: 88%;
 background-color: white;
}

.dis6{
  background: url("https://i.imgur.com/CEK1Rrf.jpg") no-repeat center center;
 background-size: 80%;
 background-color: white;
}


.dislogo{
  height: 40px;
  width: 40px;
  background-color: black;
  margin-left: 15px;
  border-radius: 100%;
  border: solid 3px white;
  box-shadow: inset 1px 1px 0px rgba(0,0,0,0.15), 1px 1px 3px rgba(0,0,0,0.15);
  z-index: 500;
  transition: all ease 0.5s;
  float: left;
}

.dislogo1{
  background: url("SG LOGO.png") no-repeat center center;
  background-size: 110%;
  background-color: black;
}

.disdis{
  float: left;
  font-size: 18px;
  font-family:Poppins;
  font-weight:500;
  margin-left: 10px;
  opacity: 0;
  transition: all ease 0.5s;
  margin-top: 10px;
  z-index: 20;
  position: relative;
}

.distopwrap{
  -webkit-transform: translateY(-10px);
  transform: translateY(-10px);
  transition: all ease 0.5s;
  z-index: 20;
}

.disprice{
  position: absolute;
  bottom: 0;
  right: 0;
  font-size: 14px;
  font-weight: 700;
  padding: 5px;
  margin: 10px;
  background-color: rgba(20,20,20,0.7);
  color: white;
  text-shadow: 1px 1px 0px rgba(0,0,0,0.2);
  border-radius: 3px;
  opacity: 0;
  -webkit-transform: translateX(30px);
  transform: translateX(30px);
  transition: all ease 0.5s;
  box-shadow: inset 1px 1px 1px rgba(0,0,0,0.05), 1px 1px 1px rgba(0,0,0,0.05);
}

.disbut{
  position: absolute;
  left: 0;
  bottom: 0;
  font-size: 14px;
  font-weight: 700;
  width: 100%;
  padding: 10px;
  background-color: rgba(20,20,20,0.7);
  color: white;
  text-shadow: 1px 1px 0px rgba(0,0,0,0.2);
  border-radius: 3px;
  opacity: 0;
  border: none;
  -webkit-transform: translateY(30px);
  transform: translateY(30px);
  transition: all ease 0.5s;
  box-shadow: inset 1px 1px 1px rgba(0,0,0,0.05), 1px 1px 1px rgba(0,0,0,0.05);
}

.faspace{
  margin-right: 10px;
}

.roll:hover .distopwrap{
  -webkit-transform: translateY(-30px);
  transform: translateY(-30px);
  transition: all ease 0.5s;
} 

.roll:hover .disdis{
  opacity: 1;
  transition: all ease 0.5s;
}

.roll:hover .disprice{
  opacity: 1;
  transition: all ease 0.5s;
  -webkit-transform: translateX(0px);
  transform: translateX(0px);
}

.roll:hover .disbut{
  opacity: 1;
  transition: all ease 0.5s;
  -webkit-transform: translateY(60px);
  transform: translateY(60px);
}

.disbut:hover{
  background-color: dodgerblue;
  transition: all ease 0.5s;
}
.img{
    width: 100%;
    object-fit:cover;
    position: relative;
}
.img-fixed-size {
    width: 200px;  /* Adjust the width as per your requirement */
    height: 200px; /* Adjust the height as per your requirement */
    object-fit: cover; /* Maintain aspect ratio and cover the entire space */
}

/*======= BUTTONS =========*/
.btn-5 {
  width: 130px;
  height: 40px;
  line-height: 20px;
  padding: 0;
  border: none;
  background-color:#C41E3A ;
font-family:Poppins;
font-size:16px;
}
.btn-5:hover {
  color: #C41E3A;
  background: transparent;
   box-shadow:none;
}
.btn-5:before,
.btn-5:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background-color:#C41E3A;
  box-shadow:
   -1px -1px 5px 0px #fff,
   7px 7px 20px 0px #0003,
   4px 4px 5px 0px #0002;
  transition:400ms ease all;
}
.btn-5:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.btn-5:hover:before,
.btn-5:hover:after{
  width:100%;
  transition:800ms ease all;
}
 .custom-btn {
  width: 130px;
  height: 40px;
  left:80%;
  color: #fff;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Poppins', sans-serif;
  font-weight: 700;
  background: #C41E3A;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
  
}

 /*ACTUAL SEARCH BAR*/
.search {
  margin: 60px 20px 20px 20px;
  border: 1px solid white;
  background-color:#C41E3A ;
  border-radius: 1.5em;
  font-size: 1.2em;
  width: 35rem;
  height: 3.1rem;
  transition: width .35s ease-in-out;
  font-family: Poppins;
  color:white;
  
}
.search:focus {
  width: 45rem;
  
}
.search:focus ~ button {
  z-index: 1;
  right: calc(50vw - 275px + 50px);
  opacity: 1;
}
.search:focus::placeholder{
  right: 50%;
  -moz-transform: translateX(55%);
  transform: translateX(55%);
  
}
.search::placeholder{
  position: relative;
  right: 50%;
  -moz-transform: translateX(85%);
  transform: translateX(85%);
  transition: transform .35s ease-in-out;
  color: white;
  font-family: Poppins
}


/*============= NAVBAR ===============*/
.sglogo{
    width:65px;
    height:60px;
}
.sglogo:hover{
    
}
:root{
    --white-color: black;
    --light-color: white;
    --dark-color: blue;
    --primary-color: blue;
}
a {
    color: white;
    transition: all 200ms ease;
    font-weight: 400;
    
}

a:hover {
    color: var(--primary-color);
}

nav {
    font-family: poppins;
    font-size: 0.8rem;
    text-transform: uppercase;
    background: var(--white-color);
    position: fixed;
    top: 0;
    width: 100%;
    height: 8%;
    box-shadow: 0 0.4rem 0.4rem rgba(0, 0, 0, 0.1);
    z-index: 999;
}

nav .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 0 auto;
    padding: 0.8rem;
    position: relative;
}

i {
    font-size: 1.1rem;
    cursor: pointer;
}

i:hover {
    color: var(--primary-color);
    transition: all 200ms ease;
}

ul {
    display: none;
}

nav input:checked ~ ul {
    display: block;
    position: absolute;
    width: 100%;
    top: 100%;
    left: 0;
    text-align: center;
    z-index: 999;
}

nav ul li {
    padding: 1.4rem 1.2rem;
    background: var(--light-color);
    cursor: pointer;
    transition: all 200ms ease;
    animation: animateNavItem 500ms ease-out alternate forwards;
}

nav ul li:hover {
    background: white;
}

nav ul li:nth-child(1) {
    border-top: 1px solid black;
}

@keyframes animateNavItem {
    0% {
        opacity: 0;
    }

    100% {
        opacity: 1;
    }
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

/* Adjustments to prevent content from overlapping */
body {
    padding-top: 4rem;
}

/* Media query for medium screens */
@media screen and (min-width: 600px) {
    nav {
        padding: 0rem;
    }

    nav .container {
        width: 80%;
        margin: 0 auto;
        padding: 0rem;
    }

    nav input,
    label {
        display: none;
    }

    ul {
        display: flex;
        gap: 2rem;
    }

    nav .container ul li {
        background: transparent;
    }
}

/* Media query for large screens */
@media screen and (min-width: 800px) {
    ul {
        gap: 4rem;
    }
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navigation">
<nav>
        <div class="container">
            <a href="Home (USER).aspx"><img class="sglogo" src="SG LOGO.png" /></a>
            <input type="checkbox" id="burger"/>
            <label for="burger"><i class="fas fa-bars"></i></label>
            <ul>
                <li><a href="Home (USER).aspx" style="font-size:16px;">HOME</a></li>
                <li><a href="Orders.aspx" style="font-size:16px;" >YOUR ORDERS</a></li>
                <li><a href="Help.aspx" style="font-size:16px;" >HELP</a></li>
                <li><a href="#" style="font-size:16px;" onclick="myFunction()">LOG OUT</a></li>
            </ul>

        </div>
    </nav>
</div>
        <div class="w3-container" style="margin-top:50px; margin-left:140px;" id="showcase">
            <h1 class="w3-xxxlarge" style="font-family:Poppins;"><b>Women's Clothing</b></h1>
                <hr style="width:500px;border:5px solid #C41E3A ; margin-top:0%;" class="w3-round"/>
        </div>
        <button class="custom-btn btn-5" onclick="window.location.href= 'Products.aspx';"><span>RETURN</span></button>
        <button class="custom-btn btn-5" onclick="window.location.href= '';"><span>CART</span></button>
        <div class="searchbar" style="margin-top:-100px; margin-left:130px;">
            <asp:TextBox ID="txtSearch" runat="server" placeholder="Search"  CssClass="search" ></asp:TextBox>
        </div>
        <div class="displaybox"> 
            <asp:Repeater ID="Products" runat="server" OnItemCommand="Products_ItemCommand">
                <HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
  <div class="dis roll">
    <div class="distopwrap">
    <div class="dislogo dislogo1">
    </div>
    <div class="disdis">
      <p class="w3-text-black" style="margin-top:-10px; font-weight:700"><%# Eval("Name") %></p>
    </div>
    </div>
      <div class="image" >
                    <img class="img img-fixed-size" alt="" src='data:image/jpeg;base64,<%# ConvertToBase64(GetImageData((int)Eval("ProdID"))) %>' ' />
                </div>
    <div class="disprice">
      <p>R<%# Eval("Price") %></p>
    </div>
    <button class="disbut"><i class="fa fa-shopping-cart faspace"></i> ADD TO CART</button>
  </div>
</ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
            </asp:Repeater>
  </div> 
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
