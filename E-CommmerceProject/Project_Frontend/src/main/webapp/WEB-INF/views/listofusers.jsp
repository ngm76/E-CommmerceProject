<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta charset="utf-8">


<title>Books Pal</title>


</head>
<body	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper" style="font-family: Helvetica">
		<!-- Sidebar  -->
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<!-- Page Content  -->

			<div class="container">
			
				<div class="col-md-12">
					<div class="table-responsive">
						<table class="table ">
							<thead>
								<tr>
									<th >User Name</th>
									<th>email</th>
									<th>Action</th>
								</tr>
							</thead>

							<tbody>
								<!-- For each object in the list, tr has to be repeated -->
								<!--  items refers to the collection of objects -->
								<!-- var is local variable ,takes objects one by one from the collection -->

								<c:forEach var="u" items="${userslist}">
									<tr>
										<td>${u.username}</td>

										<td>${u.email}</td>
										
										<td><a href="<c:url value='/getuser/${u.username}'></c:url>"><span class="fa fa-info"></span></a>
										    <a href="<c:url value='/deleteuser/${u.username}'></c:url>"><span class="fa fa-trash-o"></span></a>
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