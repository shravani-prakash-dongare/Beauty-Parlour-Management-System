<%@ page import="java.sql.*" %>
<%@ page import="Project.ConnectionProvider" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String pid = request.getParameter("pid");
String cpass = request.getParameter("cpass");
String npass = request.getParameter("npass");
String conpass = request.getParameter("conpass");

// Ensure new password and confirm password match
if (npass.equals(conpass)) {
    // Ensure current password and new password are not the same
    if (!cpass.equals(npass)) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = ConnectionProvider.getCon();
            // Use the correct column name as per your table schema, assuming it's 'pid'
            ps = conn.prepareStatement("SELECT password FROM register WHERE pid = ?");
            ps.setString(1, pid);
            rs = ps.executeQuery();
            if (rs.next()) {
                String currentPassword = rs.getString("password");
                // Check if current password is correct
                if (currentPassword.equals(cpass)) {
                    ps = conn.prepareStatement("UPDATE register SET password = ? WHERE pid = ?");
                    ps.setString(1, npass);  // Ideally, encrypt the password before storing
                    ps.setString(2, pid);
                    ps.executeUpdate();
                    response.sendRedirect("changepwd.jsp?msg=valid");
                } else {
                    response.sendRedirect("changepwd.jsp?msg=invalidcurrent");
                }
            } else {
                response.sendRedirect("changepwd.jsp?msg=invaliduser");
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Ensure no data has been written to the response yet
            if (!response.isCommitted()) {
                response.sendRedirect("changepwd.jsp?msg=error");
            }
        } finally {
            // Close resources in the finally block to ensure they are closed even if an exception occurs
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    } else {
        response.sendRedirect("changepwd.jsp?msg=same");
    }
} else {
    response.sendRedirect("changepwd.jsp?msg=notsame");
}
%>
