<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing Page.aspx.cs" Inherits="A3.Landing_Page" %>

<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Landing Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="icon" type="image/png" href="SG LOGO.png" />


<style>

@import url("https://fonts.googleapis.com/css?family=Lato");
*,
*:before,
*:after {
	margin: 0;
	padding: 0;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	margin: 0 auto;
	background-color: #ffffff;
	font-size: 16px;
	font-family: "Poppins", sans-serif;
	overflow-x: hidden;
}

header nav {
	background-color: white;
	width: 100%;
	font-size: 0;
	vertical-align: middle;
	height: 6.6rem;
	line-height: 6.6rem;
	-webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.4);
	box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.4);
}

header nav .nav-common {
	display: inline-block;
}


header nav ul {
	width: 65%;
	list-style: none;
	/*  font-size: 0;*/
	font-size: 23px;
}

header nav ul li {
	display: inline-block;
	width: 18%;
	text-align: center;
	

}

header nav ul li a {
	text-transform: uppercase;
	color: black;
	font-size: 17px;
	font-weight: 500;
	text-decoration: none;

}

header nav ul li a:hover {
	color: dodgerblue;
}

header nav .nav-icon {
	width: 7.5%;
	text-align: center;
	font-size: 16px;
}

@media only screen and (max-width: 768px) {
	header nav {
		height: 5rem;
		line-height: 5rem;
	}
	header nav .logo {
		width: 45%;
	}
	header nav .nav-icon img {
		margin-top: 1.4rem;
	}
	header nav ul {
		width: 20%;
		display: none;
	}
	header nav ul li {
		display: none;
	}
	header nav .cart {
		width: 15%;
		text-align: right;
	}
	header nav .menu {
		width: 20%;
	}
}

#header-hero {
	width: 100%;
	display: block;
	position: relative;
}

#header-hero .header-bg {
	width: 100%;
	height: auto;
}

#header-hero .header-bg img {
	width: 100%;
	height: auto;
}

#header-hero .header-content {
	width: 100%;
	height: 100%;
	background-color: rgba(255, 255, 255, 0.1);
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.4);
	position: absolute;
	top: 0%;
	text-align: center;
	color: #f2f2f2;
	padding: 0rem 0.4rem;
}

#header-hero .header-content p.heading-1 {
	text-transform: uppercase;
	margin: 0 auto;
	font-family: Poppins, sans-serif;
	font-size: 1.5rem;
	font-weight: 500;
	margin-bottom: 2vw;
	padding-top: 9vw;
}

#header-hero .header-content h1 {
	margin: 0 auto;
	font-family: Poppins, sans-serif;
	font-size: 3rem;
	text-transform: uppercase;
	margin-bottom: 2.4vw;
}

#header-hero .header-content h1 .logo-style {
	color: #ce0095;
}

#header-hero .header-content p.description {
	margin: 0 auto;
	width: 30%;
	font-family: Poppins;
	font-size: 1.4rem;

	margin-bottom: 5vw;
}


@media only screen and (max-width: 1440px) {
	#header-hero .header-content p.description {
		width: 40%;
		margin-bottom: 3rem;
		font-size: 1.2rem;
	}
	#header-hero .header-content p.heading-1 {
		padding-top: 8vw;
	}
}

@media only screen and (max-width: 1024px) {
	#header-hero .header-bg {
		width: 100%;
		height: auto;
		overflow: hidden;
	}
	#header-hero .header-bg img {
		width: 100rem;
		height: 40rem;
		margin-left: -50%;
	}
	#header-hero .header-content p.heading-1 {
		padding-top: 20vw;
	}
	#header-hero .header-content p.description {
		width: 60%;
		margin-bottom: 4rem;
	}
}

@media only screen and (max-width: 480px) {
	#header-hero .header-content h1 {
		font-size: 2rem;
		padding: 1rem 0rem;
	}
	#header-hero .header-bg img {
		width: 100rem;
		height: 40rem;
		margin-left: -140%;
	}
	#header-hero .header-content p.description {
		width: 50%;
		margin-bottom: 3rem;
		text-align: left;
	}
	#header-hero .header-content .button {
		width: 8rem;
		padding: 0.6rem;
	}
	#header-hero .header-content .button p {
		font-size: 0.8rem;
	}
}

#summer-collection {
	width: 110%;
	display: block;
	margin: 6rem 0rem;
}

#summer-collection .container {
	margin: 0 auto;
	width: 80%;
	background-color: #ffffff;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	margin-top:-50px;
}

#summer-collection .container .sc-content {
	width: 50%;
	padding-top: 3.4rem;
	padding-right: 3rem;
	padding-bottom: 2rem;
}

#summer-collection .container .sc-content h1 {
	font-family: Poppins;
	color: #000000;
	font-size: 4rem;
	font-weight: 800;
	letter-spacing: 1rem;
	line-height: 6rem;
	text-transform: uppercase;
	margin-bottom: 2vw;
}

#summer-collection .container .sc-content p.description {
	font-family: Poppins;
	color: rgba(89, 89, 89, 0.8);
	font-size: 1rem;
	line-height: 2rem;
	margin-bottom: 4vw;
	padding-right: 4rem;
}

#summer-collection .container .sc-content a {
	border-bottom: 2px solid #a61458;
	text-decoration: none;
	font-family: Poppins;
	color: #000000;
	font-weight: 400;
	text-transform: uppercase;
}

#summer-collection .container .sc-media {
	width: 50vw;
}

#summer-collection .container .sc-media .sc-media-bg {
	width: 100%;
	height: 130px;
	padding-top: 3vw;
}

#summer-collection .container .sc-media .sc-media-bg img {
	width: 100%;
	height: auto;
}

@media only screen and (max-width: 1024px) {
	#summer-collection {
		width: 100vw;
		display: block;
		margin-top: 0rem;
	}
	#summer-collection .container {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-ms-flex-direction: column;
		flex-direction: column;
	}
	#summer-collection .container .sc-content {
		width: 80vw;
		padding: 8rem 2rem 2rem;
	}
	#summer-collection .container .sc-media {
		width: 80vw;
	}
	#summer-collection .container .sc-content h1 {
		font-size: 5.6vw;
		letter-spacing: 1rem;
		line-height: 4rem;
	}
}

@media only screen and (max-width: 768px) {
	#summer-collection .container .sc-content h1 {
		font-size: 5.6vw;
		letter-spacing: 0.6rem;
		line-height: 2.4rem;
		margin-bottom: 1rem;
	}
}

@media only screen and (max-width: 480px) {
	#summer-collection .container .sc-content p.description {
		font-size: 1rem;
		line-height: 1.8rem;
		margin-bottom: 4vw;
		padding-right: 1.2rem;
		text-align: justify;
		margin-bottom: 2rem;
	}
}

#products {
	width: 100%;
	margin-top:250px;
}

#products .container {
	display: block;
	width: 80%;
	margin: 0 auto;
	font-size: 0;
}

#products .container .products-header {
	font-size: 16px;
	text-align: center;
	margin-bottom: 3rem;
}

#products .container .products-header h2 {
	padding: 2rem 1rem;
	text-transform: uppercase;
	font-family: Poppins;
	color: #000000;
	font-size: 1.875rem;
	font-weight: 400;
	letter-spacing: 0.2rem;
	line-height: 1;
	text-align: center;
}

#products .container .products-header p {
	font-family: Poppins;
	color: rgba(89, 89, 89, 1);
	font-size: 1rem;
	line-height: 1.5;
	text-align: center;
}

#products .container .product {
	width: 25%;
	display: inline-block;
	font-size: 16px;
	text-align: center;
	padding: 1.8rem;
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 1;
	font-family:Poppins;
}

#products .container .product:hover {
	-webkit-transform: scale(0.9);
	transform: scale(0.9);
	opacity: 0.8;
	-webkit-transition: opacity 800ms ease-in-out 0s;
	transition: opacity 800ms ease-in-out 0s;
	-webkit-transition: -webkit-transform 1s ease-in-out 0s;
	transition: -webkit-transform 1s ease-in-out 0s;
	transition: transform 1s ease-in-out 0s;
	transition: transform 1s ease-in-out 0s, -webkit-transform 1s ease-in-out 0s;
	cursor: pointer;
}

#products .container .product figure img {
	width: 100%;
	height: auto;
}

#products .container .product figure figcaption {
	font-family: Poppins;
	color: rgba(89, 89, 89, 1);
	font-size: 0.8rem;
	font-weight: 600;
	letter-spacing: 0.02rem;
	text-align: center;
	padding: 1rem 0rem 0rem;
	text-transform: uppercase;
}

@media only screen and (max-width: 1024px) {
	#products .container .product {
		width: 50%;
		padding: 3rem;
	}
}

@media only screen and (max-width: 768px) {
	#products .container .product {
		width: 50%;
		padding: 2rem;
	}
}

@media only screen and (max-width: 480px) {
	#products .container .product {
		width: 100%;
	}
}

#collections {
	width: 100%;
	display: block;
	margin: 6rem 0rem;
	/*  background-color:  #f5f2f1;*/
	padding: 1.4rem 0rem;
}

#collections .container {
	margin: 0 auto;
	width: 80%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
}

#collections .container .c-1 {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	padding: 3rem 0rem 0rem 1rem;
	/*  background-color:  #f5f2f1;*/
}

#collections .container .c-1 .c-1-image-holder {
	width: 100%;
	height: auto;
}

#collections .container .c-1 .c-1-image-holder img {
	width: 100%;
	height: auto;
}

#collections .container .c-2 .c-2-image-holder {
	width: 45%;
	height: auto;
	margin: 3rem auto;
}

#collections .container .c-2 .c-2-image-holder img {
	width: 100%;
	height: auto;
}

#collections .container .c-2 {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	padding: 1rem;
	/*  background-color:  #f5f2f1;*/
}

#collections .container .c-2 h2 {
	padding: 1rem 0rem;
	text-align: right;
	font-family: Poppins;
	font-size: 1.8rem;
	letter-spacing: 0.094rem;
	text-transform: uppercase;
}

#collections .container .c-2 hr {
	width: 30%;
	margin-left: 70%;
	display: block;
	height: 1px;
	border: 0;
	border-top: 0.1rem solid #a61458;
	padding: 0;
	margin-bottom: 4rem;
	color:dodgerblue;
}

#collections .container .c-2 p.button {
	background-color: dodgerblue;
	-webkit-box-shadow: 0px 1px 3.92px 0.08px rgba(204, 204, 153, 0.35);
	box-shadow: 0px 1px 3.92px 0.08px rgba(204, 204, 153, 0.35);
	width: 45%;
	text-align: center;
	padding: 0.8rem 0.2rem;
	color: #ffffff;
	text-transform: uppercase;
	font-size: 0.7rem;
	margin: 0 auto;
	margin-right: -1%;
	font-weight: 600;
	letter-spacing: 0.1rem;
}

#collections .container .c-2 p.button:hover {
	cursor: pointer;
	background-color: #ffffff;
	color: #ff981f;
	-webkit-transition: background-color 1s ease-in-out 0s;
	-o-transition: background-color 1s ease-in-out 0s;
	transition: background-color 1s ease-in-out 0s;
	-webkit-transition: color 400ms ease-in-out 0s;
	-o-transition: color 400ms ease-in-out 0s;
	transition: color 400ms ease-in-out 0s;
}

#collections .container .c-2 .left {
	position: relative;
	right: -6rem;
	-webkit-box-shadow: 1px 1px 8px rgba(0, 0, 0, 0.2);
	box-shadow: 1px 1px 8px rgba(0, 0, 0, 0.2);
}

#collections .container .c-2 .right {
	position: relative;
	top: -2rem;
	right: 2rem;
	-webkit-box-shadow: 1px 1px 8px rgba(0, 0, 0, 0.2);
	box-shadow: 1px 1px 8px rgba(0, 0, 0, 0.2);
}

@media only screen and (max-width: 1024px) {
	#collections .container {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-ms-flex-direction: column;
		flex-direction: column;
	}
	#collections .container .c-1 {
		-webkit-box-flex: 1;
		-ms-flex: 1;
		flex: 1;
		padding: 4rem 0rem 0rem 0rem;
	}
	#collections .container .c-2 .c-2-image-holder {
		width: 50%;
		height: auto;
		margin: 3rem auto;
	}
}

@media only screen and (max-width: 768px) {
	#collections .container .c-2 .c-2-image-holder {
		width: 70%;
		height: auto;
		margin: 3rem auto;
	}
	#collections .container .c-2 .left {
		position: relative;
		right: 0rem;
		margin-bottom: 2rem;
	}
	#collections .container .c-2 .right {
		position: relative;
		top: 0rem;
		right: 0rem;
	}
	#collections .container .c-2 p.button {
		width: 60%;
		padding: 0.8rem 2rem;
	}
}

#blog {
	width: 100%;
	display: block;
	margin: 6rem 0rem 0rem;
	background-color: #f2f2f2;
	padding: 3rem 0rem 6rem;
	
}

#blog .container {
	margin: 0 auto;
	width: 80%;
	background-color: #f2f2f2;
}

#blog .container .blog-header {
	text-align: center;
	margin-bottom: 3rem;
}

#blog .container .blog-header h2 {
	padding: 2rem 1rem;
	text-transform: uppercase;
	font-family: "Franklin Gothic Medium";
	color: #000000;
	font-size: 1.875rem;
	font-weight: 400;
	letter-spacing: 0.2rem;
	line-height: 1;
	text-align: center;
}

#blog .container .blog-header p {
	font-family: Cambria;
	color: rgba(89, 89, 89, 1);
	font-size: 1rem;
	font-style: italic;
	line-height: 1.5;
	text-align: center;
}

#blog .container .blog-content {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
}

#blog .container .blog-content .blog-1 {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	padding: 2rem 0rem;
	padding-left: 0%;
}

#blog .container .blog-content .blog-1 .blog-1-image-holder {
	width: 45%;
	height: auto;
	font-size: 16px;
}

#blog .container .blog-content .blog-1 .blog-1-image-holder img {
	width: 100%;
	height: auto;
}

#blog .container .blog-content .blog-1 .blog-1-content {
	width: 50%;
	background-color: #fff;
	margin-left: -10%;
	margin-top: 4%;
	padding: 4%;
	-webkit-box-shadow: 1px 1px 6px rgba(0, 0, 0, 0.4);
	box-shadow: 1px 1px 6px rgba(0, 0, 0, 0.4);
}

#blog .container .blog-content .blog-1 .blog-1-content h4 {
	text-transform: uppercase;
	color: #999999;
	font-weight: 400;
	font-size: 0.8rem;
	margin-bottom: 1rem;
}

#blog .container .blog-content .blog-1 .blog-1-content h3 {
	text-transform: uppercase;
	padding-bottom: 6%;
}

#blog .container .blog-content .blog-1 .blog-1-content p.description {
	font-family: Cambria;
	font-style: italic;
	padding-bottom: 8%;
}

#blog .container .blog-content .blog-1 .blog-1-content p.button {
	width: 50%;
	text-align: center;
	font-size: 0.7rem;
	text-transform: uppercase;
	font-weight: 500;
	padding: 4%;
	color: #fff;
	background-color: rgba(166, 20, 88, 0.8);
	-webkit-box-shadow: 0px 1px 3.84px 0.16px rgba(0, 0, 0, 0.35);
	box-shadow: 0px 1px 3.84px 0.16px rgba(0, 0, 0, 0.35);
}

#blog .container .blog-content .blog-1 .blog-1-content p.button:hover {
	cursor: pointer;
	background-color: #ffffff;
	color: rgba(166, 20, 88, 0.8);
	-webkit-transition: background-color 1s ease-in-out 0s;
	-o-transition: background-color 1s ease-in-out 0s;
	transition: background-color 1s ease-in-out 0s;
	-webkit-transition: color 400ms ease-in-out 0s;
	-o-transition: color 400ms ease-in-out 0s;
	transition: color 400ms ease-in-out 0s;
}

#blog .container .blog-content .blog-2 {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	padding: 2rem 0rem;
	padding-left: 5%;
}

#blog .container .blog-content .blog-2 .blog-2-image-holder {
	width: 45%;
	height: auto;
}

#blog .container .blog-content .blog-2 .blog-2-image-holder img {
	width: 100%;
	height: auto;
}

#blog .container .blog-content .blog-2 .blog-2-content {
	width: 50%;
	background-color: #fff;
	margin-left: -10%;
	margin-top: 4%;
	padding: 4%;
	-webkit-box-shadow: 1px 1px 6px rgba(0, 0, 0, 0.4);
	box-shadow: 1px 1px 6px rgba(0, 0, 0, 0.4);
}

#blog .container .blog-content .blog-2 .blog-2-content h4 {
	text-transform: uppercase;
	color: #999999;
	font-weight: 400;
	font-size: 0.8rem;
	margin-bottom: 1rem;
}

#blog .container .blog-content .blog-2 .blog-2-content h3 {
	text-transform: uppercase;
	padding-bottom: 6%;
}

#blog .container .blog-content .blog-2 .blog-2-content p.description {
	font-family: Cambria;
	font-style: italic;
	padding-bottom: 8%;
}

#blog .container .blog-content .blog-2 .blog-2-content p.button {
	width: 50%;
	text-align: center;
	font-size: 0.7rem;
	text-transform: uppercase;
	font-weight: 500;
	padding: 4%;
	color: #fff;
	background-color: rgba(166, 20, 88, 0.8);
	-webkit-box-shadow: 0px 1px 3.84px 0.16px rgba(0, 0, 0, 0.35);
	box-shadow: 0px 1px 3.84px 0.16px rgba(0, 0, 0, 0.35);
}

#blog .container .blog-content .blog-2 .blog-2-content p.button:hover {
	cursor: pointer;
	background-color: #ffffff;
	color: rgba(166, 20, 88, 0.8);
	-webkit-transition: background-color 1s ease-in-out 0s;
	-o-transition: background-color 1s ease-in-out 0s;
	transition: background-color 1s ease-in-out 0s;
	-webkit-transition: color 400ms ease-in-out 0s;
	-o-transition: color 400ms ease-in-out 0s;
	transition: color 400ms ease-in-out 0s;
}

@media only screen and (max-width: 1024px) {
	#blog .container .blog-content {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-ms-flex-direction: column;
		flex-direction: column;
	}
	#blog .container .blog-content .blog-1 {
		-ms-flex-preferred-size: auto;
		flex-basis: auto;
		margin-bottom: 8%;
	}
	#blog .container .blog-content .blog-2 {
		-ms-flex-preferred-size: auto;
		flex-basis: auto;
	}
	#blog .container .blog-content .blog-1 .blog-1-image-holder {
		width: 45%;
		height: auto;
		font-size: 16px;
		margin-left: 5%;
	}
	#blog .container .blog-content .blog-2 .blog-2-image-holder {
		width: 45%;
		height: auto;
		font-size: 16px;
		margin-left: 5%;
	}
}

@media only screen and (max-width: 480px) {
	#blog .container .blog-content .blog-1 {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-ms-flex-direction: column;
		flex-direction: column;
	}
	#blog .container .blog-content .blog-1 .blog-1-image-holder {
		width: 100%;
		height: auto;
	}
	#blog .container .blog-content .blog-1 .blog-1-image-holder {
		margin-left: 0%;
	}
	#blog .container .blog-content .blog-1 .blog-1-content {
		width: 100%;
		margin-left: 0%;
		margin-top: -1%;
		padding: 8%;
	}
	#blog .container .blog-content .blog-1 .blog-1-content p.button {
		font-size: 0.6rem;
		padding: 4%;
	}
	#blog .container .blog-content .blog-2 {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-ms-flex-direction: column;
		flex-direction: column;
	}
	#blog .container .blog-content .blog-2 .blog-2-image-holder {
		width: 100%;
		height: auto;
	}
	#blog .container .blog-content .blog-2 .blog-2-image-holder {
		margin-left: 0%;
	}
	#blog .container .blog-content .blog-2 .blog-2-content {
		width: 100%;
		margin-left: 0%;
		margin-top: -1%;
		padding: 8%;
	}
	#blog .container .blog-content .blog-2 .blog-2-content p.button {
		font-size: 0.6rem;
		padding: 4%;
	}
}



footer {
	background-color: black;
	font-size: 0;
	padding: 1.6rem 0rem;
	width: 100%;
}

footer p {
	font-family: Poppins;
	color: #f5f2f1;
	font-weight: 400;
	font-size: 16px;
	width: 10%;
	display: inline-block;
	text-align: center;
}

footer .copy-right {
	width: 80%;
	text-align: left;
	padding-left: 4rem;
}

@media only screen and (max-width: 920px) {
	footer p {
		width: 100%;
		text-align: center;
		margin-bottom: 0.4rem;
	}
	footer .copy-right {
		width: 100%;
		text-align: center;
		margin-left: -2.2rem;
	}
}

.back-to-top {
	padding: 1rem;
	position: fixed;
	bottom: 8%;
	right: 2%;
	z-index: 2;
	opacity: 0.2;
	background-color: rgba(255, 255, 255, 0);
}

.back-to-top:hover {
	-webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.2);
	box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.2);
	background-color: rgba(255, 255, 255, 0.4);
	opacity: 1;
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


.logo-img{
    float: left;
    position: relative;
    margin: -25px 15px 15px 10px;
}


button {
  margin: 20px;
  
}
.custom-btn {
  width: 130px;
  height: 40px;
  color: #fff;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
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


/* 5 */
.btn-5 {
  width: 130px;
  height: 40px;
  line-height: 42px;
  padding: 0;
  border: none;
  background-color:dodgerblue;
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
.sglogo{
    width:65px;
    height:60px;
	margin-top:10px;
	margin-left:10px;
}


</style>
</head>

<body>
	<header>
		<nav id="nav">
			 <a href="Landing Page.aspx"><img class="sglogo" src="SG LOGO.png" /></a>
			<ul class="nav-common">
				<li><a href="#">home</a></li>
				<li><a href="https://apps.microsoft.com/store/apps">GET THE APP</a></li>
				<li><a href="#blog">Help</a></li>
				<li><a href="#contact">contact</a></li>
			</ul>

  <button class="custom-btn btn-5" onclick="window.location.href= 'Log In.aspx';"><span>Log In</span></button>
  <button class="custom-btn btn-5" onclick="window.location.href= 'Sign Up.aspx';"><span>Sign Up</span></button>

		</nav>
		
	</header>
	<section id="summer-collection">
		<div class="container">
			<div class="sc-content">
				<h1>STEINS GATE.</h1>
				<p class="description">Steins Gate is an up and coming clothing website designed to provide its users with the best service they could ask for. With a wide range of exclusive labels and brands, as well as generic 
					affordable clothing, the site has it all. Look no further for your clothing needs. 
				</p>
				<a href="Sign Up.aspx">discover now</a> </div>
			<div class="sc-media">
				<div class="sc-media-bg"> <img src="Manchester.jpg" alt="sc-image" class="auto-style1" /> </div>
			</div>
		</div>
	</section>
	<section id="products">
		<div class="container">
			<div class="products-header">
				<h2>popular products</h2>
				<p>We offer a wide variety of categories. You name it, we have it.</p>
			</div>
			<div class="product product-1">
				<figure> <img src="photo 1.jpg" alt="product-image">
					<figcaption>Hoodies</figcaption>
					<figcaption>R200.00</figcaption>
				</figure>
			</div>
			<div class="product product-2">
				<figure> <img src="Bruno.jpg" alt="product-image" style="height:440px;">
					<figcaption>Manchester United Jersey</figcaption>
					<figcaption>R 500.00</figcaption>
				</figure>
			</div>
			<div class="product product-3">
				<figure> <img src="photo 3.jpg" alt="product-image">
					<figcaption>Women's hoodies</figcaption>
					<figcaption>R150.00</figcaption>
				</figure>
			</div>
			<div class="product product-4">
				<figure> <img src="photo 4.jpg" alt="product-image">
					<figcaption>Men's Sweaters</figcaption>
					<figcaption>R399.00</figcaption>
				</figure>
			</div>
		</div>
	</section>
	<section id="collections">
		<div class="container">
			<div class="c-1">
				<div class="c-1-image-holder"> <img src="Madrid.png" alt="image" style="width:900px;"> </div>
			</div>
			<div class="c-2">
				<h2>featured collection</h2>
				<hr />
				<div class="c-2-image-holder"> <img class="left" src="Sancho.jpg" alt="" style="width:400px;"><img class="right" src="Antony.jpg"
					 alt="" style="width:300px;"></div>
				<a href="Log In.aspx"><p class="button">view all collections</p></a>
			</div>
		</div>
	</section>
	<section id="blog">
		<div class="container">
			<div class="blog-header">
				<h2>THE MAN IN CHARGE</h2>
				<p>Meet the founder and creator of Steins Gate.</p>
			</div>
			<div class="blog-content">
				<div class="blog-1">
					<div class="blog-1-image-holder"> <img src="Elvin 2.jpg" alt="image" style="width:400px;"> </div>
					<div class="blog-1-content">
						<h4>LEAD DESIGNER</h4>
						<h3>ELVIN SHEMI</h3>
						<p class="description">Click the button below to view his list of achievements and references.</p>
						<p class="button" style="background-color:dodgerblue; color:white; font-family:Poppins; font-size:16px;">view</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<p class="copy-right"><img src="https://res.cloudinary.com/de8cuyd0n/image/upload/v1520412543/E-commerce%20landing%20page/icons/copy-right-img_1x.png" alt="copy right image" /> Property of Steins Gate. </p>
	</footer>
	<div class="back-to-top"><a href="#nav"> <img title="Back to Top." src="https://res.cloudinary.com/de8cuyd0n/image/upload/v1520412541/E-commerce%20landing%20page/icons/back_-_top_1x.png" alt="back to top"></a> </div>
</body>

</html>