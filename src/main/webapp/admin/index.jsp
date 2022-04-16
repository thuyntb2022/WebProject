<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/ShoppingMobile/css/index.css" type="text/css">
</head>
<body>
	<div class="left">
		<div class="head">
			<h3>F TEAM</h3>
		</div>
		<div class="nav">
		<ul>
			<li><a href="#">Dashboard</a></li>
			
            <li><a href="#">Staff Manager</a></li>
            
            <li><a href="${pageContext.request.contextPath}/PageController?action=home">Home</a></li>
        </ul> 
		</div>
	</div>
	<div class="right">
	<table>
	<caption>Members of the team</caption>
	<tr>
	<th>ID</th><th>Name</th><th>Student ID</th>
	</tr>
	<tr>
	<td>1</td><td>${user}</td><td>007</td>
	</tr>
	</table>
	</div>
</body>
</html>