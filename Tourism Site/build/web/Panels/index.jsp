<%-- 
    Document   : index
    Created on : Jun 15, 2019, 12:47:36 PM
    Author     : DigitalForce™
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Base64"%>
<%@page import="DBConnection.DB_Primary"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="LogReg Forms/login.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>srilanka</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

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
            
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        String encode = "no";
        
        
        
        
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
                                <li class="nav-item active">
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

    <!-- ***** Welcome Area Start ***** -->
    <section class="dorne-welcome-area bg-img bg-overlay" style="background-image: url(img/bg-img/map.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center justify-content-center">
                <div class="col-12 col-md-10">
                    <div class="hero-wrap js-fullheight" >
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"  data-scrollax-parent="true">
                                
                <div class="col-12">
                    <div class="about-content text-center">
                        <h2 style="color: white;">Discover our Country with <br><span style="color: #00cccc;">Visit lankaGUIDE</span></h2>
                        <p style="color: white;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.. </p>
                    </div>
                </div>
                      </div>
                    </div>
                  </div>
                    
                    
                </div>
                
            </div>
        </div>
        
        
    </section>
    <!-- ***** Welcome Area End ***** -->

    <!-- ***** Catagory Area Start ***** -->
    <section class="dorne-catagory-area">
        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Catagory Area End ***** -->

    

    <!-- ***** Editor Pick Area Start ***** -->
    <section class="dorne-editors-pick-area bg-img bg-overlay-9 section-padding-100" style="background-image: url(img/bg-img/sea4.jpg); background-color:#003333;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <span></span>
                        <h4>About This site</h4>
                        
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.2s">
                        <img src="img/bg-img/tea4.jpg" alt="">
                        <div class="editors-pick-info">
                            
                            <div class="add-more">
                                <a href="#">+</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="about-content" style="text-align: justify">
                        
                        <p style="color: white;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.. </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Editor Pick Area End ***** -->

    

    <!-- ***** Features Restaurant Area Start ***** -->
    <section class="dorne-features-restaurant-area bg-default" style="background-color: #00cccc;">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <span></span>
                        <h4>What are you looking for?</h4>
                        <p></p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="features-slides owl-carousel">
                        <!-- Single Features Area -->
                        <div class="single-features-area">
                            <img src='' alt="">
                            <!-- Rating & Map Area -->
                            
                            <div class="feature-content d-flex align-items-center justify-content-between">
                                <div class="feature-title">
                                    <h5>#Destinations</h5>
                                    <p>Places to visit in Sri Lanka</p>
                                </div>
                                <div class="feature-favourite">
                                    <a href="#"><i class="fas fa-map-signs"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Single Features Area -->
                        <div class="single-features-area">
                            <img src='' alt="">
                            <!-- Rating & Map Area -->
                            
                            <div class="feature-content d-flex align-items-center justify-content-between">
                                <div class="feature-title">
                                    <h5>#Hotels</h5>
                                    <p>Hotels to board in Sri Lanka</p>
                                </div>
                                <div class="feature-favourite">
                                    <a href="#"><i class="fas fa-hotel"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Single Features Area -->
                        <div class="single-features-area">
                            <img src='' alt="">
                            <!-- Rating & Map Area -->
                            
                            <div class="feature-content d-flex align-items-center justify-content-between">
                                <div class="feature-title">
                                    <h5>#Offers / Items</h5>
                                    <p>Things to buy in Sri Lanka</p>
                                </div>
                                <div class="feature-favourite">
                                    <a href="#"><i class="fas fa-gift"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Single Features Area -->
                        <div class="single-features-area">
                            <img src='' alt="">
                            <!-- Rating & Map Area -->
                            
                            <div class="feature-content d-flex align-items-center justify-content-between">
                                <div class="feature-title">
                                    <h5>#Events</h5>
                                    <p>Events and Functions in Sri Lanka</p>
                                </div>
                                <div class="feature-favourite">
                                    <a href="#"><i class="fas fa-glass-cheers"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Features Restaurant Area End ***** -->

    <!-- ***** Features Events Area Start ***** -->
    
    <!-- ***** Features Events Area End ***** -->

    
    <!-- ***** Clients Area End ***** -->

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
    <!-- Active JS -->
    <script src="js/active.js"></script>
</body>

</html>
