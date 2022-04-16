<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/cart.css" type="text/css">
</head>
<body>
	<c:import url="header.jsp"></c:import> 
	<p>Customer name:</p>
	<p>Customer address:</p>
	<br>
	<table class="cartTable">
		<tr>
			<th>Products in cart</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Amount</th>
		</tr>
	
	<c:forEach var="product" items="${listCart.getAlst()}">
		<tr>
			<td>${product.getName()}</td>
			<td>${product.getPrice()}</td>
			<td>${product.getNumber()}</td>
			<td><fmt:formatNumber value="${product.getPrice() * product.getNumber()}" maxFractionDigits="3"></fmt:formatNumber> $</td>
		</tr>
	</c:forEach>
	</table>
	<input type="submit" value="submit">


	<c:import url="footer.jsp"></c:import>
</body>
</html>