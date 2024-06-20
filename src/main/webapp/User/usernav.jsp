<%@page import="java.sql.*"%>
<%@page import="user.userDetails"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="Stylesheet" href="../CSS1/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
	background-color: navy;
	border-radius: 1px;
	color: black;
}
</style>
<body class="bg-light">
	<div class="ms-5">
		<div class="header">
			<div>
				<img src="../img/beauty.png" alt="Unsupported image" height="100px">
			</div>
			<div>
				<h4>
					<span class="text-danger">Beauty Parlour</span><span
						class="text-success"> Management System</span>
					<h3>
			</div>
		</div>
	</div>

	<nav
		class="navbar justify-content-center navbar-expand-sm  bg-custom  navbar-light ">

		<nav class="navbar justify-content-center navbar-expand-sm">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a href="profile.jsp"
							class="nav-link text-light"><i class="fas fa-home"></i>
							Home</a></li>
						<li class="nav-item"><a href="Viewservice.jsp"
							class="nav-link text-light"><i class="fa fa-cloud-download" aria-hidden="true"></i>View Service</a></li>
						<li class="nav-item"><a href="bookApt.jsp"
							class="nav-link text-light"><i class="fas fa-edit"></i>
							Book Appointment</a></li>
						<li class="nav-item"><a href="viewApt.jsp"
							class="nav-link text-light"><i class="fas fa-eye"></i>
							View my Appoinment</a></li>
						<li class="nav-item"><a href="../index.jsp"
							class="nav-link text-light"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
						<li class="nav-item">
							<div class="dropdown">
								<%
								userDetails user = (userDetails) session.getAttribute("userD");

								if (user != null) {
								%>
								<button class="btn btn-outline-light btn-dark dropdown-toggle p-2"
									data-bs-toggle="dropdown">Welcome <%= user.getFname()%>  <%= user.getLname() %>   </button>

								<%
								}
								%>

								<div class="dropdown-menu">
									<a href="profile.jsp" class="dropdown-item">Profile</a> <a
										href="changepwd.jsp" class="dropdown-item">Change Password</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</nav>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>