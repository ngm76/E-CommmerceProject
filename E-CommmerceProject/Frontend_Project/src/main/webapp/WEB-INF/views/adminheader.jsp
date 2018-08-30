<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="logintopbar.jsp"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">


<title>Books Pal</title>

<meta name="keywords" content="">

<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100'
	rel='stylesheet' type='text/css'>

<!-- styles -->
<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/owl.theme.css"
	rel="stylesheet">

<!-- theme stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/css/style.default.css"
	rel="stylesheet" id="theme-stylesheet">

<!-- your stylesheet with modifications -->
<link href="${pageContext.request.contextPath}/resources/css/custom.css"
	rel="stylesheet">

<script
	src="${pageContext.request.contextPath}/resources/js/respond.min.js"></script>





</head>

<body >




	<!-- *** NAVBAR ***
 _________________________________________________________ -->

	<div class="navbar navbar-default yamm" role="navigation" id="navbar">
		<div class="container">
			<div class="navbar-header">

				<a class="navbar-brand home" href="<c:url value='/index'></c:url>"
					data-animate-hover="bounce"> <img
					src="${pageContext.request.contextPath}/resources/img/logoo.png"
					alt="BooksPal logo" class="hidden-xs"> <img
					src="${pageContext.request.contextPath}/resources/img/logo-small.png"
					alt="BooksPal logo" class="visible-xs"><span class="sr-only">BooksPal
						- go to homepage</span>
				</a>
				<div class="navbar-buttons">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navigation">
						<span class="sr-only">Toggle navigation</span> <i
							class="fa fa-align-justify"></i>
					</button>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#search">
						<span class="sr-only">Toggle search</span> <i class="fa fa-search"></i>
					</button>

				</div>
			</div>
			<!--/.navbar-header -->

			<div class="navbar-collapse collapse" id="navigation">
				<ul class="nav navbar-nav navbar-left">

					<li class="dropdown yamm-fw"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200">Products <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<div class="yamm-content">
									<div class="row">
										<div class="col-sm-3">
											<h4>
												<a href="<c:url value='/getallproducts'></c:url>">Show
													All Products </a>
											</h4>
										</div>
									</div>
								</div>
							</li>

							<li class="dropdown yamm-fw ">
								<div class="yamm-content">
									<div class="row">
										<div class="col-sm-3">
											<h4>
												<a href="<c:url value='/getproductform'></c:url>">Add
													Product </a>
											</h4>
										</div>
									</div>
								</div>
							</li>


						</ul></li>


					<li class="dropdown yamm-fw"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200">Categories <b
							class="caret"></b></a>
						<ul class="dropdown-menu">

							<li class="dropdown yamm-fw">
								<div class="yamm-content">
									<div class="row">
										<div class="col-sm-3">
											<a href="<c:url value='/getallcategories'></c:url>">Show
												All Categories </a>
										</div>
									</div>
								</div>
							</li>

							<li class="dropdown yamm-fw ">
								<div class="yamm-content">
									<div class="row">
										<div class="col-sm-3">
											<a href="<c:url value='/getcategoryform'></c:url>">Add
												Category </a>
										</div>
									</div>
								</div>
							</li>


						</ul></li>


					<li class="dropdown yamm-fw"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200">Users <b
							class="caret"></b></a>
						<ul class="dropdown-menu">

							<li class="dropdown yamm-fw">
								<div class="yamm-content">
									<div class="row">
										<div class="col-sm-3">
											<a href="<c:url value='/getallusers'></c:url>">Show
												All Users </a>
										</div>
									</div>
								</div>
							</li>

							


						</ul></li>


				</ul>






			</div>
			<!--/.nav-collapse -->

			<div class="navbar-buttons">


				<!--/.nav-collapse -->

				<div class="navbar-collapse collapse right" id="search-not-mobile">
					<button type="button" class="btn navbar-btn btn-primary"
						data-toggle="collapse" data-target="#search">
						<span class="sr-only">Toggle search</span> <i class="fa fa-search"></i>
					</button>
				</div>

			</div>

			<div class="collapse clearfix" id="search">

				<form class="navbar-form" role="search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-btn">

							<button type="submit" class="btn btn-primary">
								<i class="fa fa-search"></i>
							</button>

						</span>
					</div>
				</form>

			</div>
			<!--/.nav-collapse -->

		</div>
		<!-- /.container -->
	</div>
	<!-- /#navbar -->

	<!-- *** NAVBAR END *** -->





	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.cookie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/modernizr.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-hover-dropdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/front.js"></script>
</body>
</html>