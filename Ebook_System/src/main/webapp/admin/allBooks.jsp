<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page import="com.DAO.BookDAOimpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.BookDetails"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Books</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navBar.jsp"%>
	<h3 class="text-center p-2">Hello Admin</h3>

	<c:if test="${not empty succMsg } ">
		<h5 class="text-center text-success">${succMsg}</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg } ">
		<h5 class="text-center text-danger">${failedMsg}</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	<table class="table table-striped">
		<thead class="thead-dark text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Image</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
			List<BookDetails> list = dao.getAllBooks();
			for (BookDetails b : list) {
			%>
			<tr>
				<td><%=b.getBookId()%></td>
				<td><img alt="" src="../book/<%=b.getPhotoName()%>"
					style="width: 50px; height: 50px;"></td>
				<td><%=b.getBookName()%></td>
				<td><%=b.getBookId()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="editBooks.jsp?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-primary"><i class="fas fa-edit"></i>Edit</a> <a
					href="../delete?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i> Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<div style="margin-top: 180px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>