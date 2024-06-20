<%@page import="Project.ConnectionProvider"%> 
<%@page import="java.sql.*"%>
<% 
 String uname = request.getParameter("uname");
 String pass = request.getParameter("pass");

 try {
 	Connection con = ConnectionProvider.getCon();
 	PreparedStatement ps = con.prepareStatement("SELECT * FROM adminlogin WHERE uname = ? AND pass = ?");
 	ps.setString(1, uname);
 	ps.setString(2, pass);
 	ResultSet rs = ps.executeQuery();
 	if (rs.next()) {
 		response.sendRedirect("dashboard.jsp");
 	} else {
 		response.sendRedirect("adminerror.jsp");
 	}

 } catch (Exception e) {
 	// TODO: handle exception
 	e.printStackTrace();
 }
 %>