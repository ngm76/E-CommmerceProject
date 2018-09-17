<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
<div class="wrapper" style="font-family: Helvetica">
	<jsp:include
		page="header.jsp"></jsp:include>
	<div id="content">
		<div class="container">
			<b>About us Page</b>
		</div>
	</div>
</div>
</body>
</html>