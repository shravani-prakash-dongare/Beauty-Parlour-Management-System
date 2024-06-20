package Servlet;

import java.io.IOException;
import java.io.InputStream;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import user.userDetails;
import DAO.userDAO;
import Project.ConnectionProvider;

@MultipartConfig
@WebServlet("/updatequery")
public class update extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String id = request.getParameter("id");

        // Get the input stream of the image file
        InputStream img = request.getPart("img").getInputStream();
        
        userDetails us = new userDetails();
        us.setFname(fname);
        us.setLname(lname);
        us.setContact(contact);
        us.setEmail(email);
        us.setPid(id);

        // Set the input stream of the image to userDetails object
        us.setInputStream(img);

        
        userDAO dao = new userDAO(ConnectionProvider.getCon());
        boolean f = dao.updateuser(id, fname, lname, contact, email, img);

        HttpSession session = request.getSession();
        if (f) {
            session.setAttribute("updateMessage", "Profile updated successfully.");
            response.sendRedirect("User/profile.jsp");
        } else {
            session.setAttribute("updateError", "Profile update failed. Please try again.");
            response.sendRedirect("User/profile.jsp");
        }
    }
}
