<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> 
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<title>Books Pal</title>





</head>
<body >
	<div class=login-form style="background-color:#00000">
		<div id="all">

			<div id="content">
				<div class="container">
				
					<div class="col-sm-4 col-md-offset-4">
						<div class="box">
							<h1>Login</h1>

							<form action="login" method="post">
								<div class="form-group">
									<label for="username">Email</label> <input type="text"
										class="form-control" name="username">
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input type="password"
										class="form-control" name="password">
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">
										<i class="fa fa-sign-in"></i> Log in
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>