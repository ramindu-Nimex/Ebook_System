package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOimpl;
import com.DB.DBConnect;
import com.entity.BookDetails;

@WebServlet("/edit_books")
public class EditBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			String bookName = request.getParameter("bname");
			String author = request.getParameter("author");
			String price = request.getParameter("price");
			String status = request.getParameter("status");
			
			BookDetails b = new BookDetails();
			
			b.setBookId(id);
			b.setBookName(bookName);
			b.setAuthor(author);
			b.setPrice(price);
			b.setStatus(status);
			
			BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
			boolean f = dao.updateBooks(b);
			
			HttpSession session = request.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Book Update Sucessfully");
				response.sendRedirect("admin/allBooks.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wrong on server");
				response.sendRedirect("admin/allBooks.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
