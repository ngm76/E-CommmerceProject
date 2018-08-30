<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="adminheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta charset="utf-8">


<title>Books Pal</title>


</head>
<body>




	<div id="all">

		<div id="content">
			<div class="container">
			
				<div class="col-md-12">
					<div class="table-responsive">
						<table class="table ">
							<thead>
								<tr>
								   <th>Product Image</th>
									<th >Product Name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Category</th>
									<th>Action</th>
								</tr>
							</thead>

							<tbody>
								<!-- For each object in the list, tr has to be repeated -->
								<!--  items refers to the collection of objects -->
								<!-- var is local variable ,takes objects one by one from the collection -->

								<c:forEach var="p" items="${productslist}">
									<tr> <td><img src="<c:url value='/resources/img/${p.id }.png'></c:url>" height="30px" width="30px"></td>
										
										<td>${p.productname}</td>

										<td>${p.price}</td>
										<td>${p.quantity}</td>
										<td>${p.category.cname }</td>
										<td><a href="<c:url value='/getproduct/${p.id}'></c:url>"><span class="fa fa-info"></span></a>
										    <a href="<c:url value='/deleteproduct/${p.id}'></c:url>"><span class="fa fa-trash-o"></span></a>
										    <a href="<c:url value='/editproduct/${p.id}'></c:url>"><span class="fa fa-pencil"></span></a>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>