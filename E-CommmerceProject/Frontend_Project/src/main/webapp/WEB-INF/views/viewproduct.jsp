<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<div class="container">
		<div class="col-md-12">
			<div class="row" id="productMain">
				<div class="col-sm-3">
					<div id="mainImage">
						<img 
							src="<c:url value='/resources/img/${productObj.id}.png'></c:url>"
							alt="image" class="img-responsive" style="width: 100%;">
					</div>

				</div>



				<div class="col-sm-9">

					<div class="box" id="details" style="width: 100%;">
						<p>
						<h4>Product details</h4>
						<p></p>
						<h4>Book Name</h4>
						<ul>
							<li>${productobj.productname}</li>

						</ul>
						<h4>Description</h4>
						<ul>
							<li>${productobj.productdesc}</li>

						</ul>

						<h4>Quantity</h4>
						<ul>
							<li>${productobj.quantity}</li>

						</ul>

						<h4>Price</h4>
						<ul>
							<li>${productobj.price}</li>

						</ul>


						<hr>

						<p class="text-center buttons">
							<a href="#" class="btn btn-primary"><i
								class="fa fa-shopping-cart"></i> Add to cart</a> <a href="#"
								class="btn btn-default"><i class="fa fa-heart"></i> Add to
								wishlist</a>
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>