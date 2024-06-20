<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Project.ConnectionProvider"%>
<%
String id=request.getParameter("id");

try{
	Connection conn=ConnectionProvider.getCon();
	PreparedStatement ps=conn.prepareStatement("Update appointment set status='Accepted' where id=?");
	ps.setString(1, id);
	ps.executeUpdate();
	response.sendRedirect("newAppointment.jsp?msg=valid");
}catch(Exception e){
	response.sendRedirect("newAppointment.jsp?msg=invalid");
	e.printStackTrace();
}

%>
