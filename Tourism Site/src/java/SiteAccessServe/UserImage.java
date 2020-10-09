/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SiteAccessServe;

import DBConnection.DB_Primary;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Tharindu
 */
@WebServlet(name = "UserImage", urlPatterns = {"/UserImage"})
@MultipartConfig(maxFileSize = 16177215)
public class UserImage extends HttpServlet {

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
            out.println("<title>Servlet UserImage</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserImage at " + request.getContextPath() + "</h1>");
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
        InputStream intimg = null;
        
        String uname = request.getParameter("uname");
        String role = request.getParameter("role");
        Part img = request.getPart("file");
        
        if(img!=null){
            intimg = img.getInputStream();
        }
        
        DB_Primary dao = new DB_Primary();
        Connection conn;
        
        try {
            conn = dao.getConnection();
            out.println("Connection completed!");
            //String sql = "INSERT INTO forum_reply(id, image, comment, title, Sender, QuestID) VALUES (?,?,?,?,?,?)";
            if(role.endsWith("reigner")){
                String upsql = "Update visitors Set UserImg = ? where Username = ?";
                PreparedStatement statement = conn.prepareStatement(upsql);
                    
                    if (intimg != null) 
                    {
                        statement.setBinaryStream(1, intimg, (int) img.getSize());
                        
                    }
                    
                statement.setString(2,uname);
                statement.executeUpdate();
            } else if((role.endsWith("Super Admin"))){
                
                String upsql = "Update site_admin Set UserImg = ? where Username = ?";
                PreparedStatement statement = conn.prepareStatement(upsql);
                    
                    if (intimg != null) 
                    {
                        statement.setBinaryStream(1, intimg, (int) img.getSize());
                        
                    }
                    
                statement.setString(2,uname);
                statement.executeUpdate();
            } else if(role.endsWith("usiness")){
                
                String upsql = "Update local_business Set UserImg = ? where Username = ?";
                PreparedStatement statement = conn.prepareStatement(upsql);
                    
                    if (intimg != null) 
                    {
                        statement.setBinaryStream(1, intimg, (int) img.getSize());
                        
                    }
                    
                statement.setString(2,uname);
                statement.executeUpdate();
            } else {
                String upsql = "Update site_admin Set UserImg = ? where Username = ?";
                PreparedStatement statement = conn.prepareStatement(upsql);
                    
                    if (intimg != null) 
                    {
                        statement.setBinaryStream(1, intimg, (int) img.getSize());
                        
                    }
                    
                statement.setString(2,uname);
                statement.executeUpdate();
            }
                    
                    
                    response.sendRedirect(request.getContextPath()+"/Panels/user-profile.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(UserImage.class.getName()).log(Level.SEVERE, null, ex);
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
