<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
	top: 5%;
	left: 50%;
	transform: translate(-50%, -50%);
}
</style>
</head>
<body>
	<div class="row">
			<div class="col">
				<form action="phuongtienServlet" method="post">
					<div class="form-group">
						<label for="qlId"> Id:</label> <input type="text" name="id"
							class="form-control" value="${user.id }">
					</div>
					<div class="form-group">
						<label for="name"> Name:</label> <input type="text" name="ten"
							class="form-control" value="${user.ten }">
					</div>
					<div class="form-group">
						<label for="anh"> Image:</label> <input type="text" name="anh"
							class="form-control" value="${user.anh }">
					</div>
					<div class="form-group">
						<label for="mota"> Description:</label> <input type="text"
							name="mota" class="form-control" value="${user.mota }">
					</div>
					<div class="form-group">
						<label> Cost:</label> <input type="text" name="gia" id="admin"
							class="form-control" />
					</div>
					<div class="form-group">
						<label>Quantity</label><input type="number" name="soluong"
							id="user" class="form-control" />
					</div>
					<div class="form-group">
						<button class="btn btn-primary"
							formaction="phuongtienServlet/create">Create</button>
						<button class="btn btn-warning"
							formaction="phuongtienServlet/update">Update</button>
						<button class="btn btn-danger"
							formaction="phuongtienServlet/delete">Delete</button>
						<button class="btn btn-info" formaction="reset">Reset</button>
					</div>
				</form>
			</div>
		</div>
</body>
</html>