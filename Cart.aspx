<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="A3.Cart" %>

<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Cart</title>
    <link rel="stylesheet" href="main.css"/>
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins"/>
            <link rel="icon" type="image/png" href="SG LOGO.png" />

    <style>
    
    @charset "utf-8";

@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700,600);

html,
html a {
  -webkit-font-smoothing: antialiased;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
}

body {
  background-color: #fff;
  color: #666;
  font-family: 'Poppins', sans-serif;
  font-size: 16px;
  margin: 0 auto;
}

a {
  border: 0 none;
  outline: 0;
  text-decoration: none;
}

strong {
  font-weight: bold;
}

p {
  margin: 0.75rem 0 0;
}

h1 {
  font-size: 16px;
  font-weight: normal;
  margin: 0;
  padding: 0;
}

input,
button {
  border: 0 none;
  outline: 0 none;
}

button {
  background-color: #666;
  color: #fff;
}

button:hover,
button:focus {
  background-color: #555;
}

img,
.basket-module,
.basket-labels,
.basket-product {
  width: 100%;
}

input,
button,
.basket,
.basket-module,
.basket-labels,
.item,
.price,
.quantity,
.subtotal,
.basket-product,
.product-image,
.product-details {
  float: left;
}

.price:before,
.subtotal:before,
.subtotal-value:before,
.total-value:before,
.promo-value:before {
  
}

.hide {
  display: none;
}

main {
  clear: both;
  font-size: 16px;
  margin: 0 auto;
  overflow: hidden;
  padding: 1rem 0;
  width: 960px;
}

.basket,
aside {
  padding: 0 1rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.basket {
  width: 70%;
}

.basket-module {
  color: #111;
}

label {
  display: block;
  margin-bottom: 0.3125rem;
}

.promo-code-field {
  border: 1px solid #ccc;
  padding: 0.5rem;
  text-transform: uppercase;
  transition: all 0.2s linear;
  width: 48%;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -o-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}

.promo-code-field:hover,
.promo-code-field:focus {
  border: 1px solid #999;
}

.promo-code-cta {
  border-radius: 4px;
  font-size: 0.625rem;
  margin-left: 0.625rem;
  padding: 0.6875rem 1.25rem 0.625rem;
}

.basket-labels {
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  margin-top: 1.625rem;
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

li {
  color: #111;
  display: inline-block;
  padding: 0.625rem 0;
}

li.price:before,
li.subtotal:before {
  content: '';
}

.item {
  width: 55%;
}

.price,
.quantity,
.subtotal {
  width: 15%;
}

.subtotal {
  text-align: right;
}

.remove {
  bottom: 1.125rem;
  float: right;
  position: absolute;
  right: 0;
  text-align: right;
  width: 45%;
}

.remove button {
  background-color: transparent;
  color: #777;
  float: none;
  text-decoration: underline;
  text-transform: uppercase;
}

.item-heading {
  padding-left: 4.375rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.basket-product {
  border-bottom: 1px solid #ccc;
  padding: 1rem 0;
  position: relative;
}

.product-image {
  width: 35%;
}

.product-details {
  width: 65%;
}

.product-frame {
  border: 1px solid #aaa;
}

.product-details {
  padding: 0 1.5rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.quantity-field {
  background-color: #ccc;
  border: 1px solid #aaa;
  border-radius: 4px;
  font-size: 0.625rem;
  padding: 2px;
  width: 3.75rem;
}

aside {
  float: right;
  position: relative;
  width: 30%;
}

.summary {
  background-color: white;
  border: 1px solid white;
  padding: 1rem;
  position: fixed;
  width: 350px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  margin-left:90px;
}

.summary-total-items {
  color: #666;
  font-size: 0.875rem;
  text-align: center;
}

.summary-subtotal,
.summary-total {
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  clear: both;
  margin: 1rem 0;
  overflow: hidden;
  padding: 0.5rem 0;
}

.subtotal-title,
.subtotal-value,
.total-title,
.total-value,
.promo-title,
.promo-value {
  color: black;
  float: left;
  width: 50%;
}

.summary-promo {
  -webkit-transition: all .3s ease;
  -moz-transition: all .3s ease;
  -o-transition: all .3s ease;
  transition: all .3s ease;
}

.promo-title {
  float: left;
  width: 70%;
}

.promo-value {
  color: #8B0000;
  float: left;
  text-align: right;
  width: 30%;
}

.summary-delivery {
  padding-bottom: 3rem;
}

.subtotal-value,
.total-value {
  text-align: right;
}

.total-title {
  font-weight: bold;
  text-transform: uppercase;
}

.summary-checkout {
  display: block;
}

.checkout-cta {
  display: block;
  float: none;
  font-size: 0.75rem;
  text-align: center;
  text-transform: uppercase;
  padding: 0.625rem 0;
  width: 100%;
}

.summary-delivery-selection {
  background-color: #ccc;
  border: 1px solid #aaa;
  border-radius: 4px;
  display: block;
  font-size: 0.625rem;
  height: 34px;
  width: 100%;
}

@media screen and (max-width: 640px) {
  aside,
  .basket,
  .summary,
  .item,
  .remove {
    width: 100%;
  }
  .basket-labels {
    display: none;
  }
  .basket-module {
    margin-bottom: 1rem;
  }
  .item {
    margin-bottom: 1rem;
  }
  .product-image {
    width: 40%;
  }
  .product-details {
    width: 60%;
  }
  .price,
  .subtotal {
    width: 33%;
  }
  .quantity {
    text-align: center;
    width: 34%;
  }
  .quantity-field {
    float: none;
  }
  .remove {
    bottom: 0;
    text-align: left;
    margin-top: 0.75rem;
    position: relative;
  }
  .remove button {
    padding: 0;
  }
  .summary {
    margin-top: 1.25rem;
    position: relative;
  }
}

@media screen and (min-width: 641px) and (max-width: 960px) {
  aside {
    padding: 0 1rem 0 0;
  }
  .summary {
    width: 28%;
  }
}

@media screen and (max-width: 960px) {
  main {
    width: 100%;
  }
  .product-details {
    padding: 0 1rem;
  }
}
 
/*==== MY STYLE ====*/
.sglogo{
    width:165px;
    height:160px;
}
.label{
    margin-top:30px;
}
/*======= BUTTONS =========*/
.btn-5 {
  width: 130px;
  height: 40px;
  line-height: 20px;
  padding: 0;
  border: none;
  background-color: dodgerblue;
font-family:Poppins;
font-size:16px;
}
.btn-5:hover {
  color: dodgerblue;
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
  background-color:dodgerblue;
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
  height: 60px;
  left:0%;
  margin-top:100px;
  color: #fff;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Poppins', sans-serif;
  font-weight: 700;
  background: dodgerblue;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
  
}
 /* 8 */
.btn-8 {
  background-color: #f0ecfc;
background-image: linear-gradient(315deg, #f0ecfc 0%, #c797eb 74%);
  line-height: 42px;
  padding: 0;
  border: none;
}
.btn-8 span {
  position: relative;
  display: block;
  width: 100%;
  height: 100%;
}
.btn-8:before,
.btn-8:after {
  position: absolute;
  content: "";
  right: 0;
  bottom: 0;
  background: #c797eb;
  /*box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
    inset -4px -4px 6px 0 rgba(255,255,255,.5),
    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);*/
  transition: all 0.3s ease;
}
.btn-8:before{
   height: 0%;
   width: 2px;
}
.btn-8:after {
  width: 0%;
  height: 2px;
}
.btn-8:hover:before {
  height: 100%;
}
.btn-8:hover:after {
  width: 100%;
}
.btn-8:hover{
  background: transparent;
}
.btn-8 span:hover{
  color: #c797eb;
}
.btn-8 span:before,
.btn-8 span:after {
  position: absolute;
  content: "";
  left: 0;
  top: 0;
  background: #c797eb;
  /*box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
    inset -4px -4px 6px 0 rgba(255,255,255,.5),
    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);*/
  transition: all 0.3s ease;
}
.btn-8 span:before {
  width: 2px;
  height: 0%;
}
.btn-8 span:after {
  height: 2px;
  width: 0%;
}
.btn-8 span:hover:before {
  height: 100%;
}
.btn-8 span:hover:after {
  width: 100%;
}
  .custom-btn8 {
  width: 130px;
  height: 40px;
  color: white;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Poppins', sans-serif;
  font-weight: 500;
  background: red;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}
.custom-btn8:hover{
    background:white;
    color:red;
}


/*======= This extra code for some reason ======= */
.card {
  align-items: center;
  background-color: #fff;
  border-radius: 20px;
  box-shadow: 0 0.4px 3.6px rgba(0, 0, 0, 0.004),
    0 1px 8.5px rgba(0, 0, 0, 0.01), 0 1.9px 15.7px rgba(0, 0, 0, 0.019),
    0 3.4px 28.2px rgba(0, 0, 0, 0.03), 0 6.3px 54.4px rgba(0, 0, 0, 0.047),
    0 15px 137px rgba(0, 0, 0, 0.07);
  display: flex;
  flex-direction: column;
  position: relative;
  width: 336px;
}
.top {
  background-color: #eee;
  border-radius: 20px;
  margin: 16px 0;
  width: 260px;
}
.text {
  box-sizing: border-box;
  padding: 0 20px 20px;
  width: 100%;
}
.title {
  align-items: center;
  display: flex;
  font-size: 28px;
  font-weight: bold;
  margin-bottom: 4px;
  position: relative;
}
.tooltip {
  font-size: 16px;
  font-weight: normal;
  margin-top: 2px;
  position: relative;
}
.tooltip:hover {
  cursor: help;
}
.tooltip-spacing {
  height: 20px;
  margin: 8px;
  position: relative;
  width: 20px;
}
.tooltip-bg1 {
  background-color: #000;
  border-radius: 10px;
  content: " ";
  display: flex;
  height: 20px;
  position: absolute;
  top: 0;
  width: 20px;
}
.tooltip-bg2 {
  background-color: #fff;
  border-radius: 8px;
  content: " ";
  display: flex;
  height: 16px;
  left: 2px;
  position: absolute;
  top: 2px;
  width: 16px;
}
.tooltip-text {
  font-size: 14px;
  font-weight: bold;
  line-height: 20px;
  position: relative;
  text-align: center;
  width: 20px;
}
.info {
  color: #64686b;
}
.popup-bg {
  filter: drop-shadow(0 3px 6px rgba(0, 0, 0, 0.16))
    drop-shadow(0 3px 6px rgba(0, 0, 0, 0.23));
  position: absolute;
  top: -126px;
}
.popup-outline {
  position: absolute;
  top: -126px;
}
.popup-text {
  border-radius: 12px;
  box-sizing: border-box;
  color: #fff;
  font-size: 16px;
  font-weight: normal;
  left: 8px;
  opacity: 0;
  padding: 12px 16px;
  position: absolute;
  top: -117px;
  transition: opacity 240ms 120ms cubic-bezier(0.4, 0, 0.2, 1);
  width: 292px;
}
.tooltip:hover ~ .popup-text {
  display: block;
}
.popup-bg {
  opacity: 0;
  transition: opacity 240ms 120ms cubic-bezier(0.4, 0, 0.2, 1);
}
.popup-outline-left {
  stroke-dasharray: 0 426px;
  stroke-dashoffset: 1px;
  transition: stroke-dasharray 300ms cubic-bezier(0.4, 0, 0.2, 1);
}
.popup-outline-right {
  stroke-dasharray: 352px 352px;
  stroke-dashoffset: -352px;
  transition: stroke-dashoffset 300ms cubic-bezier(0.4, 0, 0.2, 1);
}
.tooltip:hover ~ .popup-text {
  opacity: 1;
}
.tooltip:hover ~ .popup-bg {
  opacity: 1;
  transition: opacity 240ms 120ms cubic-bezier(0.4, 0, 0.2, 1);
}
.tooltip:hover ~ .popup-outline .popup-outline-left {
  stroke-dasharray: 426px 426px;
  transition: stroke-dasharray 300ms cubic-bezier(0.4, 0, 0.2, 1);
}
.tooltip:hover ~ .popup-outline .popup-outline-right {
  stroke-dashoffset: 0;
  transition: stroke-dashoffset 300ms cubic-bezier(0.4, 0, 0.2, 1);
}

.buttons {
  display: flex;
  margin-top: 8px;
  width: 100%;
}
.button {
  align-items: center;
  background: #edf1f7;
  border-radius: 10px;
  cursor: pointer;
  display: flex;
  height: 50px;
  justify-content: center;
  margin: 0 5px 28px 20px;
  width: 100%;
}
.button:hover{
    background:white;
    color:dodgerblue;
    border-style:solid;
      border-radius: 25px;
        border: 2px solid dodgerblue;

}

.button:last-child {
  margin: 0 20px 20px 5px;
}

.button-primary {
  background-color: #0060f6;
  color: #fff;
}
.quant{
     border-style:solid;
      border-radius: 25px;
        border: 2px solid dodgerblue;
        height:40px;
        width:70px;
        margin-top:-10px;
}
    </style>
</head>

<body>
    <form runat="server">
 <nav class="w3-sidebar w3-black w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
      <a href="Home (USER).aspx"><img class="sglogo" src="SG LOGO.png" /></a><br />
      <div class="label">
          <asp:Label ID="Label1" runat="server" ForeColor="White" CssClass="label"></asp:Label>
      </div>
      <a class="custom-btn btn-5" href="MEN.aspx">CONTINUE SHOPPING</a>

  </div>
  <div class="w3-bar-block">
    
  </div>
</nav>   
  <main>
    <div class="basket">
      <div class="basket-module">
          <h1 class="w3-jumbo" style="font-family:Poppins;"><b>CART</b></h1>
<hr style="width:300px;border:5px solid dodgerblue; margin-left:0px; margin-top:-10px; " class="w3-round"/>
        <label for="promo-code">Enter a promotional code</label>
        <input id="promo-code" type="text" name="promo-code" maxlength="5" class="promo-code-field">
        <button class="promo-code-cta">Apply</button>
      </div>
      <div class="basket-labels">
        <ul>
          <li class="item item-heading">Item</li>
          <li class="price">Price</li>
          <li class="quantity">Quantity</li>
        </ul>
      </div>
      <div class="basket-product">
          <asp:Repeater ID="Carti" runat="server" EnableViewState="false" >
              <HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
        <div class="item">
          <div class="product-image">
              <img class="img img-fixed-size" alt="" src='data:image/jpeg;base64,<%# ConvertToBase64(GetImageDataFromDatabase((int)Eval("ProdID"))) %>' ' />
          </div>
          <div class="product-details">
            <asp:Label ID="lblItemName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
          </div>
        </div>
        <div class="price" style="margin-top:-13px;"><p>R<%# Eval("Price") %></p></div>
        <div class="quantity">
            <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Width="40px" BorderColor="Black" BackColor="WhiteSmoke" CssClass="quant"></asp:TextBox>        
        </div>
        <div class="remove">
          <button>
              <asp:Button ID="btnRemove" runat="server" Text="REMOVE" CssClass="custom-btn8 btn-12" CommandArgument='<%# Eval("Name") %>'  OnClick="btnRemove_Click"/></button>
        </div>
      </div>

        </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
        </asp:Repeater>
    </div>
    <aside>
      <div class="summary">
            <div class="card">
      <svg xmlns="http://www.w3.org/2000/svg" width="260" height="241" viewBox="0 0 2876.0933 2666.6667" class="top">
        <path d="M0 2666.667h2876.093V0H0v2666.667" fill="#fff" />
        <path d="M1643.333 899.213c-188.72 20.627-314.318 301.534-242.56 642.574 71.774 341.026 127.574 493.6 703.76 431.893 576.174-61.707 448.507-869.907 30.934-772.813-224.52 52.186-126.627-341.627-492.134-301.654" fill="#184655" />
        <path d="M1149.77 1671.667c-63.026 16.44-306.07 53.88-334.642 64.533l148.207 151.747h217.05l-30.614-216.28" fill="#f7a491" />
        <path d="M2378.96 627.773c-5.107-9.546-69.347-61.746-75.053-66.933-5.707-5.187-48.907-26.267-49.254-2.733-.093 6.76 39.014 32.693 53.707 42.84-12.493-10.707-68.733-37.934-76.64-33-15.32 9.573 50.12 57.96 70.413 69.773 16.227 9.453 22.094 60.533 23.787 80.627.6 7.093-1.48 26.88-.627 19.826.16-1.293-17.2-28.066-24.68-42.72-4.933-9.64-13.533-12.933-18.013-6.44-11.107 16.107 18.6 103.48 27.627 115.067 10.693 13.707 34.986 36.507 44.226 45.147 0 0 46.467 438.16 32.187 448.653-33.4 24.547-362.933 202.947-362.933 202.947s34.506 210.613 42.426 203.293c7.907-7.32 432.627-256.267 454.16-299.92 31.134-63.16-9.093-312.12-49.52-475.533-13.6-65-60.506-242.36-91.813-300.894" fill="#b35e4b" />
        <path d="M2371.747 717.613l8.826 3.894s11.747 7.826 9.08 17.426c-1.56 5.56-5.053 6.534-25.96 14.134-15.12 5.493-35.64 6.853-66.453 8.506l74.507-43.96" fill="#944634" />
        <path d="M2379.227 724.653l-105.28-203.146c-3.254-6.28-11.387-8.814-18.16-5.654l-8.2 3.934s-.027.026-.08.066l-.027-.053-73.787 38.787c-5.493 2.893-7.573 9.346-4.68 14.493l110.534 196.107 73.2-18.027 20.12-9.4c6.773-3.16 9.613-10.827 6.36-17.107" fill="#13375b" />
        <path d="M2274.68 691.253s-7.587 24.707-5.853 53.814c1.72 29.106 62.373 85.986 72.173 90.72 9.813 4.733 1-35.36 1-35.36s-1.76-37.52-11.56-40.147c-9.8-2.64-26.84-16-26.84-16s-9.16-86.107-28.92-53.027M2365.2 651.093l-23.187-33.146s-49.853-58.654-69.826-45.107c-19.974 13.547 57.146 60.32 57.146 60.32s30.08 42.693 61.8 102.2l5.734-21.893-31.667-62.374" fill="#b35e4b" />
        <path d="M1867.187 1541.787c100.066-43.334 281.826-110.974 281.826-110.974l60.08 219.427-297.666 157.707s-70.427-254.827-44.24-266.16M1472.827 1558.987s-36.614 1.346-129.4 31.066c-101.514 32.507-292.01 79.96-292.01 79.96L1153.14 1896.2l339.873-40.387s33.147-296.826-20.186-296.826" fill="#f47458" />
        <path d="M787.912 1983.533l-122.04.2c-1.21-11.586-13.397-381.76-12.613-392.52.785-10.773 122.67-87.493 108.665-98.613-14.005-11.133-66.673 25.933-72.65 19.493-13.78-14.853 5.858-178.866-7.162-175.986-24.36 5.386-16.518 104.373-28.38 104.84-11.862.453 1.716-104.08-18.305-110.174-20.02-6.093-3.287 100.094-11.868 104.774-8.58 4.68-29.576-97.814-47.384-86.374-9.67 6.2 20.957 90.694 7.385 90.92-13.57.227-47.384-60.866-57.816-52.68-10.43 8.187 39.605 58.64 41.875 94.92 2.27 36.267 19.16 50.2 5.308 108.947-13.853 58.733-86.083 455-42.485 501.213 35.4 37.52 237.864 58.934 254.932 49.307 65.414-36.893 2.537-158.267 2.537-158.267" fill="#b35e4b" />
        <path d="M685.1 1515.813s-54.797-10.493-63.893 37.214c0 0 21.257-37.347 63.892-37.214" fill="#944634" />
        <path d="M1098.227 1986.507s9.413-55.374 138.704-68.827c131.843-13.733 269.883-100.107 269.883-100.107s12.334 190.187-26.48 229.44l-132.72 47.214-249.386-107.72M1021.307 1925.693s-46.423 3.347-105.728 11.107c-59.305 7.76-204.32 23.587-204.32 23.587l38.23 205.413s214.85-1.013 222.33 2.493c7.476 3.507 57.82-219.52 49.487-242.6" fill="#50bfa5" />
        <path d="M2078.547 2666.667c-67.987-129.587-159.814-239.574-159.814-239.574l-427.28 21.68s-37.373 108.294-41.906 217.894h629" fill="#355389" />
        <path d="M1943.613 2440.467c-194.066 83.466-468.746 3.946-468.746 3.946 37.146-193.573-47.867-332.84-68.187-529.04-25.533-136.546 38.36-152.506 66.147-356.386.186-1.374 141.546-11.24 141.546-11.24l147.094 3.64s60.36-4.107 105.72-9.6c3.346-.414 81.946 278.84 69.28 442.093-8.627 111.32-14.174 194.093-13.374 267.667 1.174 106.946 20.52 188.92 20.52 188.92" fill="#f47458" />
        <path d="M1980.627 1863.307c4.56 144.173-129.334 183.706-278.627 183.706s-270.32-70.626-270.32-157.733c0-87.12 99.253-204.373 248.467-209.68 186.76-6.64 296.973 73.28 300.48 183.707" fill="#f47458" />
        <path d="M1651.587 1310.347s-3.374 24.053-8.56 57.226c-9.494 60.707-16.48 149.907-28.654 180.174C1603.64 1574.4 1668.587 1653 1745.2 1653c88.28 0 44.347-68.347 47.107-101.107 2.746-32.48 3.493-121.853 9.306-195.92 3.147-40.066 5.427-69.28 5.427-69.28l-155.453 23.654" fill="#b35e4b" />
        <path d="M1801.907 1354.64c2.973-39.2 5.133-67.947 5.133-67.947l-155.453 23.654s-3.934 22.64-8.254 54.64c63.014 36.56 119.694 25.026 158.574-10.347" fill="#944634" />
        <path d="M1700.333 958.493s-61.28 13.814-99.12 71.56c-37.826 57.734-63.8 227.72 60.827 307.067 124.613 79.333 221.533-32.893 223.133-142.36 1.614-109.48-21.853-255.56-184.84-236.267" fill="#b35e4b" />
        <path d="M1718.72 954.92s-78.133 207.4-146.76 223.04c-68.627 15.653-67.64 71.653-67.64 71.653s1.533-203.613 65.853-250.32c64.32-46.706 148.547-44.373 148.547-44.373" fill="#184655" />
        <path d="M1600.64 1213.733c8.307 26.147.707 51.88-16.96 57.494-17.667 5.6-38.72-11.04-47.027-37.174-8.293-26.146-.706-51.88 16.974-57.493 17.666-5.613 38.72 11.027 47.013 37.173" fill="#b35e4b" />
        <path d="M1409.973 2666.667c-24.026-58.293-59.746-101.72-59.746-101.72s-77.727 7.28-119.88 7.28c-166.132 0-205.503-21.787-205.503-21.787s-34.844 43.68-61.6 116.227h446.73" fill="#f7cc7f" />
        <path d="M1110.86 1908.307s-155.237 23.933-249.564 30.08l141.06 614.787s194.828 61.133 358.39 12.88c0 0 84.827-394.414-37.14-620.947-14.862-27.614-126.63-30.014-126.63-30.014l-86.116-6.786" fill="#50bfa5" />
        <path d="M1153.38 2381.187c-68.288-44.187-94.57-140.8-71.377-132.654 23.182 8.12 52.048 35.52 53.14 18.587 1.09-16.947-43.132-49.08-77.926-73.48-6.34-4.44-40.508-15.973-47.29-36.947-2.53-7.8-32.083-177.733-46.52-300.96L836.46 1708.16C713.91 1762 940.142 2213.4 978.804 2279.267c38.672 65.853 97.15 115.133 112.888 116.16 3.806.253 3.036-3.454-.324-9.214 18.455 16.04 41.494 29.494 45.643 26.454 5.34-3.907-29.218-29.654-45.834-51.347-16.628-21.667-36.156-43.96-34.31-45.08 2.966-1.773 35.08 40.267 52.362 62.04 17.26 21.773 112.436 47.067 44.15 2.907" fill="#b35e4b" />
        <path d="M1147.18 1467.587s74.283-24.334 122.29 43.706c48.01 68.04 22.058 61.587 45.413 95.614 23.357 34.013 84.344 26.986 84.344 79.773 0 52.787-27.254 61-27.254 61s24.654 41.067-2.6 83.293c-27.24 42.24-93.94 91.054-150.797 85.187 0 0-86.64 29.88-172.275 9.893-85.635-20-55.792-20-90.825-20-35.032 0-129.75-43.4-114.18-106.746 0 0-57.715-62-1.714-112.627 56.004-50.64 66.59-102.067 99.028-170.107 32.437-68.04 169.648-65.4 208.573-48.986" fill="#13375b" />
        <path d="M1196.81 1829.8s-3.118 93.44 6.587 102.213c9.707 8.774 23.256 23.32 8.983 45.614-14.27 22.28-76.228 8.053-105.097-4.694-27.71-12.253-45.594-35.04-45.594-35.04l14.453-147.973 120.668 39.88" fill="#b35e4b" />
        <path d="M1076.143 1789.92l-3.89 39.813c26.672 38.107 60.736 50.014 80.348 56.227 10.148 3.2 25.947 8.213 44.375 8.28-1.34-29.227-.164-64.44-.164-64.44l-120.667-39.88" fill="#944634" />
        <path d="M1172.157 1504.84s58.39-1.173 88.23 39.88c29.842 41.067 62.28 158.387 12.978 239.333-49.305 80.947-112.237 61-138.186 52.787-25.95-8.213-77.2-26.387-103.153-102.067-25.95-75.666-7.136-245.773 140.13-229.933" fill="#b35e4b" />
        <path d="M1037.056 1704.427s-2.93-54.934-40.244-44.267c-37.313 10.667-8.875 93.573 22.06 90.84 30.928-2.72 18.184-46.573 18.184-46.573" fill="#b35e4b" />
        <path d="M938.013 1057.187l-17.276-47.334-48.793-12.613c-5.557-1.44-7.056-8.627-2.536-12.16l39.687-31.053-3.084-50.307c-.35-5.733 6.02-9.373 10.778-6.173l41.803 28.146 46.887-18.48c5.343-2.106 10.776 2.827 9.202 8.347l-13.853 48.453 32.062 38.894c3.65 4.426.642 11.12-5.095 11.32l-50.364 1.8-27.07 42.52c-3.083 4.826-10.38 4.04-12.347-1.36" fill="#f7cc7f" />
        <path d="M259.395 1290.413l58.44-2.36 24.868-61.893 79.85 8.693 11.004-43 17.66 5.214-14.44 56.426-81.78-8.906-24.074 59.933-70.762 2.84-.765-16.947" fill="#f48c7f" />
        <path d="M2069.667 281.12l5.52 48.987-77.827 17.586-.773 72.627-56.094 22.68 11.48 28.4 75.04-30.347.72-68.813 80.974-18.293-8.307-73.72-30.733.893" fill="#50bfa5" />
        <path d="M335.945 797.48l30.248 34.133 44.572-13.266L441.96 859l43.115-28.773 37.305 44.426 42.97-21.6 42.882 36.88-13.956 16.227-32.064-27.573-45.34 22.786-35.864-42.693-43.836 29.253-34.424-44.866-43.525 12.96-28.035-31.64-26.804 14.493-10.18-18.827 41.74-22.573" fill="#96d9c9" />
        <path d="M1474.573 411.453s11.707-21.973 40.494-26.12c25.666-3.706 46.293 14.147 49.733 37.894 3.96 27.506-15.453 63.52-73.973 100.826-66.68-19.253-95.494-48.306-99.454-75.8-3.426-23.76 11.32-46.72 36.987-50.413 28.787-4.16 46.213 13.613 46.213 13.613M1263.956 452.907c25.52.453 46.05-.467 66.19-2.347 6.64-.613 18.334.28 22.414-5.84 2.107-3.187 2.147-6.827-.8-9.587-5.4-5.066-15.2-1.973-21.895-1.346-20.397 1.88-43.566 3.04-67.05 2.866-4.406-.04-7.852 4.547-7.564 8.694.333 4.72 4.293 7.48 8.706 7.56M1609.28 473.947c9.773-.734 19.533-1.654 29.293-2.547 9.334-.853 20.52-.213 29.08-4.213 6.307-2.934 6.12-11.667-.973-13.507-9.173-2.373-19.907.24-29.267 1.12-9.76.92-19.533 1.813-29.266 2.88-10.414 1.147-9.36 17.053 1.133 16.267M1365.533 572.56c10.4-21.653 24.747-29.333 35.44-38.227 5.72-4.773 1.534-13.48-5.826-11.64-20.16 5.054-35.88 24.947-44.28 42.907-4.427 9.467 10.133 16.413 14.666 6.96M1482.667 614.027c-1.28-10.054-.64-20.04 2.24-29.774 1.76-5.96 11.96-23.053.226-25.04-11.053-1.88-15.28 16.387-17.186 24.12-2.56 10.347-3.067 21.28-1.614 31.84 1.427 10.387 17.68 9.334 16.334-1.146M1559.973 545.227c5.774 3.453 11.547 6.906 17.32 10.373 5.774 3.44 11.467 8.707 18.48 6.613 3.947-1.173 5.16-5.346 4.374-8.933-1.414-6.52-10.414-9.653-15.694-12.773-5.8-3.414-11.586-6.84-17.386-10.267-3.84-2.267-9.24.16-11.027 3.947-2.08 4.36.08 8.733 3.933 11.04M1402.147 357.573c-25.147-48.026-24.774-48.32-29.32-52.053-4.667-3.827-12.254-.267-11.734 5.947.52 6.146.547 5.12 27.187 55.56 2.133 4.013 8.227 4.56 11.667 2.2 4.106-2.8 4.306-7.627 2.2-11.654M1491.147 349.133c2.506-8.573 4.08-17.306 4.72-26.226.586-8.28 2.613-20.894-5.48-25.907-1.734-1.08-4.787-.787-6.347.493-6.507 5.32-4.093 16.307-4.667 23.947-.626 8.32-2.146 16.587-4.186 24.693-1.067 4.254 2.346 8.694 6.48 9.48 4.666.88 8.24-2.253 9.48-6.48M1617.56 346.173c1.12-3.92-2.253-7.24-5.64-8.253-6.96-2.067-15.213 5.24-20.573 9.08-6.227 4.467-11.974 9.507-17.414 14.92-3.133 3.12-2.213 8.853.96 11.533 3.707 3.147 8.28 2.067 11.534-.946 21.266-19.694 28.373-16.627 31.133-26.334" fill="#f7a491" />
        <path d="M1024.268 686.827l-57.57-30.36 9.842-40.187-52.99-30.4 7.482-57.693 21.95 2.84-5.574 43.013L1002 605.36l-9.695 39.587 42.283 22.293-10.32 19.587" fill="#f48c7f" />
      </svg>
      <div class="text">
        <div class="title">
          Satisfied?
          
        </div>
        <div class="info">
         If you don't like what you've picked, you can always click on the 'Remove' button. Click twice for good measure &#128521;
        </div>
      </div>
      <div class="buttons">
        
        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" CssClass="button button-primary" CommandArgument='<%# Eval("Name") %>' OnClick="btnCheckout_Click"/>
      </div>
    </div>
      </div>
    </aside>
  </main>
        </form>
    <script>
        /* Set values + misc */
        var promoCode;
        var promoPrice;
        var fadeTime = 300;

        /* Assign actions */
        $('.quantity input').change(function () {
            updateQuantity(this);
        });

        $('.remove button').click(function () {
            removeItem(this);
        });

        $(document).ready(function () {
            updateSumItems();
        });

        $('.promo-code-cta').click(function () {

            promoCode = $('#promo-code').val();

            if (promoCode == '10off' || promoCode == '10OFF') {
                //If promoPrice has no value, set it as 10 for the 10OFF promocode
                if (!promoPrice) {
                    promoPrice = 10;
                } else if (promoCode) {
                    promoPrice = promoPrice * 1;
                }
            } else if (promoCode != '') {
                alert("Invalid Promo Code");
                promoPrice = 0;
            }
            //If there is a promoPrice that has been set (it means there is a valid promoCode input) show promo
            if (promoPrice) {
                $('.summary-promo').removeClass('hide');
                $('.promo-value').text(promoPrice.toFixed(2));
                recalculateCart(true);
            }
        });

        /* Recalculate cart */
        function recalculateCart(onlyTotal) {
            var subtotal = 0;

            /* Sum up row totals */
            $('.basket-product').each(function () {
                subtotal += parseFloat($(this).children('.subtotal').text());
            });

            /* Calculate totals */
            var total = subtotal;

            //If there is a valid promoCode, and subtotal < 10 subtract from total
            var promoPrice = parseFloat($('.promo-value').text());
            if (promoPrice) {
                if (subtotal >= 10) {
                    total -= promoPrice;
                } else {
                    alert('Order must be more than £10 for Promo code to apply.');
                    $('.summary-promo').addClass('hide');
                }
            }

            /*If switch for update only total, update only total display*/
            if (onlyTotal) {
                /* Update total display */
                $('.total-value').fadeOut(fadeTime, function () {
                    $('#basket-total').html(total.toFixed(2));
                    $('.total-value').fadeIn(fadeTime);
                });
            } else {
                /* Update summary display. */
                $('.final-value').fadeOut(fadeTime, function () {
                    $('#basket-subtotal').html(subtotal.toFixed(2));
                    $('#basket-total').html(total.toFixed(2));
                    if (total == 0) {
                        $('.checkout-cta').fadeOut(fadeTime);
                    } else {
                        $('.checkout-cta').fadeIn(fadeTime);
                    }
                    $('.final-value').fadeIn(fadeTime);
                });
            }
        }

        /* Update quantity */
        function updateQuantity(quantityInput) {
            /* Calculate line price */
            var productRow = $(quantityInput).parent().parent();
            var price = parseFloat(productRow.children('.price').text());
            var quantity = $(quantityInput).val();
            var linePrice = price * quantity;

            /* Update line price display and recalc cart totals */
            productRow.children('.subtotal').each(function () {
                $(this).fadeOut(fadeTime, function () {
                    $(this).text(linePrice.toFixed(2));
                    recalculateCart();
                    $(this).fadeIn(fadeTime);
                });
            });

            productRow.find('.item-quantity').text(quantity);
            updateSumItems();
        }

        function updateSumItems() {
            var sumItems = 0;
            $('.quantity input').each(function () {
                sumItems += parseInt($(this).val());
            });
            $('.total-items').text(sumItems);
        }

        /* Remove item from cart */
        function removeItem(removeButton) {
            /* Remove row from DOM and recalc cart total */
            var productRow = $(removeButton).parent().parent();
            productRow.slideUp(fadeTime, function () {
                productRow.remove();
                recalculateCart();
                updateSumItems();
            });
        }
    </script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
</body>

</html>


