/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SiteAccessServe;


import DBConnection.DB_Primary;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DigitalForce™
 */
public class LoginServe extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServe</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServe at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        PrintWriter out = response.getWriter();
        String nam = request.getParameter("uname");
        String pa = request.getParameter("pass");
        
        Connection con = null;
        Statement st = null, st2 = null, st3 = null;
        ResultSet rs = null, rs2 = null, rs3 = null;
        
        try {
        con = DB_Primary.getConnection();
        out.println("Connection Completed");
        //String query = "Select * from users2 where FirstName = ? AND Password Like ?;";
        //PreparedStatement st = con.prepareStatement(query);
        st = con.createStatement();
        
        st2 = con.createStatement();
        st3 = con.createStatement();
        
        out.println("Statement Completed");
        
        rs = st.executeQuery("Select * from visitors where Username = '"+nam+"'");
        out.println("Execution Complete!"+rs);
        rs2 = st2.executeQuery("Select * from local_business where Username = '"+nam+"'");
        out.println("Execution Complete!"+rs2);
        rs3 = st3.executeQuery("Select * from site_admin where Username = '"+nam+"'");
        out.println("Execution Complete!"+rs3);
        String sty="";
        if(rs.next()){
            sty = rs.getString("Password");//9
            if(sty.equals(pa)){
                out.println("Login Successful!");
                //if(rs.getString(10).endsWith("0")){response.sendRedirect("Web Forms/waiting_page.jsp");}
                //Create session 
                
                HttpSession se = request.getSession();
                //se.setMaxInactiveInterval(5*60);
                se.setAttribute("auth", "auth_true");
                se.setAttribute("username", nam);
                se.setAttribute("user-role", "Foreigner");
                se.setAttribute("Country", rs.getString("Country"));
               
                //se.setAttribute("phone", rs.getString(5));
                se.setAttribute("email", rs.getString("Email"));
                se.setAttribute("message", "");
                
                
                //Cookies settings
                Cookie username = new Cookie("username", request.getParameter("uname"));
                Cookie passw = new Cookie("password", request.getParameter("pass"));
                username.setMaxAge(60*60*2);
                passw.setMaxAge(60*60*2);
                
                response.addCookie( username );
                response.addCookie( passw );
                
                response.sendRedirect("Panels/index.jsp");
            } else {
                out.println("Login Failded enter valid Information!");
                response.sendRedirect(request.getContextPath()+"/Panels/LogReg Forms/login.jsp");
            }
           
        } else if(rs2.next()){
            sty = rs2.getString("Password");//9
            if(sty.equals(pa)){
                out.println("Login Successful!");
                
                //if(rs.getString(10).endsWith("0")){response.sendRedirect("Web Forms/waiting_page.jsp");}
                //Create session 
                HttpSession se = request.getSession();
                //se.setMaxInactiveInterval(5*60);
                se.setAttribute("auth", "auth_true");
                se.setAttribute("username", nam);
                se.setAttribute("user-role", "Local-Business");
                se.setAttribute("Country", "Sri Lanka");
               
                //se.setAttribute("phone", rs.getString(5));
                se.setAttribute("email", rs2.getString("Email"));
                se.setAttribute("message", "");
                
                //Cookies settings
                Cookie username = new Cookie("username", request.getParameter("uname"));
                Cookie passw = new Cookie("password", request.getParameter("pass"));
                username.setMaxAge(60*60*2);
                passw.setMaxAge(60*60*2);
                
                response.addCookie( username );
                response.addCookie( passw );
                
                response.sendRedirect("Main/index.jsp");
            } else {
                out.println("Login Failded enter valid Information!");
                response.sendRedirect(request.getContextPath()+"/Main/LogReg Forms/login.jsp");
            }
        } else if(rs3.next()){
            sty = rs3.getString("Password");//9
            if(sty.equals(pa)){
                out.println("Login Successful!");
                //if(rs.getString(10).endsWith("0")){response.sendRedirect("Web Forms/waiting_page.jsp");}
                //Create session 
                
                HttpSession se = request.getSession();
                //se.setMaxInactiveInterval(5*60);
                se.setAttribute("auth", "auth_true");
                se.setAttribute("username", nam);
                se.setAttribute("user-role", "Admin");
                se.setAttribute("Country", "Sri Lanka");
               
                //se.setAttribute("phone", rs.getString(5));
                se.setAttribute("email", rs3.getString("Email"));
                se.setAttribute("message", "");
                
                
                //Cookies settings
                Cookie username = new Cookie("username", request.getParameter("uname"));
                Cookie passw = new Cookie("password", request.getParameter("pass"));
                username.setMaxAge(60*60*2);
                passw.setMaxAge(60*60*2);
                
                response.addCookie( username );
                response.addCookie( passw );
                
                response.sendRedirect("Main/index.jsp");
            } else {
                out.println("Login Failded enter valid Information!");
                response.sendRedirect(request.getContextPath()+"/Main/LogReg Forms/login.jsp");
            }
        } else {
            out.println("Login Failded!");
            response.sendRedirect(request.getContextPath()+"/Main/LogReg Forms/login.jsp");
        }
        
        }
        catch (SQLException | NullPointerException ex) {
            Logger.getLogger(LoginServe.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) { Logger.getLogger(LoginServe.class.getName()).log(Level.SEVERE, null, e);}
            }
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException e) { Logger.getLogger(LoginServe.class.getName()).log(Level.SEVERE, null, e);}
            }
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) { Logger.getLogger(LoginServe.class.getName()).log(Level.SEVERE, null, e);}
            }
        }
        
        
        out.println("Progress Completed!");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
