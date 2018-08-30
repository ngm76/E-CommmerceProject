<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="adminheader.jsp"%>

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
				<div class="responsive-table">
					<div class="col-md-6">
						<div class="box">
							<h1>Add Category</h1>
							<hr>
							<!-- product = new Product(), initially all the properties will have default values -->

							<c:url value="/addcategory" var="url"></c:url>
							<form:form modelAttribute="category" action="${url}">

								<div class="form-group">
									<form:hidden path="cid"></form:hidden>

								</div>
								<div class="form-group">
									<form:label path="cname">Enter Category Name </form:label>
									<input type="text" class="form-control">
								</div>>
									<div class="form-group">
									<form:label path="cdesc">Enter Category Description</form:label>
									<input type="text" class="form-control">
								</div>
								<div class="form-group">
									<button type="Submit" class="btn btn-primary">Add
										Category</button>
								</div>


							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>