package Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import user.ServiceDetails;
import java.io.IOException;
import java.io.InputStream;
import DAO.ServiceDAO;
import Project.ConnectionProvider;
@MultipartConfig
@WebServlet("/insertservice")
public class service extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String sname = request.getParameter("sername");
		String cost = request.getParameter("cost");

		// Get the input stream of the image file
		InputStream img = request.getPart("img").getInputStream();

		ServiceDetails sd = new ServiceDetails();

		sd.setName(sname);
		sd.setCost(cost);

		// Set the input stream of the image to userDetails object
		sd.setImagePath(img);

		//ServiceDAO dao = new ServiceDAO(ConnectionProvider.getCon());
		ServiceDAO dao=new ServiceDAO(ConnectionProvider.getCon());
		boolean f = dao.addservice(sd);
		
		if (f) {
			response.sendRedirect("admin/viewService.jsp");
		} else {
			response.sendRedirect("admin/addservice.jsp");
		}
	}

}
