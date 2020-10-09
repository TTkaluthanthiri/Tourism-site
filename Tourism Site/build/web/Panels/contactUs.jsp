<%-- 
    Document   : contactUs
    Created on : Jun 17, 2019, 2:16:20 AM
    Author     : DigitalForce™
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="LogReg Forms/login.jsp"%>
<!DOCTYPE html>
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Contact</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">
    
    <%
        String se_view = "none";
        String se_view2 = "block";
        String name = "No-Name";
        String role = "No-Role";
        String country = "No";
        String email = "No";
        
        
            if(request.getSession().getAttribute("username") == null || request.getSession().getAttribute("username").equals("")){
                se_view = "block";
                se_view2 = "none";
            } else {
                se_view = "none";
                se_view2 = "block";
                name = request.getSession().getAttribute("username").toString();
                role = request.getSession().getAttribute("user-role").toString();
                
                email = request.getSession().getAttribute("email").toString();
            }
            
        
    %>
    
    <style type="text/css">
        
        @import url('https://fonts.googleapis.com/css?family=Bahianita&display=swap');
        
        #brand {
            font-family: 'Bahianita', cursive;
            color:white; 
            border: 4px solid white; 
            padding: 10px;
            letter-spacing: 3px;
        }
        
    </style>

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="dorne-load"></div>
    </div>

    <!-- ***** Search Form Area ***** -->
    <div class="dorne-search-form d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-close-btn" id="closeBtn">
                        <i class="pe-7s-close-circle" aria-hidden="true"></i>
                    </div>
                    <form action="#" method="get">
                        <input type="search" name="caviarSearch" id="search" placeholder="Search Your Desire Destinations or Events">
                        <input type="submit" class="d-none" value="submit">
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ***** Header Area Start ***** -->
    <header class="header_area" id="header" style="background-color: rgba(0,0,0,0.8)">
        <div class="container-fluid h-100" >
            <div class="row h-100">
                <div class="col-12 h-100">
                    <nav class="h-100 navbar navbar-expand-lg">
                        <a class="navbar-brand" href="index.jsp"><h3 id="brand">lankaGUIDE</h3></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#dorneNav" aria-controls="dorneNav" aria-expanded="false" aria-label="Toggle navigation"><span class="fa fa-bars"></span></button>
                        <!-- Nav -->
                        <div class="collapse navbar-collapse" id="dorneNav">
                            <ul class="navbar-nav mr-auto" id="dorneMenu">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Explore <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="destinations.jsp" >Destinations</a>
                                        <a class="dropdown-item" href="hotels_rest.jsp">Hotels</a>
                                        <a class="dropdown-item" href="offers.jsp">Offers</a>
                                        <a class="dropdown-item" href="events.jsp">Events</a>
                                        
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="explore.html">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contactUs.jsp">Contact Us</a>
                                </li>
                            </ul>
                            
                            <!-- Signin btn -->
                            <div class="dorne-signin-btn">
                                <a href="user-profile.jsp" class="btn btn-warning" style="display: <%=se_view2%>"><%=name%> </a>
                                <a href="LogReg Forms/login.jsp" class="btn btn-primary" style="display: <%=se_view%>">Sign in </a>
                                
                                <a href="<%=request.getContextPath()%>/SessionInvalidate" class="btn btn-dark" style="display: <%=se_view2%>">Sign Out</a>
                            </div>
                            <!-- Add listings btn -->
                            
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Breadcumb Area Start ***** -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/tea4.jpg)">
    </div>
    <!-- ***** Breadcumb Area End ***** -->

    <!-- ***** Contact Area Start ***** -->
    <section class="dorne-single-listing-area section-padding-100" style="background-color: #00cccc;">
    <div class="dorne-contact-area d-md-flex" id="contact">
        <!-- Contact Form Area -->
        <div class="contact-form-area equal-height">
            <div class="contact-text">
                <h4>Hello, Get in touch with us</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac nibh sed mi ullamcorper rhoncus. Curabitur pulvinar vel augue sit amet vestibulum. Proin tempus lacus porta lorem blandit aliquam eget quis ipsum. Vivamus accumsan consequat ligula non volutpat. Sed mollis orci non cursus vestibulum. Pellentesque vitae est a augue laoreet venenatis sed eu felis. Sed cursus magna nec turpis ullamcorper, eget rutrum felis egestas. Nunc odio ex, fermentum efficitur nunc vitae, efficitur hendrerit diam. Lorem ipsum dolor sit amet, consectetur.</p>
                <div class="contact-info d-lg-flex">
                    <div class="single-contact-info">
                        <h6><i class="fa fa-map-signs" aria-hidden="true"></i> ptipana north,homagama,Srilanka</h6>
                        <h6><i class="fa fa-map-signs" aria-hidden="true"></i> No. 25-33</h6>
                    </div>
                    <div class="single-contact-info">
                        <h6><i class="fa fa-envelope-o" aria-hidden="true"></i> nsbm@gmail.com</h6>
                        <h6><i class="fa fa-phone" aria-hidden="true"></i> +9411100100</h6>
                    </div>
                </div>
            </div>
            <div class="contact-form">
                <div class="contact-form-title">
                    <h6>Contact Business</h6>
                </div>
                <form action="<%=request.getContextPath()%>/ContactUS" method="POST">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <input type="text" name="sender" class="form-control" placeholder="Your Name">
                        </div>
                        <div class="col-12 col-md-6">
                            <input type="email" name="email" class="form-control" placeholder="Email Address">
                        </div>
                        <div class="col-12">
                            <input type="text" name="Topic" class="form-control" placeholder="Subject">
                        </div>
                        <div class="col-12">
                            <textarea name="description" class="form-control" id="Message" cols="30" rows="10" placeholder="Your Message"></textarea>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn dorne-btn">Send</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Map Area -->
        <div class="dorne-map-area equal-height">
            <img id="mask" src="img/bg-img/yaka.jpg">
            <div id="googleMap"></div>

        </div>
    </div>
    </section>
    <!-- ***** Contact Area End ***** -->

    <!-- ****** Footer Area Start ****** -->
    <footer class="dorne-footer-area" style="background-color: black">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 d-md-flex align-items-center justify-content-between">
                    <div class="footer-text">
                        <p>
                            
                            H.Inc Cooperation

                        </p>
                    </div>
                    <div class="footer-social-btns">
                        <a href="#"><i class="fa fa-linkedin" aria-haspopup="true"></i></a>
                        <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-haspopup="true"></i></a>
                        <a href="#"><i class="fa fa-facebook" aria-haspopup="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ****** Footer Area End ****** -->

    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/others/plugins.js"></script>
    <!-- Google Maps js -->
    
    <!-- Active JS -->
    <script src="js/active.js"></script>
</body>

</html>