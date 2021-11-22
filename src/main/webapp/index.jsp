<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Font Awesome -->
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
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
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
	height: 80px;
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
	padding: 150px;
}

.glyphicon {    
margin-right:5px;
}
.thumbnail {    
margin-bottom: 20px;    
padding: 0px;   
-webkit-border-radius: 0px; 
-moz-border-radius: 0px;    
border-radius: 0px;
}
.item.list-group-item { 
float: none;    
width: 100%;    
background-color: #fff; 
margin-bottom: 10px;
}
.item.list-group-item:nth-of-type(odd):hover, .item.list-group-item:hover { 
background: #428bca;
}
.item.list-group-item .list-group-image {   
margin-right: 10px;
}
.item.list-group-item .thumbnail {  
margin-bottom: 0px;
}
.item.list-group-item .caption {    
padding: 9px 9px 0px 9px;
}
.item.list-group-item:nth-of-type(odd) { 
background: #eeeeee;
}
.item.list-group-item:before, .item.list-group-item:after { 
display: table; content:"";
}
.item.list-group-item img { 
float: left;
}
.item.list-group-item:after {   
clear: both;
}
.list-group-item-text { 
margin: 0 0 11px;


</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<nav>
		<div class="brand">
			<h2>Muốn đi xa - có HuNaTa car</h2>
		</div>
		<ul>
			<li><a href=""><i class="fa fa-home" aria-hidden="true"></i>
					HOME</a></li>
			<li><a href="phuongtienServlet"><i class="fa fa-truck"
					aria-hidden="true"></i> Quan ly san pham</a></li>
			<li><a href="quanlyServlet"><i class="fa fa-info " aria-hidden="true"></i>
					Quan ly admin</a></li>
			
			<li><a href="logoutServlet"><i class="fa fa-location-arrow"
					aria-hidden="true"></i> LOGOUT</a></li>
		</ul>
	</nav>
	<!--Kết Thúc Navigation -->

	<!-- Dùng Để Chèn Hình Ảnh-->
	<section class="section1"></section>
	<!-- Dùng Để Chèn Hình Ảnh-->

	<!--Hiển Thị Nội Dung Văn Bản-->
	<section class="section2">
		<table class="table table-stripe">

			<c:forEach var="item" items="${ql }">
				<%--  <tr>
							<td>${item.ten }</td>
							<td><img class="picture" src="${item.anh }"></td>
							<td>${item.mota }</td>
							<td>${item.dongia }</td>
							
							</tr>  --%>
				<%--  <div class="product_list">
					<div class="product_item">
						<a href="#"> <img src="${item.anh }"> 
						<span>${item.ten }</span> 
						<span>${item.dongia }</span>
						</a>
					</div>

				</div> --%>
				<div class="item  col-xs-3 col-lg-3"> 
   <div class="thumbnail"> <img class="group list-group-image" src="${item.anh }" alt="Sản phẩm 4" width="300"> 
    <div class="caption"> 
     <h4 class="group inner list-group-item-heading"> ${item.ten }</h4> 
     <p class="group inner list-group-item-text">${item.mota } </p> 
     <div class="row"> 
      <div class="col-xs-12 col-md-6"> 
       <p class="lead"> ${item.dongia }</p> 
      </div> 
      <div class="col-xs-12 col-md-6"> <a class="btn btn-success" href="http://hocwebgiare.com/">Chi tiết</a> 
      </div> 
     </div> 
    </div> 
   </div> 
  </div> 
			</c:forEach>
		</table>
	</section>
	<!--Hiển Thị Nội Dung Văn Bản-->

	<!-- Footer -->
	<footer class="text-center text-lg-start bg-light text-muted">
		<!-- Section: Social media -->
		<section
			class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
			<!-- Left -->
			<div class="me-5 d-none d-lg-block">
				<span>Get connected with us on social networks:</span>
			</div>
			<!-- Left -->

			<!-- Right -->
			<div>
				<a href="" class="me-4 text-reset"> <i class="fab fa-facebook-f"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-twitter"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-google"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-instagram"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-linkedin"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-github"></i>
				</a>
			</div>
			<!-- Right -->
		</section>
		<!-- Section: Social media -->

		<!-- Section: Links  -->
		<section class="">
			<div class="container text-center text-md-start mt-5">
				<!-- Grid row -->
				<div class="row mt-3">
					<!-- Grid column -->
					<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
						<!-- Content -->
						<h6 class="text-uppercase fw-bold mb-4">
							<i class="fas fa-gem me-3"></i>Company name
						</h6>
						<p>Here you can use rows and columns to organize your footer
							content. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit.</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">Products</h6>
						<p>
							<a href="#!" class="text-reset">Angular</a>
						</p>
						<p>
							<a href="#!" class="text-reset">React</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Vue</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Laravel</a>
						</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
						<p>
							<a href="#!" class="text-reset">Pricing</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Settings</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Orders</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Help</a>
						</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">Contact</h6>
						<p>
							<i class="fas fa-home me-3"></i> Nhóm JSP - Đi xa, nhanh, cùng nhau thì hãy mua oto nha
						</p>
						<p>
							<i class="fas fa-envelope me-3"></i> info@example.com
						</p>
						<p>
							<i class="fas fa-phone me-3"></i> + 01 234 567 88
						</p>
						<p>
							<i class="fas fa-print me-3"></i> + 01 234 567 89
						</p>
					</div>
					<!-- Grid column -->
				</div>
				<!-- Grid row -->
			</div>
		</section>
		<!-- Section: Links  -->

		<!-- Copyright -->
		<div class="text-center p-4"
			style="background-color: rgba(0, 0, 0, 0.05);">
			© 2021 Copyright: <a class="text-reset fw-bold"
				href="https://mdbootstrap.com/">MDBootstrap.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->
</body>
</html>