package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.InputStream;

import DAO.userDAO;
import Project.ConnectionProvider;
import user.userDetails;

@MultipartConfig
@WebServlet("/insert")
public class userServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String contact = request.getParameter("contact");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String id = request.getParameter("id");

		// Get the input stream of the image file
		InputStream inputStream = request.getPart("img").getInputStream();

		userDetails us = new userDetails();

		us.setFname(fname);
		us.setLname(lname);
		us.setContact(contact);
		us.setGender(gender);
		us.setEmail(email);
		us.setPassword(pass);
		us.setPid(id);

		// Set the input stream of the image to userDetails object
		us.setInputStream(inputStream);
		
		 HttpSession session = request.getSession();
		userDAO dao = new userDAO(ConnectionProvider.getCon());
		boolean f = dao.adduser(us);
		if (f) {
			session.setAttribute("updateMessage", "Profile Created successfully.");
			response.sendRedirect("index.jsp");
		} else {
			session.setAttribute("updateMessage", "Something went wrong on Server..!");
			response.sendRedirect("index.jsp");
		}
	}
}
