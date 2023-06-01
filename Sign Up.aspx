<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="A3.Sign_Up" %>

<!DOCTYPE html>

<html lang="en" >
<head runat="server">
  <meta charset="UTF-8">
  <title>Sign Up</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="icon" type="image/png" href="SG LOGO.png" />


<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">

<style>
body {
  background-image: linear-gradient(135deg, #FAB2FF 10%, #1904E5 100%);
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  font-family: "Poppins", sans-serif;
  color: #333333;
}

.box-form {
  margin: 0 auto;
  width: 80%;
  background: #FFFFFF;
  border-radius: 10px;
  overflow: hidden;
  display: flex;
  flex: 1 1 100%;
  align-items: stretch;
  justify-content: space-between;
  box-shadow: 0 0 20px 6px #090b6f85;
}
@media (max-width: 980px) {
  .box-form {
    flex-flow: wrap;
    text-align: center;
    align-content: center;
    align-items: center;
  }
}
.box-form div {
  height: auto;
}
.box-form .left {
  color: #FFFFFF;
  background-size: cover;
  background-repeat: no-repeat;
  background-image: url("https://i.pinimg.com/736x/5d/73/ea/5d73eaabb25e3805de1f8cdea7df4a42--tumblr-backgrounds-iphone-phone-wallpapers-iphone-wallaper-tumblr.jpg");
  overflow: hidden;
}
.box-form .left .overlay {
  padding: 30px;
  width: 100%;
  height: 100%;
  background: #5961f9ad;
  overflow: hidden;
  box-sizing: border-box;
}
.box-form .left .overlay h1 {
  font-size: 10vmax;
  line-height: 1;
  font-weight: 900;
  margin-top: 40px;
  margin-bottom: 20px;
}
.box-form .left .overlay span p {
  margin-top: 30px;
  font-weight: 900;
}
.box-form .left .overlay span a {
  background: #3b5998;
  color: #FFFFFF;
  margin-top: 10px;
  padding: 14px 50px;
  border-radius: 100px;
  display: inline-block;
  box-shadow: 0 3px 6px 1px #042d4657;
}
.box-form .left .overlay span a:last-child {
  background: #1dcaff;
  margin-left: 30px;
}
.box-form .right {
  padding: 40px;
  overflow: hidden;
}
@media (max-width: 980px) {
  .box-form .right {
    width: 100%;
  }
}
.box-form .right h5 {
  font-size: 6vmax;
  line-height: 0;
}
.box-form .right p {
  font-size: 14px;
  color: #B0B3B9;
}
.box-form .right .inputs {
  overflow: hidden;
}
.box-form .right input {
  width: 100%;
  padding: 10px;
  margin-top: 7px;
  font-size: 16px;
  border: none;
  outline: none;
  border-bottom: 2px solid #B0B3B9;
}
.box-form .right .remember-me--forget-password {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.box-form .right .remember-me--forget-password input {
  margin: 0;
  margin-right: 7px;
  width: auto;
}
.box-form .right button {
  float: right;
  color: #fff;
  font-size: 16px;
  padding: 12px 35px;
  border-radius: 50px;
  display: inline-block;
  border: 0;
  outline: 0;
  box-shadow: 0px 4px 20px 0px #49c628a6;
  background-color: dodgerblue;
}
.box-form .right button:hover {
  float: right;
  color: dodgerblue;
  font-size: 16px;
  padding: 12px 35px;
  border-radius: 50px;
  display: inline-block;
  border: 0;
  outline: 0;
  box-shadow: 0px 4px 20px 0px #49c628a6;
  background-color: white;
}

label {
  display: block;
  position: relative;
  margin-left: 30px;
}

label::before {
  content: ' \f00c';
  position: absolute;
  font-family: FontAwesome;
  background: transparent;
  border: 3px solid #70F570;
  border-radius: 4px;
  color: transparent;
  left: -30px;
  transition: all 0.2s linear;
}

label:hover::before {
  font-family: FontAwesome;
  content: ' \f00c';
  color: #fff;
  cursor: pointer;
  background: #70F570;
}

label:hover::before .text-checkbox {
  background: #70F570;
}

label span.text-checkbox {
  display: inline-block;
  height: auto;
  position: relative;
  cursor: pointer;
  transition: all 0.2s linear;
}

label input[type="checkbox"] {
  display: none;
}
.ddl{
	width: 100%;
  padding: 10px;
  margin-top: 25px;
  font-size: 16px;
  border: none;
  outline: none;
  border-bottom: 2px solid #B0B3B9;

}
.butts{
	float: right;
  color: #fff;
  font-size: 16px;
  padding: 12px 35px;
  border-radius: 50px;
  display: inline-block;
  border: 0;
  outline: 0;
  box-shadow: 0px 4px 20px 0px #49c628a6;
  background-color: dodgerblue;
}
.butts:hover{
	float: right;
  color: dodgerblue;
  font-size: 16px;
  padding: 12px 35px;
  border-radius: 50px;
  display: inline-block;
  border: 0;
  outline: 0;
  box-shadow: 0px 4px 20px 0px #49c628a6;
  background-color: white;
}
</style>
</head>
<body>
<form runat="server">
<!-- partial:index.partial.html -->
<div class="box-form">
	<div class="left">
		<div class="overlay">
		<h1 style="font-size:74px;">Steins Gate.</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
		Curabitur et est sed felis aliquet sollicitudin</p>
		<span>
			<a href="Landing Page.aspx"> Return Home</a>
		</span>
		</div>
	</div>
	
	
		<div class="right">
		<h5 style="font-size:74px; margin-top:60px;" >Sign Up</h5>
		<p>Already have an account? <a href="Log In.aspx">Log In.</a> Just click the Log In link to return to the log in page. </p>
		<div class="inputs">
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username required." ForeColor="Red" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
			<asp:TextBox ID="txtUsername" Placeholder="Username" runat="server"></asp:TextBox>
			<br/>
			<asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl">
				<asp:ListItem Text="Role" Value="0"></asp:ListItem>
  <asp:ListItem value="1" Text="Customer" Enabled="True"  autopostback="true"></asp:ListItem>
  <asp:ListItem value="2" Text="Employee" Enabled="True"  autopostback="true"></asp:ListItem>
  <asp:ListItem value="3" Text="Administrator" Enabled="True"  autopostback="true"></asp:ListItem>
			</asp:DropDownList>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Choose a role." ControlToValidate="DropdownList1" InitialValue="0" ForeColor="Red"></asp:RequiredFieldValidator>
			<br />
			<asp:TextBox ID="txtEmail" Placeholder="Youremail@example.com" TextMode="Email" runat="server"></asp:TextBox><br/>
			<asp:TextBox ID="txtPassword" Placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter password." ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
			<br />
			<asp:TextBox ID="txtConfirmPassword" Placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match." ForeColor="Red" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
		</div>
			
			<br><br>
			
		<div class="remember-me--forget-password">
				<!-- Angular -->
	<label>
		<input type="checkbox" name="item" checked/>
		<span class="text-checkbox">Remember me</span>
	</label>
		</div>
			
			<br>
			<asp:Button ID="btnLogin" runat="server" Text="Sign Up" CssClass="butts" OnClick="btnLogin_Click" />
	</div>
	
</div>
<!-- partial -->
 </form> 
</body>
</html>
