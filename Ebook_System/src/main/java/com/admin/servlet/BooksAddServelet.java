package com.admin.servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOimpl;
import com.DB.DBConnect;
import com.entity.BookDetails;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAddServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String bookName = request.getParameter("bname");
			String author = request.getParameter("author");
			String price = request.getParameter("price");
			String categories = request.getParameter("categories");
			String status = request.getParameter("status");
			Part part = request.getPart("bimg");
			String fileName = part.getSubmittedFileName();

			String path = getServletContext().getRealPath("") + "book";
			File file = new File(path);

			if (!file.exists()) {
				file.mkdirs(); // Create the directory if it doesn't exist
			}
			
			part.write(path + File.separator + fileName);

			BookDetails b = new BookDetails(bookName, author, price, categories, status, fileName, "admin");

			BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());

			boolean f = dao.addBooks(b);
			HttpSession session = request.getSession();

			if (f) {

				session.setAttribute("succMsg", "Book Add Sucessfully");
				response.sendRedirect("admin/addBooks.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wrong on server");
				response.sendRedirect("admin/addBooks.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
