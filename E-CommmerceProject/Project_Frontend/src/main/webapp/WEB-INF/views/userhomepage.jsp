<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>BooksPal</title>
</head>
<body
	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>BooksPal</h3>
			</div>
			<hr>
			<ul class="list-unstyled components">
				<li class="active"><a href="#homeSubmenu">Home</a>
				<li><a href="<c:url value='/getallproductsforuser'></c:url>">Browse
						All Products</a>
				<li><a href="#categorySubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"> Category</a>
					<ul class="collapse list-unstyled" id="categorySubmenu">
						<li><a href="#">Children Books</a></li>
						<li><a href="#">Self Help</a></li>
						<li><a href="#">More</a></li>

					</ul> <a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
				<li><a href="<c:url value='/register'></c:url>">Register</a></li>
				<li><a href="<c:url value='/login'></c:url>">Login</a></li>
			</ul>


		</nav>

		<!-- Page Content  -->
		<div id="content">


			<div class="container">

				<div class="row">

					<c:forEach var="p" items="${productslist}">
						<div class="col-md-3">
							<div class="card-group deck "
								style="margin: 5px auto; padding: 10px">
								<div class="card text-center">
									<div>

										<p class="card title">${p.productname }</p>
										<p>
											<img
												src="<c:url value='/resources/img/${p.id }.png'></c:url>"
												height="75px" width="75px"></img>
										</p>
										<p class="card-text">${p.productdesc }</p>
										<p class="card-text">${p.price }</p>
										<p>
											<a href="<c:url value='/all/getproduct/${p.id}'></c:url>"><span
												class="fa fa-info" style="color: #A14E2E"></span></a>
										</p>

									</div>
								</div>
							</div>
						</div>


					</c:forEach>
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