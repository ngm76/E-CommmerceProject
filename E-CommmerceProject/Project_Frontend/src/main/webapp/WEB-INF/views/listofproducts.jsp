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
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">

<script type="text/javascript">
$(document).ready(function(){
	var searchCondition='${searchCondition}'
	$('.table').DataTable({
		"lengthMenu":[[5,7,-1],[5,7,"All"]],
	    "oSearch" : {
		"sSearch" : searchCondition
		}
	})
})
</script>
</head>
<body
	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper" style="font-family: Helvetica">
		<!-- Sidebar  -->

		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<div class="container">
				<form class="navbar-form navbar-light bg-light" style="opacity: 0.7">

					<div class="input-group">
						<input type="text" name="keyword" placeholder="Search"
							class="form-control">
						<button class="btn btn-default" style="opacity: 1">
							<i class="fa fa-search"></i>
						</button>

					</div>

				</form>
			</div>
			<div class="container">

				<div class="col-md-12">
					<div class="table-responsive ">
						<table class="table table-striped " style="opacity: 0.8">
							<thead
								style="background-color: #000000; color: #ffffff; font-family: Helvetica; font-weight: normal !important">
								<tr>
									<th>ISBN</th>
									<th>Image</th>
									<th>Name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Category</th>
									<th>Action</th>
								</tr>
							</thead>

							<tbody style="background-color: #E0D1BE; color: #000000">
								<!-- For each object in the list, tr has to be repeated -->
								<!--  items refers to the collection of objects -->
								<!-- var is local variable ,takes objects one by one from the collection -->


								<c:forEach var="p" items="${productslist}">

									<tr>

										<td>${p.id}</td>
										<td><img
											src="<c:url value='/resources/img/${p.id }.png'></c:url>"
											height="30px" width="30px"></td>
										<td>${p.productname}</td>

										<td>${p.price}</td>
										<td>${p.quantity}</td>
										<td>${p.category.cname }</td>
										<td><a
											href="<c:url value='/all/getproduct/${p.id}'></c:url>"><span
												class="fa fa-info" style="color: #A14E2E"></span></a> 
												<security:authorize
												access="hasRole('ROLE_ADMIN')">
												<a
													href="<c:url value='/admin/deleteproduct/${p.id}'></c:url>"><span
													class="fa fa-trash" style="color: #A14E2E"></span></a>
												<a href="<c:url value='/admin/editproduct/${p.id}'></c:url>"><span
													class="fa fa-edit" style="color: #A14E2E"></span></a>
											</security:authorize></td>


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