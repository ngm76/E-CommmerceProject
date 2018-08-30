<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="adminheader.jsp"%>
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
									<th>Category Name</th>
									<th>Description</th>
								</tr>
							</thead>

							<tbody>
								<!-- For each object in the list, tr has to be repeated -->
								<!--  items refers to the collection of objects -->
								<!-- var is local variable ,takes objects one by one from the collection -->

								<c:forEach var="c" items="${categorieslist}">
									<tr>
										<td>${c.cid}</td>

										<td>${c.cname}</td>

										<td>${c.cdesc}</td>

										<td><a href="<c:url value='/getcatgory/${c.cid}'></c:url>"><span class="fa fa-info"></span></a>
										    <a href="<c:url value='/deletecategory/${c.cid}'></c:url>"><span class="fa fa-trash-o"></span></a>
										    <a href="<c:url value='/editcategory/${c.cid}'></c:url>"><span class="fa fa-pencil"></span></a>
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