<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<header class="navbar navbar-expand-md navbar-dark bd-navbar">

		<%@include file="navbar.jsp"%>

	</header>

	<main class="container">
		<div class="row">
			<c:if test="${not empty message }">
			<div class="alert alert-success">${message }</div>
			</c:if>
			<c:if test="${not empty error }">
			<div class="alert alert-danger">${error }</div>
			</c:if>
		</div>
		<div class="row">
			<div class="col">
				<form action="quanlyServlet" method="post">
					<div class="form-group">
						<label for="qlId"> Id:</label> <input type="text" name="id"
							class="form-control" value="${user.id }">
					</div>
					<div class="form-group">
						<label for="name"> Name:</label> <input type="text" name="name"
							class="form-control" value="${user.name }">
					</div>
					<div class="form-group">
						<label for="email"> Email:</label> <input type="email"
							name="email" class="form-control" value="${user.email }">
					</div>
					<div class="form-group">
						<label for="pass"> Pass:</label> <input type="text" name="pass"
							class="form-control" value="${user.pass }">
					</div>
					<!-- <div class="form-group">
						<label> Role:</label> <label class="ml-2"><input
							type="radio" name="admin" id="admin" class="form-check-input" />Admin</label>
						<label class="ml-2"><input type="radio" name="admin"
							id="user" class="form-check-input" />User</label>
					</div> -->
					<div class="form-group">
						<button class="btn btn-primary" formaction="quanlyServlet/create">Create</button>
						<button class="btn btn-warning" formaction="update">Update</button>
						<button class="btn btn-danger" formaction="delete">Delete</button>
						<button class="btn btn-info" formaction="reset">Reset
						</button>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<table class="table table-stripe">
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Pass</th>
					</tr>
					<c:forEach var="item" items="${listQL }">
						<tr>
							<td>${item.id }</td>
							<td>${item.name }</td>
							<td>${item.email }</td>
							<td>${item.pass }</td>
							<td>
								<a href="quanlyServlet/edit?id=${item.id }">Edit</a>
								<a href="quanlyServlet/delete?id=${item.id }">Delete</a>
							</td>
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