package Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import user.userDetails;
import DAO.userDAO;
import Project.ConnectionProvider;
import java.io.PrintWriter;

@WebServlet("/login")
public class userlogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pid = request.getParameter("pid");
		String pass = request.getParameter("pass");

		userDetails us = new userDetails();
		us.setPid(pid);
		us.setPassword(pass);

		userDAO dao = new userDAO(ConnectionProvider.getCon());
		userDetails user = dao.loginUser(us);

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userD", user);
			response.sendRedirect("User/profile.jsp");
		} else {
			response.sendRedirect("index.jsp#userlogin");
		}
	}
}
