<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/infoProduct.css" type="text/css">
</head>
<body>
<sql:setDataSource var="ds" dataSource="jdbc/ShoppingDB"/>

<sql:query var="results" dataSource="${ds}" sql="select * from products where product_id=?"><sql:param >${id}</sql:param></sql:query>

<c:forEach var="image" items="${results.rows}">
<c:set scope="page" var="imgname" value="${image.product_name}.jpg"></c:set>
<img width="35%" src="${pageContext.request.contextPath}/media/${imgname}">
<h3>${image.product_name}</h3>
<p>${image.product_des}</p>
<a href="${pageContext.request.contextPath}/CartController?action=add&&id=${image.product_id}"><input type="button" value="add to cart"></a>
</c:forEach>
</body>
</html>