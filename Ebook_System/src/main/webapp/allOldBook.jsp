<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.DAO.BookDAOimpl"%>	
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.BookDetails"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Book</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("all_components/img/b.jpeg");
	height: 70vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #f7f7f7;
}
</style>
</head>
<body>
	<%@include file="all_components/navBar.jsp"%>
	<div class="container-flued">
		<div class="row pt-3">
			
				<%
			BookDAOimpl dao3 = new BookDAOimpl(DBConnect.getConn());	
			List<BookDetails> list3 = dao3.getOldBooks();
			for(BookDetails b : list3) {
				%>
				<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="all_components/book/<%= b.getPhotoName() %>"
							style="width: 150px; height: 200px;">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p><%= b.getBookCategory() %></p>
						<div class="row text-center">
							<a
								href="" class="btn btn-success btn-sm ml-6">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%><i class="fas fa-rupee-sign"></i></a>
						</div>
						
					</div>
				</div>
				</div>
				<% 
			}
			%>
			
		</div>
	</div>
</body>
</html>