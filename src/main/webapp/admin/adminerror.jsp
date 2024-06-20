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

<title>Admin Page</title>
</head>

<body>
		<!-- -------------------------------- admin login section---------------------------->
	<section id="adminlogin">
		<br> 
		<div class="container text-light mt-5">
			<div class=" container row">
				<div class=" container col-md-5 bg-dark" style="border-radius:5px;">
					<h6 style='color:red; margin-top:15px;' class="text-center" >Wrong Username or Password .......!</h6>
					
					<form action="adminLoginAction.jsp" method="post">
					<div class="text-center">
					<img src="../img/image.jpg"
							alt="Unsupported Images" class="rounded-circle" height="100px"
							width="100px">
					</div>
						
						<h4 class="text-center">Admin Login</h4>
						<hr>
						<div class="form-group"> <input
								type="text" class="form-control" id="exampleInputEmail1" aria
								describedby="emailHelp" placeholder="Enter email" name="uname">
						</div>
						<div class="form-group mt-3">
							 <input
								type="password" class="form-control" id="exampleInputPassword1"
								placeholder="Password" name="pass">
						</div>
						<hr>
						<div class="text-center">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
						<div class="text-center">
							<a href="../index.jsp" class=" text-light">Back</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<br><br><br><br><br>
	<div class="text-center bg-light text-dark">
		<h5>
			<br>Thank you for Visting our Website <br> <br>
		</h5>
	</div>
	<br>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>