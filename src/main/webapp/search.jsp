<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="get">
		Name : <input type="number" name="a"> 
		<!-- To: <input type="number" 
			name="b">-->
		<button>Search</button>
	</form>
	<table border="1px">
		<tr>
			<td>Id</td>
			<td>Name</td>
			<td>Age</td>
			<td>Address</td>
		</tr>
		<c:forEach var="item" items="${doctor }">
						<tr>
							<td>${item.id }</td>
							<td>${item.name }</td>
							<td>${item.age }</td>
							<td>${item.address }</td>
						</tr>
		</c:forEach>
		
		
	</table>
</body>
</html>