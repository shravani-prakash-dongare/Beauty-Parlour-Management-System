<!DOCTYPE html>
<%@ page import="Project.ConnectionProvider"%>
<%@ page
	import="java.sql.*, java.util.Base64, jakarta.servlet.http.HttpSession"%>

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
<title>Edit Page</title>
<script>
	function confirmUpdate() {
		return confirm("Are you sure you want to update your profile?");
	}
</script>
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
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<div class="card text-dark">
				<div class="card-body">
					<div class="main-box box">
						<%
						session = request.getSession(false);
						if (session != null && session.getAttribute("updateMessage") != null) {
							session.removeAttribute("updateMessage");
						} else if (session != null && session.getAttribute("updateError") != null) {
							out.println("<p style='color:red;'>" + session.getAttribute("updateError") + "</p>");
							session.removeAttribute("updateError");
						}
						%>
						<form action="../updatequery" method="post"
							enctype="multipart/form-data" onsubmit="return confirmUpdate();">
							<h3 class="text-center mb-5">Edit Profile</h3>
							<div class="row">
								<div class="col">
									<label for="inputEmail4">First Name </label> <input type="text"
										class="form-control" placeholder="Enter First name"
										name="fname" value="<%=user.getFname()%>">
								</div>
								<div class="col">
									<label for="inputEmail4">Last Name</label> <input type="text"
										class="form-control" placeholder="Enter Last name"
										name="lname" value="<%=user.getLname()%>">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col">
									<label for="inputEmail4">Contact</label> <input type="number"
										class="form-control" placeholder="Enter Contact"
										name="contact" value="<%=user.getContact()%>">
								</div>
								<div class="col">
									<label for="inputEmail4">Gender</label> <input type="text"
										class="form-control" placeholder="Enter Gender" name="gender"
										disabled value="<%=user.getGender()%>">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col">
									<label for="inputEmail4">Email</label> <input type="text"
										class="form-control" placeholder="Enter Email Address"
										value="<%=user.getEmail()%>" name="email">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col">
									<label for="inputEmail4">ID (Aadhar/PAN/Voter)</label> <input
										type="text" class="form-control"
										placeholder="Enter ID Aadhar/PAN/Voter" disabled
										value="<%=user.getPid()%>">
								</div>
							</div>
							<input type="hidden" name="id" value="<%=user.getPid()%>">
							<%
							String id1 = user.getPid();
							Connection con = ConnectionProvider.getCon();
							PreparedStatement ps = con.prepareStatement("Select * from register where pid=?");
							ps.setString(1, id1);
							ResultSet rs = ps.executeQuery();
							if (rs.next()) {
								Blob blob = rs.getBlob(8);
								byte byteArray[] = blob.getBytes(1, (int) blob.length());
								String encodeimg = Base64.getEncoder().encodeToString(byteArray);
								String pic = "data:images/jpg;base64," + encodeimg;
							%>
							<td><b>image :</b></td>
							<td><img alt="Profile image" src="<%=pic%>" width="130px"
								height="130px"></td>
							</tr>
							<div class="row">
								<div class="col">
									<br> <input type="file" class="form-control"
										id="exampleFormControlFile1" name="img">
								</div>
							</div>
							<%
							}
							%>

							<br>
							<div class="text-center">
								<button type="submit"
									class="btn Registerbtn btn-dark btn-outline-light text-center">UPDATE</button>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
