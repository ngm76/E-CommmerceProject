<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
</head>
<body>

	<nav id="sidebar" style="opacity: 0.9">
		<div class="sidebar-header">
			<h3>BooksPal</h3>
		</div>
		<hr>
		<ul class="list-unstyled components">

			<li class="active"><a href="<c:url value="/index"></c:url>">Home</a>
			<li><a href="#productSubmenu" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle"> Products</a>
				<ul class="collapse list-unstyled" id="productSubmenu">

					<li><a href="<c:url value='/all/getallproducts'></c:url>">
							Browse All Products</a></li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<c:url value='/admin/getproductform'></c:url>">
								Add Product</a></li>
					</security:authorize>
				</ul></li>

			<li><a href="#categorySubmenu" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle"> Category</a>
				<ul class="collapse list-unstyled" id="categorySubmenu">
					<c:forEach items="${categories }" var="category">
						<li><a
							href="<c:url value="/all/searchByCategory?searchCondition=${category.cname}">${category.cname }</c:url>"></a></li>
					</c:forEach>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<c:url value='/admin/getcategoryform'></c:url>">Add
								Category</a></li>
					</security:authorize>
				</ul></li>
			<li><a href="<c:url value='/aboutus'></c:url>">About</a></li>


			<li><a href="#">Contact</a></li>
			<c:if test="${pageContext.request.userPrincipal.name==null }">
				<li><a href="<c:url value='/all/register'></c:url>">Register</a></li>
				<li><a href="<c:url value='/login'></c:url>">Login</a></li>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
				<li><a href="#">Welcome
						${pageContext.request.userPrincipal.name }</a></li>
				<li><a href="<c:url value='/j_spring_security_logout'></c:url>">Sign
						out</a></li>
			</c:if>

		</ul>




	</nav>
</body>
</html>