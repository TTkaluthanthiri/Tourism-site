<%-- 
    Document   : dbCreate
    Created on : May 18, 2019, 2:57:44 AM
    Author     : DigitalForce™
--%>

<%@page import="DBConnection.DB2"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
            String name = request.getParameter("name");
    
            Connection con = null;
            Statement ps = null;
            ResultSet rs = null;
            
            String sql, sql2;
            try{
            con = DB2.getConnection();
            
            String url = request.getHeader("referer");
            
            if(url.endsWith("my")){
                
            }else {
                sql = "Create table "+name+"_history (ID int AUTO_INCREMENT, Activity varchar(50) Not null, Description varchar(500), Category varchar(20), TimeS TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, Primary Key(ID)) ";
                sql2 = "Create table "+name+"_items (ID int AUTO_INCREMENT, Name varchar(50), TimeS TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, Primary Key(ID)) ";
                ps = con.createStatement();
                ps.execute(sql2);
                ps.execute(sql);
                response.sendRedirect(request.getContextPath()+"/Panels/LogReg Forms/login.jsp");
            }
            
            
            
            }
            catch(Exception ex){
                
            }
   %>
