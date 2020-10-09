<%-- 
    Document   : list-page
    Created on : Jun 16, 2019, 12:42:20 AM
    Author     : DigitalForce™
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Dorne - Directory &amp; Listing Template | Single Listing</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

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
    <header class="header_area" id="header">
        <div class="container-fluid h-100">
            <div class="row h-100">
                <div class="col-12 h-100">
                    <nav class="h-100 navbar navbar-expand-lg">
                        <a class="navbar-brand" href="index.jsp"><img src="img/core-img/logo.png" alt=""></a>
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
                                        <a class="dropdown-item" href="index.jsp">Home</a>
                                        <a class="dropdown-item" href="explore.html">Explore</a>
                                        <a class="dropdown-item" href="listing.html">Listing</a>
                                        <a class="dropdown-item" href="single-listing.html">Single Listing</a>
                                        <a class="dropdown-item" href="contact.html">Contact</a>
                                    </div>
                                </li>
                                <li class="nav-item active dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Listings <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                        <a class="dropdown-item" href="index.html">Home</a>
                                        <a class="dropdown-item" href="explore.html">Explore</a>
                                        <a class="dropdown-item" href="listing.html">Listing</a>
                                        <a class="dropdown-item" href="single-listing.html">Single Listing</a>
                                        <a class="dropdown-item" href="contact.html">Contact</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact</a>
                                </li>
                            </ul>
                            <!-- Search btn -->
                            <div class="dorne-search-btn">
                                <a id="search-btn" href="#"><i class="fa fa-search" aria-hidden="true"></i> Search</a>
                            </div>
                            <!-- Signin btn -->
                            <div class="dorne-signin-btn">
                                <a href="#">Sign in  or Register</a>
                            </div>
                            <!-- Add listings btn -->
                            <div class="dorne-add-listings-btn">
                                <a href="#" class="btn dorne-btn">+ Add Listings</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Breadcumb Area Start ***** -->
    <div class="breadcumb-area height-700 bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <div class="map-ratings-review-area d-flex">
                            <a href="#" class="d-flex align-items-center justify-content-center"><img src="img/core-img/map.png" alt=""></a>
                            <a href="#">8.7</a>
                            <a href="#">Write a review</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Breadcumb Area End ***** -->

    <!-- ***** Single Listing Area Start ***** -->
    <section class="dorne-single-listing-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Single Listing Content -->
                <div class="col-12 col-lg-8">
                    <div class="single-listing-content">

                        <div class="listing-title">
                            <h4>Burger House soho</h4>
                            <h6>First Avenue no 83</h6>
                        </div>

                        

                        

                        <div class="listing-menu-area mt-100" id="menu">
                            <h4>Menu</h4>
                            <!-- Single Listing Menu -->
                            <div class="single-listing-menu d-flex justify-content-between">
                                <!-- Listing Menu Title -->
                                <div class="listing-menu-title">
                                    <h5><bold>[Name of The Item]</bold></h5>
                                    <a href="#">
                                    <img src='img/bg-img/hero-1.jpg' alt="" style="box-shadow: 0px 0px 20px grey; border: 2px ridge purple">
                                    </a>
                                    <p>by <strong>[Uploader]</strong></p>
                                    <p style="color: black">[Description]</p>
                                    <!-- Rating & Map Area -->
                                    
                                    <div class="feature-content d-flex align-items-center justify-content-between">
                                        <div class="feature-title">
                                            <h5></h5>
                                            <p></p>
                                        </div>
                                        
                                    </div>
                                </div>
                                <!-- Listing Menu Price -->
                                <div class="listing-menu-price">
                                    <h6>[Price]</h6>
                                </div>
                            </div>
                            <!-- Single Listing Menu -->
                            <div class="single-listing-menu d-flex justify-content-between">
                                <!-- Listing Menu Title -->
                                <div class="listing-menu-title">
                                    <h5><bold>[Name of The Item]</bold></h5>
                                    <a href="#">
                                    <img src='img/bg-img/hero-1.jpg' alt="" style="box-shadow: 0px 0px 20px grey; border: 2px ridge purple">
                                    </a>
                                    <p>by <strong>[Uploader]</strong></p>
                                    <p style="color: black">[Description]</p>
                                    <!-- Rating & Map Area -->
                                    
                                    <div class="feature-content d-flex align-items-center justify-content-between">
                                        <div class="feature-title">
                                            <h5></h5>
                                            <p></p>
                                        </div>
                                        
                                    </div>
                                </div>
                                <!-- Listing Menu Price -->
                                <div class="listing-menu-price">
                                    <h6>[Price]</h6>
                                </div>
                            </div>
                            <!-- Single Listing Menu -->
                            <div class="single-listing-menu d-flex justify-content-between">
                                <!-- Listing Menu Title -->
                                <div class="listing-menu-title">
                                    <h6>Classic Burger</h6>
                                    <p>Beef, salad, mustard, bacon, mayonnaise, spicey relish, cheese</p>
                                </div>
                                <!-- Listing Menu Price -->
                                <div class="listing-menu-price">
                                    <h6>$9,90</h6>
                                </div>
                            </div>
                            <!-- Single Listing Menu -->
                            <div class="single-listing-menu d-flex justify-content-between">
                                <!-- Listing Menu Title -->
                                <div class="listing-menu-title">
                                    <h6>House Special Burger</h6>
                                    <p>Beef, salad, mustard, bacon, mayonnaise, spicey relish, cheese</p>
                                </div>
                                <!-- Listing Menu Price -->
                                <div class="listing-menu-price">
                                    <h6>$9,90</h6>
                                </div>
                            </div>
                            <a href="#" class="btn dorne-btn mt-50">+ See The Menu</a>
                        </div>

                        

                        

                    </div>
                </div>

                <!-- Listing Sidebar -->
                <div class="col-12 col-md-8 col-lg-4">
                    <div class="listing-sidebar">

                        <!-- Listing Verify -->
                        <div class="listing-verify">
                            <a href="#" class="btn dorne-btn w-100"><i class="fa fa-check pr-3"></i> Verified Listing</a>
                        </div>

                        <!-- Book A Table Widget -->
                        <div class="book-a-table-widget mt-50">
                            <h6>Book A Table</h6>
                            <form action="#" method="get">
                                <select class="custom-select" id="destinations">
                                <option selected>Who will be arriving</option>
                                <option value="1">New York</option>
                                <option value="2">Latvia</option>
                                <option value="3">Dhaka</option>
                                <option value="4">Melbourne</option>
                                <option value="5">London</option>
                            </select>
                                <select class="custom-select" id="catagories">
                                <option selected>Guest 1</option>
                                <option value="1">Guest 2</option>
                                <option value="3">Guest 3</option>
                                <option value="3">Guest 4</option>
                            </select>
                                <button type="submit" class="btn dorne-btn bg-white text-dark"><i class="fa fa-search pr-2" aria-hidden="true"></i> Search</button>
                            </form>
                        </div>

                        
                        

                        

                        

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Single Listing Area End ***** -->

    <!-- ****** Footer Area Start ****** -->
    <footer class="dorne-footer-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 d-md-flex align-items-center justify-content-between">
                    <div class="footer-text">
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk9KNSL1jTv4MY9Pza6w8DJkpI_nHyCnk"></script>
    <script src="js/google-map/location-map-active.js"></script>
    <!-- Active JS -->
    <script src="js/active.js"></script>
</body>

</html>
