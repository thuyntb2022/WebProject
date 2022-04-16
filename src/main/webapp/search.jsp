<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="header.jsp"></c:import>
	<sql:setDataSource var="ds" dataSource="jdbc/ShoppingDB" />
	<table>
		<c:set var="tableW" value="3"></c:set>
		<c:forEach var="product" items="${searchList}">
			<sql:query var="results" dataSource="${ds}"
				sql="select * from Products where product_id=?">
				<sql:param>${product.getId()}</sql:param>
			</sql:query>
			<c:if test="${searchList.size() % tableW == 0 }">
				<tr>
			</c:if>

			<c:forEach var="image" items="${results.rows}" varStatus="row">
				<c:set scope="page" var="imageName"
					value="${image.product_name}.jpg"></c:set>
				<td><a
					href="${pageContext.request.contextPath}/PageController?action=info&&id=${image.product_id}"><img
						src="${pageContext.request.contextPath}/media/${imageName}"
						width="60%" alt="iphone11"><br>${image.product_name}</a></td>

			</c:forEach>
			<c:if test="${searchList.size() % tableW == 0 }">
				</tr>
			</c:if>
		</c:forEach>
	</table>
	<c:import url="footer.jsp"></c:import>
</body>
</html>