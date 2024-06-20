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
<title>Add Service page</title>
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

								<form action="../insertservice" method="post"
									enctype="multipart/form-data">
									<h4>Add Parlour Service</h4>
									<hr class="text-danger fw-bold">
									<div class="container">

										<div class="form-group">
											<label for="email">Service Name</label> <input type="text"
												class="form-control" name="sername"
												placeholder="Enter Service Name" required>
										</div>
										<div class="form-group">
											<label for="email">Service Cost</label> <input type="number"
												class="form-control" name="cost"
												placeholder="Enter Service Cost in Rs." required>
										</div>
										<div class="form-group">
											<label for="email">Service Name</label> <input type="file"
												class="form-control" id="email" required name="img">
										</div>

										<br>
										<hr>
										<button type="submit"
											class="btn Registerbtn btn-danger btn-outline-light text-center">Register</button>
									</div>

								</form>
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