<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Project.ConnectionProvider"%>
<%
String id=request.getParameter("id");

try{
	Connection conn=ConnectionProvider.getCon();
	PreparedStatement ps=conn.prepareStatement("Update contact set status='Accepted' where id=?");
	ps.setString(1, id);
	ps.executeUpdate();
	response.sendRedirect("Viewdetail.jsp");
	session=request.getSession();
	session.setAttribute("username", id);
	
}catch(Exception e){
	response.sendRedirect("Viewdetail.jsp");
	e.printStackTrace();
}


%>
