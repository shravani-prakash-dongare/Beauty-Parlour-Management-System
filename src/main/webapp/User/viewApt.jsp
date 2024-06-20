
<%@page import="user.userDetails"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>View Appointment</title>

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
	<div class="container">
		<div class="container">
			<div class="container">
				<div class="container-fluid px-4 text-dark align-items-center mb-5">
					<div class="row g-3 my-2 align-items-center">
						<div class="card ">
							<div class="card-body">
								<div class="container">
									<h3 class="text-center " style="color: rgb(255, 0, 128);">View
										Appointment</h3>
									<hr class="text-danger fw-bold">
									<div class="container">
										<table class="table table-striped table-bordered">
											<thead>
												<tr>
													<th>Sr. No</th>
													<th>Service Name</th>
													<th>Appointment Date</th>
													<th>Appointment Time</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>

											<%
											String pid = user.getPid();
											System.out.println(pid);

											try {
												Connection con = ConnectionProvider.getCon();
												PreparedStatement ps = con.prepareStatement("SELECT * FROM appointment WHERE pid = ?");
												ps.setString(1, pid);
												ResultSet rs = ps.executeQuery();

												int serialNo = 1;
												while (rs.next()) {
											%><tr>
												<td><%=serialNo++%></td>
												<td><%=rs.getString(3)%></td>
												<td><%=rs.getString(4)%></td>
												<td><%=rs.getString(5)%></td>
												<td><%=rs.getString(6)%></td>
												<td><a
													href="deleteviewservice.jsp?id=<%=rs.getInt("id")%>"
													class="btn btn-danger btn-sm"
													onclick="return confirm('Are you sure you want to Delete');">Delete</a></td>
											</tr>
											<%
											}
											} catch (Exception e) {
											e.printStackTrace();
											}
											%>

										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>