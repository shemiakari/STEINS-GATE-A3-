<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DEPT.aspx.cs" Inherits="A3.DEPT" %>

<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GETTING STARTED WITH BRACKETS</title>
        <meta name="description" content="An interactive getting started guide for Brackets.">
        <link rel="stylesheet" href="main.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
        <link rel="stylesheet" href="">
<style>
    @import url('https://fonts.googleapis.com/css2?family=Barlow&display=swap');

body{
  font-family: 'Barlow', sans-serif;
}

a:hover{
  text-decoration: none;
}

.border-left{
  border-left: 2px solid var(--primary) !important;
}




.overlay{
  background-color: rgb(0 0 0 / 45%);
  z-index: 99;
}

/*=== MY OWN ====*/
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

.addon{
    margin-left:1300px;
    margin-top:-60px;
}
.button{
    width:400px;
    margin-top:4
}
</style>
    </head>
    <body>
        <form runat="server">
        <div class="navbar">
  <div class="logo"><img class="sglogo" src="SG LOGO.png" /></div>
  <ul class="list-items">
    <li><a href="#">Home</a></li>
    <li><a href="#">Projections</a></li>
    <li><a href="#">Help</a></li>
    <li><a href="#" onclick="myFunction()">Log Out</a></li>
  </ul>
</div>
        <div class="container-fluid" style="margin-top:40px;">
  <div class="row">
 
      <!-- main content -->
      <main class="container-fluid">
        <section class="row">
          <div class="col-md-6 col-lg-4" >
            <!-- card -->
            <article class="p-4 rounded shadow-sm border-left
               mb-4" >
              <a href="#" class="d-flex align-items-center">
                <span class="bi bi-box h5" ></span>
                <h5 class="ml-2">Add Department</h5>
              </a>
            </article>
          </div>
          <div class="col-md-6 col-lg-4">
            <article class="p-4 rounded shadow-sm border-left mb-4">
              <a href="#" class="d-flex align-items-center">
                <span class="bi bi-person h5"></span>
                <h5 class="ml-2">Update Department</h5>
              </a>
            </article>
          </div>
          <div class="col-md-6 col-lg-4">
            <article class="p-4 rounded shadow-sm border-left mb-4">
              <a href="#" class="d-flex align-items-center">
                <span class="bi bi-person-check h5"></span>
                <h5 class="ml-2">Delete Department</h5>
              </a>
            </article>
          </div>
        </section>
        
        <div class="jumbotron jumbotron-fluid rounded bg-white border-0 shadow-sm border-left px-4" style="width:70%;" >
            <asp:Repeater ID="departments" runat="server">
<HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
  <div class="container" >
    <h1 class="display-4 mb-2 text-primary" style="margin-left:-40px;">
        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label></h1>
    <p class="lead text-muted" style="margin-left:-40px;">
        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label></p>
  </div>
        
</ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:Repeater>
</div>
      </main>
    </div>
  </div>
</form>
<script>
  $(document).ready(()=>{
  
  $('#open-sidebar').click(()=>{
     
      // add class active on #sidebar
      $('#sidebar').addClass('active');
      
      // show sidebar overlay
      $('#sidebar-overlay').removeClass('d-none');
    
   });
  
  
   $('#sidebar-overlay').click(function(){
     
      // add class active on #sidebar
      $('#sidebar').removeClass('active');
      
      // show sidebar overlay
      $(this).addClass('d-none');
    
   });
  
});      
</script>  
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    </body>
</html>
<!--

    [[[[[[[[[[[[[[[      ]]]]]]]]]]]]]]]
    [::::::::::::::      ::::::::::::::]
    [::::::::::::::      ::::::::::::::]
    [::::::[[[[[[[:      :]]]]]]]::::::]
    [:::::[                      ]:::::]
    [:::::[                      ]:::::]
    [:::::[                      ]:::::]
    [:::::[                      ]:::::]
    [:::::[     CODE THE WEB     ]:::::]
    [:::::[  http://brackets.io  ]:::::]
    [:::::[                      ]:::::]
    [:::::[                      ]:::::]
    [:::::[                      ]:::::]
    [:::::[                      ]:::::]
    [::::::[[[[[[[:      :]]]]]]]::::::]
    [::::::::::::::      ::::::::::::::]
    [::::::::::::::      ::::::::::::::]
    [[[[[[[[[[[[[[[      ]]]]]]]]]]]]]]]

-->

