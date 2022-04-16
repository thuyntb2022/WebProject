<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css" type="text/css">
</head>
<body>
	<div class="header">
		<div class="lefthead">
			<h1>PRJ321x</h1>
			<p>Welcome to my website</p>
		</div>
		
		<div class="righthead">
			<form action="${pageContext.request.contextPath}/SearchController" method="get">
				<label for="Search" id="Search" style="font-weight: bolder;">keywords</label>
				<input type="text" id="Search" name="Search" value="mobile...">
				<input type="submit" value="Search">
			</form>
		</div>
	</div>
	<div class="topnav">
		<a href="${pageContext.request.contextPath}/PageController?action=home">Home</a> <a href="#">Products</a> <a href="#">About us</a>

		<a href="#" style="float: right"> Register </a>
		<a href="${pageContext.request.contextPath}/PageController?action=login" style="float: right"> Login </a>
	</div>
</body>
</html>
