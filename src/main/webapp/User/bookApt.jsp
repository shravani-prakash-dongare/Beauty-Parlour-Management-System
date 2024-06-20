<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="user.userDetails"%>
<%@page import="Project.ConnectionProvider"%>
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
<title>Book Appointment</title>
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

									<form action="bookAptAction.jsp" method="post">
										<h3 class="text-center " style="color: rgb(255, 0, 128);">Book
											Appointment</h3>
										<hr class="text-danger fw-bold">
										<div class="container">
											<input type="hidden" class="form-control" name="pid"
												value="<%=user.getPid()%>"> <input type="hidden"
												class="form-control" name="name"
												value="<%=user.getFname()%> <%=user.getLname()%>">


											<div class="form-group mb-3">
												<label for="email">Service Name</label>

											</div>
											<div class="form-group mb-3">
												<select class="form-select" id="inlineFormSelectPref"
													name="sername">

													<%
													Connection con = ConnectionProvider.getCon();
													PreparedStatement ps = con.prepareStatement("Select sname from services");
													ResultSet rs = ps.executeQuery();
													while (rs.next()) {
													%>
													<option><%=rs.getString(1)%></option>
													<%
													}
													%>
												</select>
											</div>
											<div class="form-group mb-3">
												<label for="email">Appointment Date</label> <input
													type="date" class="form-control" name="date" required>
											</div>
											<div class="form-group mb-3">
												<label for="email">Appointment Time</label> <input
													type="time" class="form-control" name="time" required>
											</div>

											<button type="submit"
												class="btn Registerbtn btn-danger btn-outline-light text-center">Submit</button>
										</div>
									</form>
									<%
									session = request.getSession(false);
									if (session != null && session.getAttribute("updateMessage") != null) {
										session.removeAttribute("updateMessage");
									} else if (session != null && session.getAttribute("updateError") != null) {
										session.removeAttribute("updateError");
									}
									%>
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