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
			<div class="container d-flex justify-content-center">
				<div class="col-sm-6 col-md-offset-3">
						<div class="box">
							<h1>Register</h1>
							<c:url value="/adduser" var="url"></c:url>
							<form:form modelAttribute="user" action="${url}">


								<div class="form-group">
									<form:label path="firstname">Enter First Name</form:label>
									<input type="text" class="form-control" >
								</div>

								<div class="form-group">
									<form:label path="lastname">Enter Last Name</form:label>
									<input type="text" class="form-control" >
								</div>

								<div class="form-group">
									<form:label path="username">Enter Username</form:label>
									<input type="text" class="form-control" >
								</div>

								<div class="form-group">

									<form:label path="password">Enter Password</form:label>
									<input type="text" class="form-control" >
								</div>

								<div class="form-group">
									<form:label path="confirmpassword">Confirm Password</form:label>
									<input type="text" class="form-control" >
								</div>

								<div class="form-group">
									<form:label path="email">Enter Email</form:label>
									<input type="text" class="form-control" >
								</div>

								<div class="form-group">
									<form:label path="phonenumber">Enter Phone Number</form:label>
									<input type="text" class="form-control" >
								</div>


								<div class="text-center" >
									<button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i>Register</button>
								</div>
							</form:form>
							<hr>
						</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>