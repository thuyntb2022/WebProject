<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css" type="text/css">
</head>
<body>
<div class="img-bg">
<c:set scope="page" var="imgName" value="anh login.jpg"></c:set>
	<img src="${pageContext.request.contextPath}/media/${imgName}" alt="anh minh hoa">
</div>
     
<div class="noi-dung">
	<div class="form"> 
		<form name="myForm" action="${pageContext.request.contextPath}/LoginController" method="post">
			<input type="hidden" name="action" value="dosubmit"/>
        	<div class="input-form">
            	<label for="user">User name</label><br>
  				<input type="text" id="user" name="user" value="${user}"><br>
            </div>
            <div class="input-form">
                <label for="pword">Password</label><br>
  				<input type="password" id="password" name="password" value="${password}"><br><br>
            </div>              
            <div class="input-form">
                <input type="submit" value="Submit">
            </div>
            <h5>${message}</h5>
            <div class="nho-dang-nhap">
                     <label><input type="checkbox" name=""> Remember me</label>
            </div>
            <div class="input-form">
                     <p>Forgot <a href="#">password</a></p>
             </div>
         </form>
     </div>
</div>
</body>
</html>