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

@WebServlet("/delete")
public class BookDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			int id = Integer.parseInt(request.getParameter("id"));

			BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
			boolean f = dao.deleteBooks(id);

			HttpSession session = request.getSession();

			if (f) {
				session.setAttribute("succMsg", "Book Delete Sucessfully");
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
