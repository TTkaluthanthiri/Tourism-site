<%-- 
    Document   : login
    Created on : Jun 5, 2019, 7:14:14 PM
    Author     : DigitalForce™
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Registration - Profile Image</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/custom-ish.css">
<!--===============================================================================================-->

        <link href="css/datedropper.css" rel="stylesheet"/>
        <link href="css/Main.css" rel="stylesheet"/>
        
        <link href="css/my-style.css" rel="stylesheet"/>
        
        <script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/datedropper.js"></script>
        
<!--===============================================================================================-->
<%
    String username =request.getParameter("n");
    String role = request.getParameter("r");
    %>
</head>
<body>
	
	<div class="limiter" id="custom-back">
		<div class="container-login100">
			<div class="wrap-login100">
                            <form class="login100-form validate-form" action="<%=request.getContextPath()%>/UserImage" method="POST" enctype="multipart/form-data">
                            <span class="login100-form-title p-b-26" id="font-high">
						UPLOAD AVATAR
                            </span>
                            <span class="login100-form-title p-b-48">
                                <i class="fas fa-hand-point-up"></i><br>
                                    <span class="txt1">
                                            Browse Image you like.
				    </span>
                                
			   </span>
                                        <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						
                                            <input class="input100" type="text" name="uname" value="<%=username%>" readonly>
						<span class="focus-input100" data-placeholder="Username"></span>
					</div>
                                        <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						
                                            <input class="input100" type="text" name="role" value="<%=role%>" readonly>
						<span class="focus-input100" data-placeholder="User Role"></span>
					</div>
                                                
                                        <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						
                                            <input class="input100" type="file" name="file">
						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Upload
							</button>
						</div>
					</div>
                            </form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
