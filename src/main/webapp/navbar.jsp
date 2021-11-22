<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset="UTF-8">
<title>Insert title here</title>
<link
	href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css">
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-family: 'Roboto', sans-serif;
}

section.section1 {
	width: 100%;
	height: 100vh;
	box-sizing: border-box;
	background:
		url(https://res.cloudinary.com/dn4nxz7f0/image/upload/v1603170394/navigation_trong_suot/pexels-life-of-pix-7919_zydtt2.jpg);
	background-size: cover;
}

nav {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 60px;
	background: rgba(0, 0, 0, 0.4);
	padding: 0 100px;
	box-sizing: border-box;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.12), 0 2px 2px rgba(0, 0, 0, 0.12),
		0 4px 4px rgba(0, 0, 0, 0.12), 0 8px 8px rgba(0, 0, 0, 0.12), 0 16px
		16px rgba(0, 0, 0, 0.12);
}

nav .brand {
	float: left;
	height: 100%;
	line-height: 80px;
}

nav .brand h2 {
	margin: 0;
	padding: 0;
	color: #fff;
}

nav ul {
	float: right;
	display: flex;
	margin: 0;
	padding: 0;
}

nav ul li {
	list-style: none;
}

nav ul li a {
	position: relative;
	display: block;
	height: 80px;
	line-height: 80px;
	padding: 0 20px;
	box-sizing: border-box;
	color: #fff;
	text-decoration: none;
	text-transform: uppercase;
	transition: 0.5s
}

nav ul li a:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #fff;
	transform-origin: right;
	z-index: -1;
	transform: scaleX(0);
	transition: transform 0.5s;
}

nav ul li a:hover:before {
	transform-origin: left;
	transform: scaleX(1);
}

nav ul li a:hover {
	color: #262626;
}



section.section2 {
	padding: 10px;
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body {
	background: #f2f2f2;
	font-family: 'Open Sans', sans-serif;
}

.search {
	width: 100%;
	
	display: flex;
}

.searchTerm {
	width: 100%;
	border: 3px solid #00B4CC;
	border-right: none;
	padding: 5px;
	height: 20px;
	border-radius: 5px 0 0 5px;
	outline: none;
	color: #9DBFAF;
}

.searchTerm:focus {
	color: #00B4CC;
}

.searchButton {
	width: 40px;
	height: 36px;
	border: 1px solid #00B4CC;
	background: #00B4CC;
	text-align: center;
	color: #fff;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
	font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap {
	width: 30%;
	position: absolute;
	top: 15%;
	left: 50%;
	transform: translate(-50%, -50%);
}
</style>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
	rel="stylesheet" />
</head>
<body>
	<nav>
		<div class="brand">
			<h2>Muốn đi xa - có HuNaTa car</h2>
		</div>

		<ul>
			<li><a href="showview"><i class="fa fa-home" aria-hidden="true"></i>
					HOME</a></li>
			<li><a href="quanlyServlet"><i class="fa fa-info"
					aria-hidden="true"></i> Quan ly admin</a></li>
			<li><a href="phuongtienServlet"><i class="fa fa-info"
					aria-hidden="true"></i> Quan ly san pham </a></li>
			<li><a href="logoutServlet"><i class="fa fa-location-arrow"
					aria-hidden="true"></i> LOGOUT</a></li>
		</ul>
	</nav>
	<!--Kết Thúc Navigation -->

	

	<!--Hiển Thị Nội Dung Văn Bản-->

	<section class="section2">
		
		
	</section>
	
	<!--Hiển Thị Nội Dung Văn Bản-->
</body>
</html>