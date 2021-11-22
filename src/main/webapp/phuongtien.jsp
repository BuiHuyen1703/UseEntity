<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style type="text/css">
.picture {
	width: 160px;
}

.search1 {
	height: 37px;
	width: 350px;
	border-radius: 12px;
}


}
</style>
<title>Hello, world!</title>
</head>
<body>

	<header class="navbar navbar-expand-md navbar-dark bd-navbar">

		<%@include file="navbar.jsp"%>

	</header>
	<main class="container-xxl my-md-4 bd-layout">
		<div class="row">
			<c:if test="${not empty message }">
				<div class="alert alert-success">${message }</div>
			</c:if>
			<c:if test="${not empty error }">
				<div class="alert alert-danger">${error }</div>
			</c:if>
		</div>
		 
			<form action="get">
				<input type="text" class="search1" placeholder="Search.." name="name">
				<button class="btn btn-warning"
					formaction="phuongtienServlet?name=${name}">Search</button>
			</form>

		

		
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
						<label> Cost:</label> <input type="number" name="dongia" id="admin"
							class="form-control" value="${user.dongia }" />
					</div>
					<div class="form-group">
						<label>Quantity</label><input type="number" name="soluong"
							id="user" class="form-control" value="${user.soluong }" />
					</div>
					<div class="form-group">
						<button class="btn btn-primary"
							formaction="phuongtienServlet/create">Create</button>
						<button class="btn btn-warning"
							formaction="update">Update</button>
						<button class="btn btn-danger"
							formaction="phuongtienServlet/delete">Delete</button>
						<button class="btn btn-info" formaction="reset">Reset</button>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<table class="table table-stripe">
					<tr>
						<th>Id</th>
						<th>Ten</th>
						<th>Anh</th>
						<th>Mo ta</th>
						<th>Don gia</th>
						<th>So luong</th>
					</tr>
					<c:forEach var="item" items="${ql }">
						<tr>
							<td>${item.id }</td>
							<td>${item.ten }</td>
							<td><img class="picture" src="${item.anh }"></td>
							<td>${item.mota }</td>
							<td>${item.dongia }</td>
							<td>${item.soluong }</td>
							<td><a href="phuongtienServlet/edit?id=${item.id }">Edit</a>
								<a href="phuongtienServlet/delete?id=${item.id }">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>