<%@page import="java.io.Serial"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
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
<title>Unread Query</title>
</head>

<body>
	<div class="d-flex" id="wrapper">
		<!-- Sidebar -->
		<%@include file="sidebar.jsp"%>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<nav
				class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
				<div class="d-flex align-items-center">
					<i class="fas fa-align-left primary-text fs-4 me-3"
						id="menu-toggle"></i>
					<h5 class="fs-5 m-0">Dashboard</h5>
				</div>

				<button class="navbar-toggler text-dark" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item dropdown"><a
							class="nav-link text-light second-text fw-bold" href="admin.jsp">
								<i class="fas fa-user me-2"></i>Logout
						</a>
					</ul>
				</div>
			</nav>

			<div class="container-fluid px-4 text-dark align-items-center mb-5">
				<div class="row g-3 my-2 align-items-center">
					<div class="card ">
						<div class="card-body">
							<div class="container">
								<h4>Unread Queries</h4>
								<hr class="text-danger fw-bold">
								<div class="container">
									<table class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>Sr. No</th>
												<th> Name </th>
												<th> Email </th>
												<th> Message </th>
												<th>Action</th>
											</tr>
										</thead>
										
										<%
										try {
											Class.forName("com.mysql.cj.jdbc.Driver");
											Connection con = ConnectionProvider.getCon();
											Statement st = con.createStatement();
											ResultSet rs = st.executeQuery("SELECT * FROM contact where status='Pending'");

											int serialNo = 1;
											while (rs.next()) {
										%>
										<tr>
											<td><%=serialNo++%></td>
											<td><%=rs.getString(2)%></td>

											<td><%=rs.getString(3)%></td>
											<td><%=rs.getString(5)%></td>
											<td><a href="viewAcceptFAQ.jsp?id=<%=rs.getString(1) %>" class="btn btn-primary btn-sm"
											>View Details</a></td>
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
		<!-- /#page-content-wrapper -->
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		var el = document.getElementById("wrapper");
		var toggleButton = document.getElementById("menu-toggle");

		toggleButton.onclick = function() {
			el.classList.toggle("toggled");
		};
	</script>
</body>
</html>