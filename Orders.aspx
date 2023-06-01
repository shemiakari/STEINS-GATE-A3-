<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Orders.aspx.cs" Inherits="A3.Orders" %>

<html>
<head>
<title>Your Orders</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
      <link rel="icon" type="image/png" href="SG LOGO.png" />
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"/>
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
  background-color:white;
  font-family:Poppins;
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
        height: 80px;
        position:fixed;
        z-index:9999;
}
    

.navbar .logo {
  float: left;
  color: white;
  font-weight: 800;
  margin-right: 20px;
}

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

/*====  WAVES    ====*/

/*===== CONTAINER =========*/
.shell{
  padding:100px 0;
}
.wsk-cp-product{
  background:#fff;
  padding:15px;
  border-radius:6px;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  position:relative;
  margin:20px auto;
}
.wsk-cp-img{
  position:absolute;
  top:5px;
  left:50%;
  transform:translate(-50%);
  -webkit-transform:translate(-50%);
  -ms-transform:translate(-50%);
  -moz-transform:translate(-50%);
  -o-transform:translate(-50%);
  -khtml-transform:translate(-50%);
  width: 100%;
  padding: 15px;
  transition: all 0.2s ease-in-out;
}
.wsk-cp-img img{
  width:100%;
  height:fit-content;
  transition: all 0.2s ease-in-out;
  border-radius:6px;
}
.wsk-cp-product:hover .wsk-cp-img{
  top:-40px;
}
.wsk-cp-product:hover .wsk-cp-img img{
  box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
}
.wsk-cp-text{
  padding-top:150%;
}
.wsk-cp-text .category{
  text-align:center;
  font-size:12px;
  font-weight:bold;
  padding:5px;
  margin-bottom:45px;
  position:relative;
  transition: all 0.2s ease-in-out;
}
.wsk-cp-text .category > *{
  position:absolute;
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  -webkit-transform: translate(-50%,-50%);
  -moz-transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
  -o-transform: translate(-50%,-50%);
  -khtml-transform: translate(-50%,-50%);
    
}
.wsk-cp-text .category > span{
  padding: 12px 30px;
  border: 1px solid #313131;
  background:#212121;
  color:#fff;
  box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
  border-radius:27px;
  transition: all 0.05s ease-in-out;
  
}
.wsk-cp-product:hover .wsk-cp-text .category > span{
  border-color:#ddd;
  box-shadow: none;
  padding: 11px 28px;
}
.wsk-cp-product:hover .wsk-cp-text .category{
  margin-top: 0px;
}
.wsk-cp-text .title-product{
  text-align:center;
}
.wsk-cp-text .title-product h3{
  font-size:20px;
  font-weight:bold;
  margin:15px auto;
  overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  width:100%;
}
.wsk-cp-text .description-prod p{
  margin:0;
}
/* Truncate */
.wsk-cp-text .description-prod {
  text-align:center;
  width: 100%;
  height:62px;
  overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
  margin-bottom:15px;
}
.card-footer{
  padding: 25px 0 5px;
  border-top: 1px solid #ddd;
}
.card-footer:after, .card-footer:before{
  content:'';
  display:table;
}
.card-footer:after{
  clear:both;
}

.card-footer .wcf-left{
  float:left;
  
}

.card-footer .wcf-right{
  float:right;
}

.price{
  font-size:18px;
  font-weight:bold;
}

a.buy-btn{
  display:block;
  color:#212121;
  text-align:center;
  font-size: 18px;
  width:35px;
  height:35px;
  line-height:35px;
  border-radius:50%;
  border:1px solid #212121;
  transition: all 0.2s ease-in-out;
}
a.buy-btn:hover , a.buy-btn:active, a.buy-btn:focus{
  border-color: white;
  background: dodgerblue;
  color: #fff;
  text-decoration:none;
}
.wsk-btn{
  display:inline-block;
  color:#212121;
  text-align:center;
  font-size: 18px;
  transition: all 0.2s ease-in-out;
  border-color: #FF9800;
  background: #FF9800;
  padding:12px 30px;
  border-radius:27px;
  margin: 0 5px;
}
.wsk-btn:hover, .wsk-btn:focus, .wsk-btn:active{
  text-decoration:none;
  color:#fff;
}  
.red{
  color:#F44336;
  font-size:22px;
  display:inline-block;
  margin: 0 5px;
}
@media screen and (max-width: 991px) {
  .wsk-cp-product{
    margin:40px auto;
  }
  .wsk-cp-product .wsk-cp-img{
  top:-40px;
}
.wsk-cp-product .wsk-cp-img img{
  box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
}
  .wsk-cp-product .wsk-cp-text .category > span{
  border-color:#ddd;
  box-shadow: none;
  padding: 11px 28px;
}
.wsk-cp-product .wsk-cp-text .category{
  margin-top: 0px;
}
a.buy-btn{
  border-color: #FF9800;
  background: dodgerblue;
  color: #fff;
}
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
</style>
</head>
<body>
    <form runat="server">
<!-- Add the navbar -->
<div class="navbar">
  <div class="logo"><img class="sglogo" src="SG LOGO.png" /></div>
  <ul class="list-items">
    <li><a href="Home (USER).aspx">Home</a></li>
    <li><a href="Cart.aspx">Cart</a></li>
    <li><a href="#">Your Orders</a></li>
    <li><a href="Help.aspx">Help</a></li>
    <li><a href="#" onclick="myFunction()">Log Out</a></li>
  </ul>
    <ul class="username">
        <li><asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label></li>   
    </ul>
</div>
<div class="container text-center">
    <h1 class="w3-jumbo" style="font-family:Poppins; margin-top:90px;"><b>YOUR ORDERS</b></h1>
<hr style="width:400px;border:5px solid dodgerblue; margin-left:360px; margin-top:-10px; " class="w3-round"/>
<div class="container" ng-app="invoice" style="margin-top:180px;">
  <section class="row" ng-controller="InvoiceController">
    <table class="table table-hover">
      <thead>
        <tr>
          <th>Order No</th>
          <th>Order Date</th>
          <th>Username</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Address</th>
          <th>Product</th>
          <th>Price</th>
          <th>Status</th>
        </tr>
      </thead>
      <!---where the repeater starts--->
        <asp:Repeater ID="Sales" runat="server">
             <HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
      <tbody>
        <tr ng-repeat="item in invoice.items">
          <td><%#Eval("OrderID") %></td>
          <td><%#Eval("OrderDate") %></td>
          <td><%#Eval("Username") %></td>
          <td><%#Eval("FirstName") %></td>
          <td><%#Eval("LastName") %></td>
          <td><%#Eval("Address") %></td>
          <td><%#Eval("Item1") %></td>
          <td>R<%#Eval("Total") %></td>
          <td><%#Eval("OrderStatus") %></td>
          <td><asp:Button ID="Button1" runat="server" Text="INVOICE" CssClass="btn btn-danger" OnClick="Button1_Click"/></button></td>
        </tr>
        
      </tbody>
        </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
        </asp:Repeater>
      <!---where the repeater ends--->
    </table>
  </section>
</div
</div>


<div class="shell">

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
