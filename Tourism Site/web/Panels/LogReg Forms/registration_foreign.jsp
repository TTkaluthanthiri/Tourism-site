<%-- 
    Document   : login
    Created on : Jun 5, 2019, 7:14:14 PM
    Author     : DigitalForce™
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Registration - Foreigners</title>
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
</head>
<body>
	
	<div class="limiter" id="custom-back">
		<div class="container-login100" id="custom-container">
			<div class="wrap-login100" id="custom-login">
                            <form class="login100-form validate-form" action="<%=request.getContextPath()%>/RegistrationServe" method="POST">
					<span class="login100-form-title p-b-26" id="font-high">
						REGISTRATION BOX
					</span>
					<span class="login100-form-title p-b-48">
						<i class="fas fa-user-plus"></i>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="uname">
						<span class="focus-input100" data-placeholder="Username"></span>
					</div>
                                        
                                        <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="fname">
						<span class="focus-input100" data-placeholder="Full Name"></span>
					</div>
                                        <div class="text-center p-t-115" style="position: relative; top:-15px;">
						<span class="txt1">
							Enter your Date of Birth Below.
						</span>
					</div>
                                        <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                                            <input type="date" id="date-input" class="datedropper-init" data-large-mode="true" data-large-default="true" data-translate-mode="true" data-theme="my-style" Value="Date of Birth" name="dob" style="font-family: 'Merriweather', serif; text-align:center;">
                                        <script>
                                            $('#date-input').dateDropper();
                                        </script>
						
					</div>
                                        
                                        <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="country">
						<span class="focus-input100" data-placeholder="Country"></span>
					</div>
                                        
                                        <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="pass">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>
                                        
                                        <div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="cpass">
						<span class="focus-input100" data-placeholder="Confirm Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Registration
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Haven't you got an account? Then
						</span>

						<a class="txt2" href="#">
							Sign In
						</a>
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
