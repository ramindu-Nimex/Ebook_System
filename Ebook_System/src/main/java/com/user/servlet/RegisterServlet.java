package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOimpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String password = req.getParameter("password");
			String check = req.getParameter("check");

			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			HttpSession session = req.getSession();

			if (check != null) {
				UserDAOimpl dao = new UserDAOimpl(DBConnect.getConn());
				boolean f = dao.userRegister(us);
				if (f) {
					//System.out.println("user register success..");
					session.setAttribute("succMsg", "user register success..");
					response.sendRedirect("register.jsp");
					
					
				} else {
					//System.out.println("Something Wrong..");
					session.setAttribute("failedMsg", "Something Wrong..");
					response.sendRedirect("register.jsp");
				}
			} else {
				//System.out.println("please check agree & terms");
				session.setAttribute("failedMsg", "please check agree & terms");
				response.sendRedirect("register.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
