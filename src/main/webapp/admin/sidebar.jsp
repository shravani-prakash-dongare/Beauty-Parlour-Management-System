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
<title>Admin Dashboard</title>
</head>
<body>
	<div class="bg-white" id="sidebar-wrapper">
		<div
			class="sidebar-heading text-center py-4 text-dark fs-0 fw-bold text-uppercase border-bottom">
			<span class="fs-5 mb-5" style="letter-spacing:1px; font-weight:normal;">BEAUTY PARLOUR</span>
			<div class="text-center mt-3">
				<img src="../img/image.jpg" alt="Unsupported Images"
					class="rounded-circle border black" height="90px" width="90px">	Admin
			</div>
		
		</div>
		<div class="list-group list-group-flush my-3">
			<a href="dashboard.jsp"
				class="list-group-item list-group-item-action bg-transparent text-dark active"><i
				class="fas fa-tachometer-alt me-2"></i>Dashboard</a> <a
				class="nav-link dropdown-toggle list-group-item list-group-item-action bg-transparent second-text fw-bold"
				data-bs-toggle="dropdown" href="#" role="button"
				aria-expanded="false"><i class="fas fa-project-diagram me-2"></i>Services</a>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="addservice.jsp">Add
						Services</a></li>
				<li><a class="dropdown-item" href="viewService.jsp">Manage
						Services</a></li>
			</ul>

			<a
				class="nav-link dropdown-toggle list-group-item list-group-item-action bg-transparent second-text fw-bold"
				data-bs-toggle="dropdown" href="#" role="button"
				aria-expanded="false"><i class="fas fa-question me-2"></i>Contact
				Us Queries</a>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="unreadQueries.jsp">Unread
						Queries</a></li>
				<li><a class="dropdown-item" href="readQueries.jsp">Read
						Queries</a></li>
			</ul>

			<a
				class="nav-link dropdown-toggle list-group-item list-group-item-action bg-transparent second-text fw-bold"
				data-bs-toggle="dropdown" href="#" role="button"
				aria-expanded="false"><i class="fas fa-user me-2"></i>User</a>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="allUser.jsp">All User</a></li>
			</ul>

			<a
				class="nav-link dropdown-toggle list-group-item list-group-item-action bg-transparent second-text fw-bold"
				data-bs-toggle="dropdown" href="#" role="button"
				aria-expanded="false"><i class="fas fa-edit me-2"></i>Appointment</a>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="newAppointment.jsp">New
						Appointment</a></li>
				<li><a class="dropdown-item" href="confirmApt.jsp">Confirm
						Appointment</a></li>
				<li><a class="dropdown-item" href="allApt.jsp">All
						Appointment</a></li>
			</ul>
			<a href="changePassword.jsp"
				class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
				class="fas fa-lock me-2"></i>Change Password</a> <a href="admin.jsp"
				class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
				class="fas fa-power-off me-2"></i>Logout</a>
		</div>
	</div>
</body>
</html>