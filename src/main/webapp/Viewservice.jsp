<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
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
<title>View Service</title>
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

main {
	max-width: 1500px;
	width: 95%;
	margin: 30px auto;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: auto;
}

main .card {
	max-width: 300px;
	flex: 1 1 210px;
	text-align: center;
	height: 350px;
	border: 1px solid lightgrey;
	margin: 20px;
}

main .card .image {
	height: 50%;
	margin-bottom: 20px;
}

main .card .image img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	item-align: center;
}

main .card .caption {
	padding-left: 1em;
	text-align: center;
	line-height: 3em;
	height: 25%;
}

.name {
	font-weight: 300;
}
</style>
<body class="bg-dark text-dark">
	<div class="container mt-3">
		<h3 style="color: rgb(255, 0, 128);">View Service</h3>

		<main>
			<%
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("Select * from services");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				Blob blob = rs.getBlob("img");
				byte byteArray[] = blob.getBytes(1, (int) blob.length());
				String encodeimg = Base64.getEncoder().encodeToString(byteArray);
				String pic = "data:images/jpg;base64," + encodeimg;
			%>
			<div class="card">
				<div class="image">
					<img alt="not supported" src="<%=pic%>">
				</div>
				<div class="caption">
					<p class="name fs-3">
						<b><%=rs.getString("sname")%></b> <br> <span class="fs-5">Cost
							Rs.:<%=rs.getString("cost")%></span>
					</p>
				</div>
			</div>
			<%
			}
			%>
		</main>

	</div>
</body>
</html>