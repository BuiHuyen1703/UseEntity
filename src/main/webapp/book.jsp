<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Book!</h1><div class="container">
	<table class="table" border="1px">
					<tr>
						<th>Id</th>
						<th>Ten</th>
						<th>Gia</th>
						<th>Delete</th>
						
					</tr>
					<c:forEach var="item" items="${book }">
						<tr>
							<td>${item.id }</td>
							<td>${item.name }</td>
							<td>${item.price }</td>
							<td>
								<button onclick="myFunction()" ><a href="bookServlet/delete?id=${item.id }" onclick="return confirm ()">Delete</a></td></button>
						</tr>
					</c:forEach>
				</table>
				</div>
				<script>
function myFunction() {
  confirm("Press a button!");
}
</script>
</body>
</html>