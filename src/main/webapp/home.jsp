<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/body.css" type="text/css">
</head>
<body>
	<c:import url="header.jsp"></c:import>

	<sql:setDataSource var="ds" dataSource="jdbc/ShoppingDB" />
	<sql:query var="results" sql="select * from Products"
		dataSource="${ds}"></sql:query>
	<table class="images">
		<c:set scope="page" var="tableWidth" value="3"></c:set>
		<c:forEach var="image" items="${results.rows}" varStatus="row">
			<c:if test="${row.index % tableWidth == 0 }">
				<tr>
			</c:if>
			<c:set scope="page" var="imageName" value="${image.product_name}.jpg"></c:set>
			<td><a href="${pageContext.request.contextPath}/PageController?action=info&&id=${image.product_id}"><img
				src="${pageContext.request.contextPath}/media/${imageName}"
				width="80%" alt="iphone11"><br>${image.product_name}</a></td>
				
			<c:if test="${row.index % tableWidth == 2 }">
				</tr>
			</c:if>
		</c:forEach>

	</table>
	<div class="bnav">
		<a href="#"> last </a> <a
			href="${pageContext.request.contextPath}/PageController?action=home">
			1 </a> <a
			href="${pageContext.request.contextPath}/PageController?action=home">
			2 </a> <a href="#"> after </a>
	</div>
	<c:import url="footer.jsp"></c:import>
</body>
</html>


