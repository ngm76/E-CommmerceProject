<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>BooksPal</title>

<!-- Bootstrap CSS CDN -->
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
</head>
<body
	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar" style="opacity: 0.9">
			<div class="sidebar-header" style="font-family: Helvetica">
				<h3>BooksPal</h3>
			</div>
			<hr>
			<ul class="list-unstyled components" style="font-family: Helvetica">
				<li><a href="#productSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"> Product</a>
					<ul class="collapse list-unstyled" id="productSubmenu">
						<li><a href="<c:url value='/getallproducts'></c:url>">Show
								All Products</a></li>
						<li><a href="<c:url value='/getproductform'></c:url>">Add
								Product</a></li>

					</ul></li>

				<li><a href="#categorySubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"> Category</a>
					<ul class="collapse list-unstyled" id="categorySubmenu">
						<li><a href="<c:url value='/getallcategories'></c:url>">Show
								All Categories</a></li>
						<li><a href="<c:url value='/getcategoryform'></c:url>">Add
								Category</a></li>

					</ul></li>

				<li><a href="#userSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"> User</a>
					<ul class="collapse list-unstyled" id="userSubmenu">
						<li><a href="<c:url value='/getallusers'></c:url>">Show
								All Users</a></li>

					</ul></li>


				<li><a href="<c:url value='/login'></c:url>">Log Out</a></li>
			</ul>


		</nav>




		<div id="content" style="background-color: #E0D1BE; opacity: 0.8">
			<div id="content">
				<div class="container">
					<div class="col-md-12">
						<div class="box">
							<h1>Edit Product</h1>
							<!-- product = new Product(), initially all the properties will have default values -->

							<c:url value="/updateproduct" var="url"></c:url>
							<form:form modelAttribute="product" action="${url}" method="POST" enctype="multipart/form-data">
								<table>
									<tr>
										<td></td>
										<!-- user need not to give the values for id , as it is auto- generated  -->
										<td><form:hidden path="id"></form:hidden></td>
									</tr>

									<tr>
										<td>Enter Product Name</td>
										<td><form:input path="productname"></form:input> <form:errors
												path="productname" cssStyle="color:red"></form:errors></td>
									</tr>

									<tr>
										<td>Enter Product Description</td>
										<td><form:input path="productdesc"></form:input> <form:errors
												path="productdesc" cssStyle="color:red"></form:errors></td>
									</tr>

									<tr>
										<td>Enter Product Quantity</td>
										<td><form:input path="quantity"></form:input> <form:errors
												path="quantity" cssStyle="color:red"></form:errors></td>
									</tr>

									<tr>
										<td>Enter Product Price</td>
										<td><form:input path="price"></form:input> <form:errors
												path="price" cssStyle="color:red"></form:errors></td>
									</tr>


									<tr>
										<td>Select Category</td>
										<td><form:select path="category.cid">
												<c:forEach items="${categories}" var="c">
													<form:option value="${c.cid}">${c.cname}</form:option>

												</c:forEach>

											</form:select></td>
									</tr>
									<tr>
										<td>Change image</td>
										<td><form:input path="image" type="file" /></td>
									</tr>

									<tr>
										<td><input type="submit" value="Edit"></td>
									</tr>

								</table>

							</form:form>

							<hr>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Popper.JS -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>
</body>
</html>