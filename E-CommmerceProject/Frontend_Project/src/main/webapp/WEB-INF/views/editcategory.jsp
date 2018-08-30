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
						<h1>Edit Category</h1>
						<!-- product = new Product(), initially all the properties will have default values -->
						
						<c:url value="/updatecategory" var="url"></c:url>
						<form:form modelAttribute="product" action="${url}" method = "POST">
							<table>
								<tr>
									<td></td>
									<!-- user need not to give the values for id , as it is auto- generated  -->
									<td><form:hidden path="id"></form:hidden></td>
								</tr>

								<tr>
									<td>Enter Category Name</td>
									<td><form:input path="categoryname"></form:input></td>
								</tr>

								<tr>
									<td>Enter Category Description</td>
									<td><form:input path="categorydesc"></form:input></td>
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