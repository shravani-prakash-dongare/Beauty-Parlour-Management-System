<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
String name = request.getParameter("name");
String pid = request.getParameter("pid");
String sername = request.getParameter("sername");
String dateStr = request.getParameter("date");
String timeStr = request.getParameter("time");
String status = "Pending";

try {
	// Parse and format the date and time
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");

	Date date = dateFormat.parse(dateStr);
	Date time = timeFormat.parse(timeStr);

	String formattedDate = dateFormat.format(date);
	String formattedTime = timeFormat.format(time);

	Connection con = ConnectionProvider.getCon();
	String query = "INSERT INTO appointment (fname,service, dates, time, status,pid) VALUES (?,?, ?, ?, ?,?)";
	PreparedStatement pst = con.prepareStatement(query);
	pst.setString(1, name);
	pst.setString(2, sername);
	pst.setString(3, formattedDate);
	pst.setString(4, formattedTime);
	pst.setString(5, status);
	pst.setString(6, pid);

	int result = pst.executeUpdate();
	session = request.getSession();
	if (result > 0) {
		session.setAttribute("updateMessage", "Profile updated successfully.");
		response.sendRedirect("viewApt.jsp");
	} else {
		session.setAttribute("updateError", "Profile update failed. Please try again.");
		response.sendRedirect("bookApt.jsp");
	}

} catch (Exception e) {
	e.printStackTrace();
}
%>
