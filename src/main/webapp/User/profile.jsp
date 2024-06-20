<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.*"%>
<%@page import="user.userDetails"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="Stylesheet" href="../CSS1/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<title>Profile Page</title>
</head>
<style>
.header {
	display: flex;
	margin-top: 50px;
}

.bg-custom {
	background: rgb(255, 0, 128);
}

ul li a:hover {
	padding: 7px;
	background-color: red;
	border-radius: 1px;
	color: rgb(255, 255, 0);
}
</style>
<body class="bg-light">
	<%@include file="usernav.jsp"%>
	<div class="text-center mt-3">
		<h3 style="color: rgb(255, 0, 128);">Profile</h3>
	</div>
	<div class="container">
		<div class="card mb-5">
			<div class="card-body ">
				<table class="table">
					<tr>
						<td><b>Full Name :</b></td>
						<td><%=user.getFname()%> <%=user.getLname()%></td>
					</tr>
					<tr>
						<td><b>ID Card Number :</b></td>
						<td><%=user.getPid()%></td>
					</tr>

					<tr>
						<%
					
					String id=user.getPid();
					Connection con=ConnectionProvider.getCon();
					PreparedStatement ps=con.prepareStatement("Select * from register where pid=?");
					ps.setString(1, id);
					ResultSet rs=ps.executeQuery();
					if(rs.next()){
						Blob blob=rs.getBlob(8);
					byte byteArray[]=blob.getBytes(1,(int) blob.length());
					String encodeimg=Base64.getEncoder().encodeToString(byteArray);
					String pic="data:images/jpg;base64,"+encodeimg;
					%>
					<td><b>image :</b></td>
						<td><img alt="Profile image" src="<%=pic%>" width="130px" height="130px"></td>
					</tr>
						<%
					}
					
					%>
						
					<tr>
						<td><b>Email :</b></td>
						<td><%=user.getEmail()%></td>
					</tr>
					<tr>
						<td><b>Contact No :</b></td>
						<td><%=user.getContact()%></td>
					</tr>

				</table>

				<a href=" edit.jsp?id=<%=user.getPid() %>" class=" btn bg-primary text-light mt-3">Edit Profile</a>
			</div>

		</div>
	</div>


</body>
</html>