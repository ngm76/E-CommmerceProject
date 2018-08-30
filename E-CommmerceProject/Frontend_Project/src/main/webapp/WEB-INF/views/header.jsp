<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">


<title>Books Pal</title>
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

<body style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;" >

	<!-- *** TOPBAR ***
 _________________________________________________________ -->
	<div id="top">
		<div class="container">

			<div class="col-md-12" data-animate="fadeInDown">
				<ul class="menu">
					<li><a href="<c:url value='/login'></c:url>">Login</a></li>

					<li><a href="<c:url value='/getuserform'></c:url>">Sign Up</a></li>
					<li><a href="#">Contact</a></li>
					<li><a href="<c:url value='/aboutus'></c:url>">About Us</a></li>
				</ul>
			</div>
		</div>


	</div>

	<!-- *** TOP BAR END *** -->

	<!-- *** NAVBAR ***
 _________________________________________________________ -->

	<div class="navbar navbar-default yamm" role="navigation" id="navbar">
		<div class="container">
			<div class="navbar-header">

				<a class="navbar-brand home" href="index"
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
					<a class="btn btn-default navbar-toggle" href="#"> <i
						class="fa fa-shopping-cart"></i> <span class="hidden-xs">3
							items in cart</span>
					</a>
				</div>
			</div>
			<!--/.navbar-header -->

			<div class="navbar-collapse collapse" id="navigation" >

				<ul class="nav navbar-nav navbar-left">
					<li class="active"><a href="<c:url value='/index'></c:url>" style="color:black">Home</a></li>
					<li class="dropdown yamm-fw" ><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200" style="color:black" >Categories <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<div class="yamm-content" >
									<div class="row">
										<div class="col-sm-3">
											<h4>
												<a href="<c:url value='#'></c:url>" style="color : black;font-weight: normal;">Literature And
													Fiction </a>
											</h4>

										</div>
									
									
										<div class="col-sm-3">
											<h4>
												<a href="<c:url value='#'></c:url>" style="color : black;font-weight: normal;">Crime and Thriller</a>
											</h4>
										</div>
									
									
										<div class="col-sm-3">
											<h4>
												<a href="<c:url value='#'></c:url>"style="color : black;font-weight: normal;">Science and Fantasy</a>
											</h4>

										</div>
									
										<div class="col-sm-3">
											<h4>
												<a href="<c:url value='#'></c:url>"style="color : black; font-weight: normal;">Business and
													Economies</a>
											</h4>

										</div>
									</div>
									<div class="row">
										<div class="col-sm-3">
											<h4>
												<a href="<c:url value='#'></c:url>"style="color : black;font-weight: normal;">Biographies and
													Memoirs</a>
											</h4>

										</div>
									
										<div class="col-sm-3">
											<h4>
												<a href="<c:url value='#'></c:url>"style="color : black; font-weight: normal;">Indian Writing</a>
											</h4>


										</div>
									</div>
								</div> <!-- /.yamm-content -->
						</ul></li>

					<li><a href="#" data-delay="200" style="color:black">New Releases</a></li>

					<li><a href="#" data-delay="200" style="color:black">Must Read </a></li>
				</ul>

			</div>
			<!--/.nav-collapse -->

			<div class="navbar-buttons">

				<div class="navbar-collapse collapse right" id="basket-overview">
					<a href="basket.html" class="btn btn-primary navbar-btn"><i
						class="fa fa-shopping-cart"></i><span class="hidden-sm">cart</span></a>
				</div>
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