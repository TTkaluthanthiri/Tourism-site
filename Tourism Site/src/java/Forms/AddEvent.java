/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Forms;


import DBConnection.DB_Primary;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author DigitalForce™
 */
@WebServlet(name = "AddEvent", urlPatterns = {"/AddEvent"})
@MultipartConfig(maxFileSize = 16177215)
public class AddEvent extends HttpServlet {

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
            out.println("<title>Servlet AddEvent</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddEvent at " + request.getContextPath() + "</h1>");
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
        Connection con = null, con2 = null;
        Statement st = null; 
        PreparedStatement st2 = null;
        ResultSet rs = null;
        out.println("85 line");
    //ResultSet rs = null;
    
    String url = request.getHeader("referer");
    
    if(url.endsWith("event.jsp")){
        String event = request.getParameter("event");
        String upload = request.getParameter("uploader");
        String cat = request.getParameter("category");
        String conduct = request.getParameter("conduct");
        String d = request.getParameter("dateE");
        String t = request.getParameter("timeE");
        String place = request.getParameter("place");
        String desc = request.getParameter("description");
        
        InputStream intimg = null;
        Part img = request.getPart("file");
        
        if(img!=null){
            intimg = img.getInputStream();
        }
        
        out.println("100 line");
        //request.getSession().setAttribute("pm", name);
        //request.getSession().setAttribute("con", desc);
        
                
        
        
        try{
            
            
                
                
                //set Date and cast it for DoB field 
                out.println("117 line");
                
                SimpleDateFormat dformat=new SimpleDateFormat("yyyy-MM-dd");    
                //out.println("Connection Completed"+dob);
                java.util.Date date = dformat.parse(d);
                //out.println("Date Completed"+ date);
                java.sql.Date realDate = new java.sql.Date(date.getTime());
                
                out.println("122 line"+ t);
                //convert time format
                SimpleDateFormat timeformat = new SimpleDateFormat("HH:mm");
                java.util.Date time = timeformat.parse(t);
                out.println("126 line"+ t);
                java.sql.Timestamp realTime = new java.sql.Timestamp(time.getTime());
            
            out.println("Entered");
            con = DB_Primary.getConnection();
            //ob2.println("Connection complete!");
            st = con.createStatement();
            st2 = con.prepareStatement("Insert into events(Name, Date, Time, Venue, Description, Category, Conduct, Uploader, Image) values(?, ?, ?, ?, ?, ?, ?, ?, ?)");
            //out.println("Entered"+name+desc+send+receive);
            //st.executeUpdate("Insert into events(Name, Date, Time, Venue, Description, Category, Conduct, Uploader) values('"+event+"','"+realDate+"','"+realTime+"', '"+place+"', '"+desc+"', '"+cat+"', '"+conduct+"', '"+upload+"' )");
            st2.setString(1, event);
            st2.setString(2, realDate.toString());
            st2.setString(3, realTime.toString());
            st2.setString(4, place);
            st2.setString(5, desc);
            st2.setString(6, cat);
            st2.setString(7, conduct);
            st2.setString(8, upload);
            if (intimg != null) 
                    {
                        st2.setBinaryStream(9, intimg, (int) img.getSize());
                        
                    }
            st2.executeUpdate();
            
            out.println("Entered");
            response.sendRedirect(request.getContextPath()+"/Panels/user-profile.jsp");


            //request.getSession().removeAttribute("pm");
            //request.getSession().removeAttribute("con");
            
        }
        catch(SQLException e){
            //request.getSession().setAttribute("message", "SQL error has occured! Possibly the message is too long. Include content between 1 - 500.<br><p style='color:gray;'><b>More Details:</b> "+e.getLocalizedMessage()+"</p>");
            //response.sendRedirect(request.getContextPath()+"/Main/Error-box.jsp");
        }
        catch(Exception e){
            //request.getSession().setAttribute("message", "Unknown error has occured!<br><p style='color:gray;'><b>More Details:</b> "+e.getLocalizedMessage()+"</p>");
            //response.sendRedirect(request.getContextPath()+"/Panels/Error-box.jsp");
        }
    } else if(url.endsWith("item.jsp")){
        String item = request.getParameter("item");
        String upload = request.getParameter("uploader");
        String cat = request.getParameter("category");
        String p = request.getParameter("price");
        String desc = request.getParameter("description");
        
        InputStream intimg = null;
        Part img = request.getPart("file");
        
        if(img!=null){
            intimg = img.getInputStream();
        }
        
        
        out.println("190 line");
        //request.getSession().setAttribute("pm", name);
        //request.getSession().setAttribute("con", desc);
        
        double price = Double.parseDouble(p);
                
        
        out.println("200 line");
        try{
            
            
            
            out.println("Entered");
            con = DB_Primary.getConnection();
            //ob2.println("Connection complete!");
            st2 = con.prepareStatement("Insert into offers(Name, Category, Uploader, Price, Description, Image) values(?, ?, ?, ?, ?, ?)");
            //out.println("Entered"+name+desc+send+receive);
            //st.executeUpdate("Insert into offers(Name, Category, Uploader, Price, Description) values('"+item+"','"+cat+"','"+upload+"', "+price+", '"+desc+"' )");
            out.println("210 line");
            st2.setString(1, item);
            st2.setString(2, cat);
            st2.setString(3, upload);
            st2.setDouble(4, price);
            st2.setString(5, desc);
            if (intimg != null) 
                    {
                        st2.setBinaryStream(6, intimg, (int) img.getSize());
                        
                    }
            st2.executeUpdate();
            out.println("Entered");
            response.sendRedirect(request.getContextPath()+"/Panels/user-profile.jsp");


            //request.getSession().removeAttribute("pm");
            //request.getSession().removeAttribute("con");
            
        }
        catch(SQLException e){
            //request.getSession().setAttribute("message", "SQL error has occured! Possibly the message is too long. Include content between 1 - 500.<br><p style='color:gray;'><b>More Details:</b> "+e.getLocalizedMessage()+"</p>");
            //response.sendRedirect(request.getContextPath()+"/Main/Error-box.jsp");
        }
        catch(Exception e){
            //request.getSession().setAttribute("message", "Unknown error has occured!<br><p style='color:gray;'><b>More Details:</b> "+e.getLocalizedMessage()+"</p>");
            //response.sendRedirect(request.getContextPath()+"/Panels/Error-box.jsp");
        }
    } else {
        String item = request.getParameter("name");
        
        
        String place = request.getParameter("place");
        String desc = request.getParameter("description");
        
        InputStream intimg = null;
        Part img = request.getPart("file");
        
        if(img!=null){
            intimg = img.getInputStream();
        }
        
        
        out.println("400 line");
        //request.getSession().setAttribute("pm", name);
        //request.getSession().setAttribute("con", desc);
        
        
                
        
        
        try{
            
            
            
            out.println("Entered");
            con = DB_Primary.getConnection();
            //ob2.println("Connection complete!");
            st2 = con.prepareStatement("Insert into destinations(Name, Venue, Description, Image) values(?, ?, ?, ?)");
            //out.println("Entered"+name+desc+send+receive);
            //st.executeUpdate("Insert into offers(Name, Category, Uploader, Price, Description) values('"+item+"','"+cat+"','"+upload+"', "+price+", '"+desc+"' )");
            
            st2.setString(1, item);
            st2.setString(2, place);
            st2.setString(3, desc);
            
            if (intimg != null) 
                    {
                        st2.setBinaryStream(4, intimg, (int) img.getSize());
                        
                    }
            st2.executeUpdate();
            out.println("Entered");
            response.sendRedirect(request.getContextPath()+"/Panels/user-profile.jsp");


            //request.getSession().removeAttribute("pm");
            //request.getSession().removeAttribute("con");
            
        }
        catch(SQLException e){
            //request.getSession().setAttribute("message", "SQL error has occured! Possibly the message is too long. Include content between 1 - 500.<br><p style='color:gray;'><b>More Details:</b> "+e.getLocalizedMessage()+"</p>");
            //response.sendRedirect(request.getContextPath()+"/Main/Error-box.jsp");
        }
        catch(Exception e){
            //request.getSession().setAttribute("message", "Unknown error has occured!<br><p style='color:gray;'><b>More Details:</b> "+e.getLocalizedMessage()+"</p>");
            //response.sendRedirect(request.getContextPath()+"/Panels/Error-box.jsp");
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
