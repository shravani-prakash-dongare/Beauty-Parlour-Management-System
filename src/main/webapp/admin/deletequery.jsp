<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionProvider"%>

<%
String id=request.getParameter("id");
try{
	Connection conn=ConnectionProvider.getCon();
	Statement st =conn.createStatement();
	st.executeUpdate("delete from contact where id='"+id+"'"); 
	response.sendRedirect("readQueries.jsp?msg=deleted");
}catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("readQueries.jsp?msg=invalid");

}


%>