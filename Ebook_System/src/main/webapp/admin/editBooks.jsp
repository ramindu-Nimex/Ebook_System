<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page import="com.DAO.BookDAOimpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.BookDetails"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2">
	<%@include file="navBar.jsp"%>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>

						<% 
						int id = Integer.parseInt(request.getParameter("id"));
						BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
						BookDetails b = dao.getBookById(id);
						%>

						<form action="../edit_books" method="post">
						<input type="hidden" name="id" value = "<%= b.getBookId() %>">
							<div class="form-group">
								<label for="exampleFormControlInput1">Book Name</label> <input
									type="text" class="form-control" id="exampleFormControlInput1"
									name="bname" aria-describedby="emailHelp"
									value="<%= b.getBookName() %>">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Author Name</label> <input
									type="text" class="form-control" id="exampleFormControlInput1"
									name="author" value="<%= b.getAuthor() %>">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Price</label> <input
									type="number" class="form-control"
									id="exampleFormControlInput1" name="price"
									value="<%= b.getPrice() %>">
							</div>
							<div class="form-group">
								<label for="exampleFormControlSelect2">Book Status </label> <select
									class="form-control" id="exampleFormControlSelect2"
									name="status">

									<% if("Active".equals(b.getStatus())) {
										%>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<% 
									} else {
										%>
									<option value="Inactive">Inactive</option>
									<option value="Active">Active</option>
									<%
									}								
									%>
								</select>
							</div>
							<br><br>
							<button type="submit" class="btn btn-primary">UPDATE</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 40px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>