<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String sub = request.getParameter("sub");
String msg = request.getParameter("msg");
String status="Pending";

try {
	Connection con = ConnectionProvider.getCon();
	String query = "INSERT INTO contact (name,email, sub, msg,status) VALUES (?,?,?,?,?)";
	PreparedStatement pst = con.prepareStatement(query);
	pst.setString(1, name);
	pst.setString(2, email);
	pst.setString(3, sub);
	pst.setString(4, msg);
	pst.setString(5, status);

	int result = pst.executeUpdate();
	session = request.getSession();
	if (result > 0) {
		session.setAttribute("updateMessage", "Message send successfully...!");
		response.sendRedirect("index.jsp#contact");
	} else {
		session.setAttribute("updateError", " Message not send. Please try again.");
		response.sendRedirect("index.jsp#contact");
	}

} catch (Exception e) {
	e.printStackTrace();
}
%>
