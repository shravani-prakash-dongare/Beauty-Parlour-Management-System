<%@ page import="user.userDetails"%>
<%@ page import="Project.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="Stylesheet" href="../CSS1/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<title>Change User Password</title>
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
	<%@ include file="usernav.jsp" %>
	<div class="container">
		<div class="container">
			<div class="container">
				<div class="container-fluid px-4 text-dark align-items-center mb-5">
					<div class="row g-3 my-2 align-items-center">
						<div class="card">
							<div class="card-body">
								<div class="container">
									<%
									String msg = request.getParameter("msg");
									if ("valid".equals(msg)) {
									%>
										<div class="text-center alert alert-success fs-5">Password Changed..!</div>
									<%
									} else if ("same".equals(msg)) {
									%>
										<div class="text-center alert alert-danger fs-5">Current Password and New Password are the Same</div>
									<%
									} else if ("notsame".equals(msg)) {
									%>
										<div class="text-center alert alert-danger fs-5">New Password and Confirm Password do not Match</div>
									<%
									} else if ("invalidcurrent".equals(msg)) {
									%>
										<div class="text-center alert alert-danger fs-5">Current Password is Incorrect</div>
									<%
									} else if ("invaliduser".equals(msg)) {
									%>
										<div class="text-center alert alert-danger fs-5">User Not Found</div>
									<%
									} else if ("error".equals(msg)) {
									%>
										<div class="text-center alert alert-danger fs-5">An Error Occurred. Please Try Again Later</div>
									<%
									}
									%>
									<form action="pwdAction.jsp" method="post">
										<h4>Change Password</h4>
										<hr class="text-danger fw-bold">
										<div class="container">
											<input type="hidden" class="form-control" name="pid" value="<%= user.getPid() %>" >
											<div class="form-group mb-3">
												<label for="cpass">Current Password</label>
												<input type="password" class="form-control" name="cpass" placeholder="Enter Current Password." required>
											</div>
											<div class="form-group mb-3">
												<label for="npass">New Password</label>
												<input type="password" class="form-control" name="npass" placeholder="Enter New Password." required>
											</div>
											<div class="form-group mb-3">
												<label for="conpass">Confirm New Password</label>
												<input type="password" class="form-control" name="conpass" placeholder="Enter New Password Again." required>
											</div>
											<button type="submit" class="btn Registerbtn btn-danger btn-outline-light text-center">Submit</button>
										</div>
									</form>
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
