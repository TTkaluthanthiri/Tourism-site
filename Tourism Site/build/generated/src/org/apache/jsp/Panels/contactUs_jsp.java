package org.apache.jsp.Panels;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contactUs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"LogReg Forms/login.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("    <!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("\n");
      out.write("    <!-- Title -->\n");
      out.write("    <title>Contact</title>\n");
      out.write("\n");
      out.write("    <!-- Favicon -->\n");
      out.write("    <link rel=\"icon\" href=\"img/core-img/favicon.ico\">\n");
      out.write("\n");
      out.write("    <!-- Core Stylesheet -->\n");
      out.write("    <link href=\"style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Responsive CSS -->\n");
      out.write("    <link href=\"css/responsive/responsive.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    ");

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
            
        
    
      out.write("\n");
      out.write("    \n");
      out.write("    <style type=\"text/css\">\n");
      out.write("        \n");
      out.write("        @import url('https://fonts.googleapis.com/css?family=Bahianita&display=swap');\n");
      out.write("        \n");
      out.write("        #brand {\n");
      out.write("            font-family: 'Bahianita', cursive;\n");
      out.write("            color:white; \n");
      out.write("            border: 4px solid white; \n");
      out.write("            padding: 10px;\n");
      out.write("            letter-spacing: 3px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!-- Preloader -->\n");
      out.write("    <div id=\"preloader\">\n");
      out.write("        <div class=\"dorne-load\"></div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- ***** Search Form Area ***** -->\n");
      out.write("    <div class=\"dorne-search-form d-flex align-items-center\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <div class=\"search-close-btn\" id=\"closeBtn\">\n");
      out.write("                        <i class=\"pe-7s-close-circle\" aria-hidden=\"true\"></i>\n");
      out.write("                    </div>\n");
      out.write("                    <form action=\"#\" method=\"get\">\n");
      out.write("                        <input type=\"search\" name=\"caviarSearch\" id=\"search\" placeholder=\"Search Your Desire Destinations or Events\">\n");
      out.write("                        <input type=\"submit\" class=\"d-none\" value=\"submit\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- ***** Header Area Start ***** -->\n");
      out.write("    <header class=\"header_area\" id=\"header\">\n");
      out.write("        <div class=\"container-fluid h-100\">\n");
      out.write("            <div class=\"row h-100\">\n");
      out.write("                <div class=\"col-12 h-100\">\n");
      out.write("                    <nav class=\"h-100 navbar navbar-expand-lg\">\n");
      out.write("                        <a class=\"navbar-brand\" href=\"index.html\"><img src=\"img/core-img/logo.png\" alt=\"\"></a>\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#dorneNav\" aria-controls=\"dorneNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"><span class=\"fa fa-bars\"></span></button>\n");
      out.write("                        <!-- Nav -->\n");
      out.write("                        <div class=\"collapse navbar-collapse\" id=\"dorneNav\">\n");
      out.write("                            <ul class=\"navbar-nav mr-auto\" id=\"dorneMenu\">\n");
      out.write("                                <li class=\"nav-item active\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"index.html\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item dropdown\">\n");
      out.write("                                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Explore <i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i></a>\n");
      out.write("                                    <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"destinations.jsp\" >Destinations</a>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"hotels_rest.jsp\">Hotels</a>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"offers.jsp\">Offers</a>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"events.jsp\">Events</a>\n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"explore.html\">About Us</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"contactUs.jsp\">Contact Us</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                            <!-- Search btn -->\n");
      out.write("                            <div class=\"dorne-search-btn\">\n");
      out.write("                                <a id=\"search-btn\" href=\"#\"><i class=\"fa fa-search\" aria-hidden=\"true\"></i> Search</a>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Signin btn -->\n");
      out.write("                            <div class=\"dorne-signin-btn\">\n");
      out.write("                                <a href=\"user-profile.jsp\" class=\"btn btn-dark\" style=\"display: ");
      out.print(se_view2);
      out.write('"');
      out.write('>');
      out.print(name);
      out.write(" </a>\n");
      out.write("                                <a href=\"LogReg Forms/login.jsp\" class=\"btn btn-dark\" style=\"display: ");
      out.print(se_view);
      out.write("\">Sign in  or Register</a>\n");
      out.write("                                \n");
      out.write("                                <a href=\"");
      out.print(request.getContextPath());
      out.write("/SessionInvalidate\" class=\"btn btn-dark\" style=\"display: ");
      out.print(se_view2);
      out.write("\">Sign Out</a>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Add listings btn -->\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- ***** Header Area End ***** -->\n");
      out.write("\n");
      out.write("    <!-- ***** Breadcumb Area Start ***** -->\n");
      out.write("    <div class=\"breadcumb-area bg-img bg-overlay\" style=\"background-image: url(img/bg-img/hero-1.jpg)\">\n");
      out.write("    </div>\n");
      out.write("    <!-- ***** Breadcumb Area End ***** -->\n");
      out.write("\n");
      out.write("    <!-- ***** Contact Area Start ***** -->\n");
      out.write("    <div class=\"dorne-contact-area d-md-flex\" id=\"contact\">\n");
      out.write("        <!-- Contact Form Area -->\n");
      out.write("        <div class=\"contact-form-area equal-height\">\n");
      out.write("            <div class=\"contact-text\">\n");
      out.write("                <h4>Hello, Get in touch with us</h4>\n");
      out.write("                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac nibh sed mi ullamcorper rhoncus. Curabitur pulvinar vel augue sit amet vestibulum. Proin tempus lacus porta lorem blandit aliquam eget quis ipsum. Vivamus accumsan consequat ligula non volutpat. Sed mollis orci non cursus vestibulum. Pellentesque vitae est a augue laoreet venenatis sed eu felis. Sed cursus magna nec turpis ullamcorper, eget rutrum felis egestas. Nunc odio ex, fermentum efficitur nunc vitae, efficitur hendrerit diam. Lorem ipsum dolor sit amet, consectetur.</p>\n");
      out.write("                <div class=\"contact-info d-lg-flex\">\n");
      out.write("                    <div class=\"single-contact-info\">\n");
      out.write("                        <h6><i class=\"fa fa-map-signs\" aria-hidden=\"true\"></i> ptipana north,homagama,Srilanka</h6>\n");
      out.write("                        <h6><i class=\"fa fa-map-signs\" aria-hidden=\"true\"></i> No. 25-33</h6>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"single-contact-info\">\n");
      out.write("                        <h6><i class=\"fa fa-envelope-o\" aria-hidden=\"true\"></i> nsbm@gmail.com</h6>\n");
      out.write("                        <h6><i class=\"fa fa-phone\" aria-hidden=\"true\"></i> +9411100100</h6>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"contact-form\">\n");
      out.write("                <div class=\"contact-form-title\">\n");
      out.write("                    <h6>Contact Business</h6>\n");
      out.write("                </div>\n");
      out.write("                <form action=\"");
      out.print(request.getContextPath());
      out.write("/ContactUS\" method=\"POST\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12 col-md-6\">\n");
      out.write("                            <input type=\"text\" name=\"sender\" class=\"form-control\" placeholder=\"Your Name\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12 col-md-6\">\n");
      out.write("                            <input type=\"email\" name=\"email\" class=\"form-control\" placeholder=\"Email Address\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <input type=\"text\" name=\"Topic\" class=\"form-control\" placeholder=\"Subject\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <textarea name=\"description\" class=\"form-control\" id=\"Message\" cols=\"30\" rows=\"10\" placeholder=\"Your Message\"></textarea>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <button type=\"submit\" class=\"btn dorne-btn\">Send</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Map Area -->\n");
      out.write("        <div class=\"dorne-map-area equal-height\">\n");
      out.write("            <img id=\"mask\" src=\"img/bg-img/mask.jpg\">\n");
      out.write("            <div id=\"googleMap\"></div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- ***** Contact Area End ***** -->\n");
      out.write("\n");
      out.write("    <!-- ****** Footer Area Start ****** -->\n");
      out.write("    <footer class=\"dorne-footer-area\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12 d-md-flex align-items-center justify-content-between\">\n");
      out.write("                    <div class=\"footer-text\">\n");
      out.write("                        <p>\n");
      out.write("                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("</script> All rights reserved | by <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">nsbm</a>\n");
      out.write("<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-social-btns\">\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-linkedin\" aria-haspopup=\"true\"></i></a>\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-behance\" aria-hidden=\"true\"></i></a>\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i></a>\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-haspopup=\"true\"></i></a>\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-haspopup=\"true\"></i></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    <!-- ****** Footer Area End ****** -->\n");
      out.write("\n");
      out.write("    <!-- jQuery-2.2.4 js -->\n");
      out.write("    <script src=\"js/jquery/jquery-2.2.4.min.js\"></script>\n");
      out.write("    <!-- Popper js -->\n");
      out.write("    <script src=\"js/bootstrap/popper.min.js\"></script>\n");
      out.write("    <!-- Bootstrap-4 js -->\n");
      out.write("    <script src=\"js/bootstrap/bootstrap.min.js\"></script>\n");
      out.write("    <!-- All Plugins js -->\n");
      out.write("    <script src=\"js/others/plugins.js\"></script>\n");
      out.write("    <!-- Google Maps js -->\n");
      out.write("    \n");
      out.write("    <!-- Active JS -->\n");
      out.write("    <script src=\"js/active.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
