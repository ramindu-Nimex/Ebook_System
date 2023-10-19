<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style = "background-color: #f0f2f2">
	<%@include file="navBar.jsp"%>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Books</h4>
						<c:if test="${not empty succMsg } ">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMsg } ">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>
						<form action="../add_books" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleFormControlInput1">Book Name</label> <input
									type="text" class="form-control" id="exampleFormControlInput1"
									name="bname" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Author Name</label> <input
									type="text" class="form-control" id="exampleFormControlInput1"
									name="author">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Price</label> <input
									type="number" class="form-control" id="exampleFormControlInput1"
									name="price">
							</div>
							<div class="form-group">
								<label for="exampleFormControlSelect1">Book Categories</label> <select
									class="form-control" id="exampleFormControlSelect1"
									name="categories">
									<option selected>--Select--</option>
									<option value="New">New Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlSelect2">Book Status </label> <select
								 class="form-control" id="exampleFormControlSelect2"
									name="status">
									<option selected>--Select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlTextarea1">Upload Photo</label> <input
									type="file" class="form-control" id="exampleFormControlInput1"
									name="bimg">
							</div>
							
							<button type="submit" class = "btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style = "margin-top: 40px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>