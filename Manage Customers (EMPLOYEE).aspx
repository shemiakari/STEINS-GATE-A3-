<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage Customers (EMPLOYEE).aspx.cs" Inherits="A3.Manage_Customers__EMPLOYEE_" %>

<!DOCTYPE html>

<html>
<head>
<title>Home</title>

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

.update{
    background-color:dodgerblue;
}
    
.hm-gradient {
    background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);
}
.darken-grey-text {
    color: #2E2E2E;
}
.input-group.md-form.form-sm.form-2 input {
    border: 1px solid #bdbdbd;
    border-top-left-radius: 0.25rem;
    border-bottom-left-radius: 0.25rem;
}
.input-group.md-form.form-sm.form-2 input.purple-border {
    border: 1px solid #9e9e9e;
}
.input-group.md-form.form-sm.form-2 input[type=text]:focus:not([readonly]).purple-border {
    border: 1px solid #ba68c8;
    box-shadow: none;
}
.form-2 .input-group-addon {
    border: 1px solid #ba68c8;
}
.danger-text {
    color: #ff3547; 
}  
.success-text {
    color: #00C851; 
}
.table-bordered.red-border, .table-bordered.red-border th, .table-bordered.red-border td {
    border: 1px solid #ff3547!important;
}        
.table.table-bordered th {
    text-align: center;
}
    .auto-style1 {
        margin-top: 0;
        margin-left: 10px;
        background-color:dodgerblue;
        font-family:Poppins;
        color:white;
        font-weight:600;
    }
    .auto-style1:hover{
        background-color:white;
        border-top-color:dodgerblue;
        border-bottom-color:dodgerblue;
        color:dodgerblue;
    }
    .searchbar{
                font-family:Poppins;
                font-size: 16px;
                margin-left:30px;
    }
.thebox{
    margin-left:10px;
}
    .auto-style2 {
        margin-left: 1097px;
        margin-top:-40px;
        font-size:16px;
    }
</style>
</head>
<body>
    <form runat="server">
<!-- Add the navbar -->
<div class="navbar">
  <div class="logo"><img class="sglogo" src="SG LOGO.png" /></div>
  <ul class="list-items">
    <li><a href="#">Home</a></li>
    <li><a href="#">Help</a></li>
    <li><a href="#" onclick="myFunction()">Log Out</a></li>
  </ul>
    <ul class="username">
        <li><asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label></li>   
    </ul>
</div>
<div class="container text-center">

</div>
<!--- Let'see man--->
         <div class="card" style="margin-top: 200px;">
                <div class="card-body">
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-md-12">
                             <h1 class="w3-jumbo" style="font-family:Poppins; margin-top:-30px; margin-left:560px;"><b>CUSTOMER ORDERS</b></h1>
<hr style="width:700px;border:5px solid dodgerblue; margin-left:500px; margin-top:-10px; " class="w3-round"/>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <div class="searchbar">
                        <p>Search Username:<asp:TextBox ID="txtUsername" runat="server" CssClass="thebox"></asp:TextBox><asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="auto-style1" Width="73px" OnClick="btnSearch_Click" /><asp:Button ID="btnReset" runat="server" Text="RESET" CssClass="auto-style1" Width="73px" OnClick="btnReset_Click" />

                        </p>
                    </div>
                    <div class="date">
                        <p class="auto-style2">Search Date:<asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="thebox"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="GO" CssClass="auto-style1" Width="73px" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="RESET" CssClass="auto-style1" Width="73px" OnClick="btnReset_Click" />

                    </div>
                    <!-- Grid row -->
                    <!--Table-->
                    <table class="table table-hover table-responsive mb-0">
                        <!--Table head-->
                        <thead>
                            <tr>
                                <th class="th-lg"><a>Order No</a></th>
                                <th class="th-lg"><a href="">Username</a></th>
                                <th class="th-lg"><a href="">Order Date</a></th>
                                <th class="th-lg"><a href="">First Name</a></th>
                                <th class="th-lg"><a href="">Last Name</a></th>
                                <th class="th-lg"><a href="">Address</a></th>
                                <th class="th-lg"><a href="">Product Name</a></th>
                                <th class="th-lg"><a href="">Total</a></th>
                                <th class="th-lg"><a href="">Order Status</a></th>
                            </tr>
                        </thead>
                        <!--Table head-->
                        <!--Table body-->
                        <asp:Repeater ID="Sales" runat="server">
             <HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
                        <tbody>
                            <tr>
                                 <td><%#Eval("OrderID") %></td>
          <td><%#Eval("Username") %></td>
          <td><%#Eval("OrderDate") %></td>
          <td><%#Eval("FirstName") %></td>
          <td><%#Eval("LastName") %></td>
          <td><%#Eval("Address") %></td>
          <td><%#Eval("Item1") %></td>
          <td>R<%#Eval("Total") %></td>
          <td><%#Eval("OrderStatus") %></td>
          <td>
              <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" /></td>
                                          </tr>
                        </tbody>
         </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
        </asp:Repeater>
      <!---where the repeater ends--->
                        <!--Table body-->
                    </table>
                    <!--Bottom Table UI-->
                   
                    <!--Bottom Table UI-->
                </div>
            </div>
          
<!--- End---->      
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
    <script>

</script>

    
</body>
</html>


