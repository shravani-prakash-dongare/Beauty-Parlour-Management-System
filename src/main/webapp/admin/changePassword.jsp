<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="../CSS1/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<title>Change Password Page</title>
</head>

<body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <%@ include file="sidebar.jsp" %>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
                    <h5 class="fs-5 m-0">Dashboard</h5>
                </div>

                <button class="navbar-toggler text-dark" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link text-light second-text fw-bold" href="admin.jsp">
                                <i class="fas fa-user me-2"></i>Logout
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>

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
                                <form action="changepwd.jsp" method="post">
                                    <h4>Change Password</h4>
                                    <hr class="text-danger fw-bold">
                                    <div class="container">
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
        <!-- /#page-content-wrapper -->
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        var el = document.getElementById("wrapper");
        var toggleButton = document.getElementById("menu-toggle");

        toggleButton.onclick = function() {
            el.classList.toggle("toggled");
        };

    </script>
</body>
</html>
