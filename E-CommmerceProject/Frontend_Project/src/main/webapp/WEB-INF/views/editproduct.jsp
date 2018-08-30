<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<div id="all">

		<div id="content">
			<div class="container">
				<div class="col-md-12">
					<div class="box">
						<h1>Edit Product</h1>
						<!-- product = new Product(), initially all the properties will have default values -->

						<c:url value="/updateproduct" var="url"></c:url>
						<form:form modelAttribute="product" action="${url}" method="POST">
							<table>
								<tr>
									<td></td>
									<!-- user need not to give the values for id , as it is auto- generated  -->
									<td><form:hidden path="id"></form:hidden></td>
								</tr>

								<tr>
									<td>Enter Product Name</td>
									<td><form:input path="productname"></form:input>
									<form:errors path="productname" cssStyle="color:red"></form:errors>
									</td>
								</tr>

								<tr>
									<td>Enter Product Description</td>
									<td><form:input path="productdesc"></form:input>
									<form:errors path="productdesc" cssStyle="color:red"></form:errors>
									</td>
								</tr>

								<tr>
									<td>Enter Product Quantity</td>
									<td><form:input path="quantity"></form:input>
									<form:errors path="quantity" cssStyle="color:red"></form:errors>
									</td>
								</tr>

								<tr>
									<td>Enter Product Price</td>
									<td><form:input path="price"></form:input>
									<form:errors path="price" cssStyle="color:red"></form:errors>
									</td>
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



</body>
</html>