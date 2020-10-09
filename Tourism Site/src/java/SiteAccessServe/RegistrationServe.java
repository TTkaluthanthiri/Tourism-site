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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DigitalForce™
 */
public class RegistrationServe extends HttpServlet {

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
            out.println("<title>Servlet RegistrationServe</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrationServe at " + request.getContextPath() + "</h1>");
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
        Connection con = null;
        con = DB_Primary.getConnection();
        out.println("Connection Completed");
        
        String url = request.getHeader("referer");
        
        if(url.endsWith("registration_foreign.jsp")){
            out.println("Connection Completed56");
            String nam = request.getParameter("fname");
            String lnam = request.getParameter("uname");
            String dob = request.getParameter("dob");
            //String mobile = request.getParameter("mobile");
            String email = request.getParameter("email");
            String re_select = "other";
            String region = request.getParameter("country");
            
            String pa = request.getParameter("pass");
            String cpa = request.getParameter("cpass");

            
            
            if(re_select.equals("other")){
                if(region == ""){
                    //response.sendRedirect("Panels/Log/registration_foreign.jsp");
                }
                re_select = region;
                
            }
            
            out.println("Connection Completed56");
            //set entered data fixed while throwing errors
            request.getSession().setAttribute("usedname", nam);
            request.getSession().setAttribute("usedusername", lnam);
            //request.getSession().setAttribute("usedmobile", mobile);
            request.getSession().setAttribute("usedemail", email);
            request.getSession().setAttribute("usedre", region);
            request.getSession().setAttribute("color", null);
            request.getSession().setAttribute("color2", null);
            request.getSession().setAttribute("color3", null);
            out.println("Connection Completed56 "+ dob);
            try {
            //set Date and cast it for DoB field 
            SimpleDateFormat dformat=new SimpleDateFormat("MM/dd/yyyy");         
            java.util.Date date = dformat.parse(dob);
            java.sql.Date realDate = new java.sql.Date(date.getTime());
            out.println("Completed to 130");
            //set DB connection
            
            Statement st = con.createStatement();
            Statement st2 = con.createStatement();
            
            request.getSession().setAttribute("username", "notexist");
            out.println("Completed to 137");
            ResultSet rs = st2.executeQuery("Select * from visitors where Username='"+lnam+"' ");
            if(rs.next()){
                request.getSession().setAttribute("username", "exist");
                request.getSession().setAttribute("color", "#ff6b81");
                response.sendRedirect(request.getContextPath()+"/Panels/LogReg Forms/registration_foreign.jsp");
                response.sendError(500);
                
            }
            out.println("Completed to 147");
            rs = st2.executeQuery("Select * from local_business where Username='"+lnam+"' ");
            if(rs.next()){
                request.getSession().setAttribute("username", "exist");
                request.getSession().setAttribute("color", "#ff6b81");
                response.sendRedirect(request.getContextPath()+"/Panels/LogReg Forms/registration_foreign.jsp");
                response.sendError(500);
                
            }
            
            out.println("Completed to 155");
            if((pa.equals(cpa))&&(pa!="")&&((pa.length()>=8)&&(pa.length()<=20))){
                 st.executeUpdate("Insert into visitors (Username, FullName, DoB, Country, Email, Password) values('"+lnam+"', '"+nam+"', '"+realDate+"','"+re_select+"', '"+email+"', '"+pa+"');");  //-- Register --
                 out.println("Insertion Completed");
                 request.getSession().removeAttribute("usedname");
                 request.getSession().removeAttribute("usedusername");
                 
                 request.getSession().removeAttribute("usedemail");
                 request.getSession().removeAttribute("usedre");
                 
                 request.getSession().removeAttribute("color");
                 request.getSession().removeAttribute("color2");
                 request.getSession().removeAttribute("color3");
                 request.getSession().invalidate();
                 response.sendRedirect("Panels/DBjspAction/dbCreate.jsp?name="+lnam+" ");
            } else {
                out.println("Insertion Failded!");
                request.getSession().setAttribute("color3", "#ff6b81");
                response.sendRedirect(request.getContextPath()+"/Panels/LogReg Forms/registration_foreign.jsp");
            }
            } catch (SQLException | NullPointerException ex) {
                Logger.getLogger(RegistrationServe.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ParseException ex) {
                Logger.getLogger(RegistrationServe.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        } else if(url.endsWith("registration_locals.jsp")){
            out.println("Connection Completed56");
            String nam = request.getParameter("fname");
            String lnam = request.getParameter("uname");
            String dob = request.getParameter("dob");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            
            String tel = request.getParameter("contact");
            
            String pa = request.getParameter("pass");
            String cpa = request.getParameter("cpass");

            
            
            
            
            out.println("Connection Completed56");
            //set entered data fixed while throwing errors
            request.getSession().setAttribute("usedname", nam);
            request.getSession().setAttribute("usedusername", lnam);
            //request.getSession().setAttribute("usedmobile", mobile);
            request.getSession().setAttribute("usedemail", email);
            request.getSession().setAttribute("usedre", "Sri Lanka");
            request.getSession().setAttribute("color", null);
            request.getSession().setAttribute("color2", null);
            request.getSession().setAttribute("color3", null);
            out.println("Connection Completed56 "+ dob);
            try {
            //set Date and cast it for DoB field 
            SimpleDateFormat dformat=new SimpleDateFormat("MM/dd/yyyy");         
            java.util.Date date = dformat.parse(dob);
            java.sql.Date realDate = new java.sql.Date(date.getTime());
            out.println("Completed to 130");
            //set DB connection
            
            Statement st = con.createStatement();
            Statement st2 = con.createStatement();
            
            request.getSession().setAttribute("username", "notexist");
            out.println("Completed to 137");
            ResultSet rs = st2.executeQuery("Select * from local_business where Username='"+lnam+"' ");
            if(rs.next()){
                request.getSession().setAttribute("username", "exist");
                request.getSession().setAttribute("color", "#ff6b81");
                response.sendRedirect(request.getContextPath()+"/Panels/LogReg Forms/registration_locals.jsp");
                response.sendError(500);
                
            }
            out.println("Completed to 147");
            rs = st2.executeQuery("Select * from visitors where Username='"+lnam+"' ");
            if(rs.next()){
                request.getSession().setAttribute("username", "exist");
                request.getSession().setAttribute("color", "#ff6b81");
                response.sendRedirect(request.getContextPath()+"/Panels/LogReg Forms/registration_locals.jsp");
                response.sendError(500);
                
            }
            
            out.println("Completed to 155");
            if((pa.equals(cpa))&&(pa!="")&&((pa.length()>=8)&&(pa.length()<=20))){
                 st.executeUpdate("Insert into local_business (Username, FullName, DoB, ContactNo, Address, Email, Password) values('"+lnam+"', '"+nam+"', '"+realDate+"', '"+tel+"', '"+address+"', '"+email+"', '"+pa+"');");  //-- Register --
                 out.println("Insertion Completed");
                 request.getSession().removeAttribute("usedname");
                 request.getSession().removeAttribute("usedusername");
                 
                 request.getSession().removeAttribute("usedemail");
                 request.getSession().removeAttribute("usedre");
                 
                 request.getSession().removeAttribute("color");
                 request.getSession().removeAttribute("color2");
                 request.getSession().removeAttribute("color3");
                 request.getSession().invalidate();
                 response.sendRedirect(request.getContextPath()+"/Panels/LogReg Forms/waiting_page.jsp");
            } else {
                out.println("Insertion Failded!");
                request.getSession().setAttribute("color3", "#ff6b81");
                response.sendRedirect(request.getContextPath()+"/Panels/LogReg Forms/registration_locals.jsp");
            }
            } catch (SQLException | NullPointerException ex) {
                Logger.getLogger(RegistrationServe.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ParseException ex) {
                Logger.getLogger(RegistrationServe.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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
