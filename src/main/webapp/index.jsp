<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="Stylesheet" href="CSS1/style.css">
<title>Home Page</title>
<script>
function confirmUpdate() {
    return confirm("Are you sure you want to Send Message");
}

</script>

</head>
<style>
.hoverimg {
	width: 98%;
	height: 68vh;
	border: 2px solid grey;
}

.hoverimg:hover {
	width: 100%;
	height: 70vh;
}

.header {
	height: 100vh;
	width: 100%;
	background-image: url(img/back.jfif);
	background-repeat: no-repeat;
	background-size: cover;
}

.section1 {
	height: 100vh;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.8);
	color: white;
}

.section2 {
	height: 100vh;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.9);
	color: white;
}

.p1 {
	font-size: 40px;
	font-weight: 500;
	letter-spacing: 3px;
	text-shadow: 1px 1px 2px black;
	text-transform: uppercase;
	padding-top: 300px;
}
</style>

<body>
	<header class="header" id="home">
		<section class="section1">
			<div class="bg h-1 fixed-top">
				<nav class="navbar navbar-expand-lg navbar-light navc bg-dark"
					id="home ">
					<div class="container-fluid ">
						<a class="navbar-brand text-light div1 text-warning">BEAUTY
							PARLOUER</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a
									class="nav-link active text-warning" aria-current="page"
									href="#home">Home</a></li>
								<li class="nav-item"><a class="nav-link text-warning"
									href="#about1">About</a></li>
								<li class="nav-item"><a
									class="nav-link active text-warning" aria-current="page"
									href="#userlogin">User Login</a></li>
								<li class="nav-item"><a class="nav-link text-warning"
									href="#ourworker">Our Worker</a></li>
								<li class="nav-item"><a
									class="nav-link active text-warning" aria-current="page"
									href="#gallery">Gallery</a></li>
								<li class="nav-item"><a class="nav-link text-warning"
									href="#contact">Contact</a></li>
								<li class="nav-item"><a class="nav-link text-warning"
									href="admin/admin.jsp">Admin Login</a></li>
							</ul>
							<form class="d-flex">
								<a class="btn btn-outline-warning btn1" href="#register">
									Registration</a>
								</li>
							</form>
						</div>
					</div>
				</nav>
			</div>

			<!--------------------main -------------------------->
			<div class="container">
				<main class="main1">
					<section class="">
						<h1 class="container divpart p1">
							Welcome to <span class="text-warning">Beauty Parlour </span>
						</h1>
						<h4>Thanks for giving this Opportunity.</h4>
						<a href="Viewservice.jsp" class=" btn btn-outline-warning btn1 mt-3"> Our
							service</a> <a href="#register"
							class="btn btn-outline-warning btn1 mt-3">Registration</a>

					</section>
				</main>
			</div>
		</section>
	</header>

	<!-- -----------------------------------------About Section ---------------------------------------->
	<div class="back header">
		<div class="  section2">
			<div class="row" id="London">
				<section id="about1">
					<div class="container text-light">
						<div class="heading">
							About <span>us</span>
						</div>
						<div class="row ">
							<div class="col-md-6">
								<h1>All About Beauty Parlour...</h1>
								<p>
									A beauty salon or Beauty Parlour is an Establishment Dealing
									with cosemetic treatment for men and women. There's a
									difference between a beauty salon and a beauty parlour which is
									that a beauty salonis well developed space in a private
									location, usually having more feature than a beauty parlour
									could have. <br> <br>A beauty salon is an
									establishment that offers a variety of cosemetic treatments and
									cosmetic services for men nd women. <br> <br>At the
									Beauty parlour, we believe in beauty with a conscience.We have
									created a salon that offers the highest quality hair services<br>
									<br>By visiting the beauty parlour,we all can have healthy
									and beautiful skin under the guidence of beauty experts. <br>
									<br> A good beauty parlour is required in every city town
									andother places, A beauty parlour with all modern facilities
									and services and services at reasonable charges.
								</p>
							</div>
							<div class="col-md-6 text-center">
								<img src="img/about.jpg" class="hoverimg">
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- ---------------------About Section End -------------------------->

	<!-- ---------------------User Login Section -------------------------->
	<section id="userlogin">
		<br> <br> <br> <br>
		<div class="container text-light mt-5">

			<div class=" container row mt-6 ">
				<div class=" container col-md-6">
					<br>
					<h3 class="text-warning ">Login Here...</h3>
					<form action="login" method="post">
						<h3 class="text-center">USER LOGIN</h3>
						<br>
						<hr>
						<div class="form-group">
							<label for="exampleInputEmail1">Username</label> <input
								type="text" class="form-control" id="exampleInputEmail1" aria
								describedby="emailHelp" placeholder="Enter Username" name="pid">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" id="exampleInputPassword1"
								name="pass" placeholder="Password">
						</div>
						<hr>
						<div class="text-center">
							<button type="submit" class="btn btn-danger">Submit</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<br> <br> <br> <br> <br>
	</section>
	<!-- ---------------------login Section End -------------------------->

	<!-- -------------------------------- Gallery ---------------------------->
	<section id="gallery">
		<br> <br>
		<div class="container mt-5">
			<h4 class="text-light">Gallery</h4>
			<h3 class="text-warning">Some Photos of our parlour</h3>
			<br>
			<div class="row row-cols-1 row-cols-md-3 g-4">

				<div class="col">
					<div class="card h-100">
						<img src="img/8.jfif" class="card-img-top"
							alt="Unsupported Images">
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="img/9.jfif" class="card-img-top"
							alt="Unsupported Images">
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="img/2.jfif" class="card-img-top"
							alt="Unsupported Images">
					</div>
				</div>
			</div>
		</div>
		<br> <br>
		<div class="container mt-3 ">
			<div class="row row-cols-1 row-cols-md-3 g-4">
				<div class="col">
					<div class="card h-100">
						<img src="img/11.jfif" class="card-img-top"
							alt="Unsupported Images">
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="img/3.jfif" class="card-img-top"
							alt="Unsupported Images">
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="img/4.jfif" class="card-img-top"
							alt="Unsupported Images">
					</div>
				</div>
			</div>
		</div>
		<br> <br>
		<div class="container mt-3 ">
			<div class="row row-cols-1 row-cols-md-3 g-4">
				<div class="col">
					<div class="card h-100">
						<img src="img/5.jfif" class="card-img-top"
							alt="Unsupported Images">
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="img/7.jfif" class="card-img-top"
							alt="Unsupported Images">
					</div>
				</div>
				<div class="col">
					<div class="zoom in">
						<div class="card h-100">
							<img src="img/11.jfif" class="card-img-top"
								alt="Unsupported Images">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ---------------------our workers Section -------------------------->
	<section id="ourworker">
		<br> <br>
		<div class="container mt-5">
			<h4 class="text-light">Workers</h4>
			<h2 class="text-warning">Our Professional</h2>
			<br>
			<div class="row row-cols-1 row-cols-md-3 g-4 ">
				<div class="col text-center">
					<div class="card h-100 single-team">
						<img src="img/art1.jfif" class="card-img-top"
							alt="Unsupported Images">
						<div class="team-text">
							<h2>ABC Artist</h2>
							<p>Makeup Artist</p>
							<p>
								<a href="#"><i class="fa fa-facebook-official"
									aria-hidden="true"></i> </a> <a href="#"><i
									class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i
									class="fa fa-youtube-play" aria-hidden="true"></i> </a> <a href="#"><i
									class="fa fa-twitter-square" aria-hidden="true"></i></a>
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100 single-team">
						<img src="img/art2.jfif" class="card-img-top"
							alt="Unsupported Images">
						<div class="team-text">
							<h2>XYZ Artist</h2>
							<p>Makeup Artist</p>
							<p>
								<a href="#"><i class="fa fa-facebook-official"
									aria-hidden="true"></i> </a> <a href="#"><i
									class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i
									class="fa fa-youtube-play" aria-hidden="true"></i> </a> <a href="#"><i
									class="fa fa-twitter-square" aria-hidden="true"></i></a>
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100 single-team">
						<img src="img/art1.jfif" class="card-img-top"
							alt="Unsupported Images">
						<div class="team-text">
							<h2>MNO Artist</h2>
							<p>Makeup Artist</p>
							<p>
								<a href="#"><i class="fa fa-facebook-official"
									aria-hidden="true"></i> </a> <a href="#"><i
									class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i
									class="fa fa-youtube-play" aria-hidden="true"></i> </a> <a href="#"><i
									class="fa fa-twitter-square" aria-hidden="true"></i></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- -------------------------------- Our Workers End ---------------------------->

	<!-- -------------------------------- Contact section Start---------------------------->
	<section id="contact">
		<div class=" container mt-4">
			<h6 class="text-light">Contact</h6>
			<h3 class="text-warning">Contact Us</h3>
			<div class="row mt-3">
				<div class="col-md-12 text-center">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30028.746980941665!2d74.77519641155966!3d19.81483077383126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdc7b1d5d58cee1%3A0x77a078f0294bb2f0!2sSirasgaon%2C%20Maharashtra%20423701!5e0!3m2!1sen!2sin!4v1700831752065!5m2!1sen!2sin"
						width="100%" height="350" style="border: 1;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
		</div>
		<div class="container text-light">
			<div class="row mt-5">
				<div class="col-md-4">
					<i class="fa fa-map-marker" aria-hidden="true"></i>
					<h4>Location</h4>
					<p>
						Near By maroti temple gajgaon,<br> Chha. Sambhjinagar
					</p>
					<br> <i class="fa fa-envelope-o" aria-hidden="true"></i>
					<h4>Email</h4>
					<p>saundaryabeautyparlour@gmail.com</p>
					<br> <i class="fa fa-phone" aria-hidden="true"></i>
					<h4>Contact No:</h4>
					<p>+32 258 4569870</p>
				</div>
				<div class="col-md-8">
					<div class="contactform">

						<div class="row">
						<%
							session = request.getSession(false);
							if (session != null && session.getAttribute("updateMessage") != null) {
								out.println("<h5 style='color:green;'>" + session.getAttribute("updateMessage") + "</h5>");
								session.removeAttribute("updateMessage");
							} else if (session != null && session.getAttribute("updateError") != null) {
								out.println("<h5 style='color:red;'>" + session.getAttribute("updateError") + "</h5>");
								session.removeAttribute("updateError");
							}
						%>
							<form action="contactAction.jsp" method="post" onsubmit="return confirmUpdate();">
								<div class="form-row" style="display: flex;">
									<div class="form-group col-md-6 me-2">
										<input type="text" class="form-control" id="Name"
											placeholder="Name" name="name" required>
									</div>
									<br>
									<div class="form-group col-md-6">
										<input type="email" class="form-control" id="inputEmail4"
											placeholder="Your Email" name="email" required>
									</div>
								</div>
								<br>
								<div class="form-group">
									<input type="text" class="form-control" id="subject"
										placeholder="Subject" name="sub" required>
								</div>
								<br>
								<div class="form-group">
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="8" placeholder="Message" name="msg" required></textarea>
								</div>
								<br>
								<div class="text-center">
									<button type="submit" class="btn btn-outline-light ">Sign
										in</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- ----------------Register Section Start- -->
	<section id="register">
		<div class="container mt-5">
			<main class="main2">
				<section class="section3">
					<div class="container">
						<div class="container">
							<form action="insert" method="post" enctype="multipart/form-data">
								<h3 class="text-center mb-5">REGISTRATION FORM</h3>
								<div class="row">
									<div class="col">
										<label for="inputEmail4">First Name </label> <input
											type="text" class="form-control"
											placeholder="Enter First name" name="fname">
									</div>
									<div class="col">
										<label for="inputEmail4">Last Name</label> <input type="text"
											class="form-control" placeholder="Enter Last name"
											name="lname">
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col">
										<label for="inputEmail4">Contact</label> <input type="number"
											class="form-control" placeholder="Enter Contact"
											name="contact">
									</div>
									<div class="col">
										<label for="inputEmail4">Gender</label> <input type="text"
											class="form-control" placeholder="Enter Gender" name="gender">
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col">
										<label for="inputEmail4">Email</label> <input type="text"
											class="form-control" placeholder="Enter Email Address"
											name="email">
									</div>
								</div>
								<div class="row">
									<div class="col">
										<label for="inputEmail4">Password</label> <input
											type="password" class="form-control"
											placeholder="Enter Password" name="pass">
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col">
										<label for="inputEmail4">ID (Aadhar/PAN/Voter)</label> <input
											type="text" class="form-control"
											placeholder="Enter ID Aadhar/PAN/Voter" name="id">
									</div>
									<div class="col">
										<br> <input type="file" class="form-control"
											id="exampleFormControlFile1" name="img">
									</div>
								</div>
								<br>
								<div class="text-center">
									<button type="submit"
										class="btn Registerbtn btn-danger btn-outline-light text-center">Register</button>
								</div>

							</form>
							<%
							session = request.getSession(false);
							if (session != null && session.getAttribute("updateMessage") != null) {
								out.println("<p style='color:green;'>" + session.getAttribute("updateMessage") + "</p>");
								session.removeAttribute("updateMessage");
							} else if (session != null && session.getAttribute("updateError") != null) {
								out.println("<p style='color:red;'>" + session.getAttribute("updateError") + "</p>");
								session.removeAttribute("updateError");
							}
						%>
						</div>
					</div>
				</section>
			</main>
		</div>
	</section>



	<div class="text-center bg-secondary text-light">
		<h5>
			<br>Thank you for Visting our Website <br> <br>
		</h5>
	</div>
	<br>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script 
		src="https://unpkg.com/aos@2.3.1/dist/aos.js">
	</script>

</body>
</html>