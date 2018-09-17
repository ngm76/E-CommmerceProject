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
		<nav id="sidebar" style="opacity : 0.9">
			<div class="sidebar-header">
				<h3>BooksPal</h3>
			</div>
			<hr>
			<ul class="list-unstyled components">
				<li><a href="#productSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"> Product</a>
					<ul class="collapse list-unstyled" id="productSubmenu">
						<li><a href="<c:url value='/getallproducts'></c:url>">Show
								All Products</a></li>
						<li><a href="<c:url value='/getproductform'></c:url>">Add Product</a></li>

					</ul></li>

				<li><a href="#categorySubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"> Category</a>
					<ul class="collapse list-unstyled" id="categorySubmenu">
						<li><a href="<c:url value='/getallcategories'></c:url>">Show All Categories</a></li>
						<li><a href="<c:url value='/getcategoryform'></c:url>">Add Category</a></li>

					</ul></li>

				<li><a href="#userSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"> User</a>
					<ul class="collapse list-unstyled" id="userSubmenu">
						<li><a href="<c:url value='/getallusers'></c:url>">Show All Users</a></li>

					</ul></li>


				<li><a href="<c:url value='/login'></c:url>">Log Out</a></li>
			</ul>


		</nav>
		



		<div id="content">
			<div class="container">

				<div class="col-md-12">
					<div class="table-responsive ">
						<table class="table table-striped " style="opacity : 0.8">
							<thead style="background-color: #000000; color: #ffffff; font-family:Helvetica ; font-weight:normal !important">
								<tr>
									<th>Id</th>
									<th>Category Name</th>
									<th>Description</th>
									<th>Action</th>
								</tr>
							</thead>

							<tbody style="background-color: #E0D1BE; color:#000000">
								<!-- For each object in the list, tr has to be repeated -->
								<!--  items refers to the collection of objects -->
								<!-- var is local variable ,takes objects one by one from the collection -->

								<c:forEach var="c" items="${categorieslist}">
									<tr>
										<td>${c.cid}</td>

										<td>${c.cname}</td>

										<td>${c.cdesc}</td>

										<td><a
											href="<c:url value='/getcatgory/${c.cid}'></c:url>"><span
												class="fa fa-info" style="color : #A14E2E"></span></a> <a
											href="<c:url value='/deletecategory/${c.cid}'></c:url>"><span
												class="fa fa-trash-alt" style="color : #A14E2E"></span></a> <a
											href="<c:url value='/editcategory/${c.cid}'></c:url>"><span
												class="fa fa-edit" style="color : #A14E2E"></span></a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
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