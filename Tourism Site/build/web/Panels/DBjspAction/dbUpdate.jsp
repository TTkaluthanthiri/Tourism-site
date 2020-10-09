<%-- 
    Document   : dbFunction
    Created on : Apr 5, 2019, 11:23:59 AM
    Author     : DigitalForce™
--%>


<%@page import="DBConnection.DB_Primary"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    
    //ResultSet rs = null;
    
    String id = request.getParameter("u");
    String name = request.getParameter("name");
    int i = Integer.parseInt(id);
    con = DB_Primary.getConnection();
    //ob2.println("Connection complete!");
    st = con.createStatement();
    if(request.getHeader("referer").endsWith("user-profile.jsp")){
        
            st.executeUpdate("update local_business set Verified = 1 where ID="+i+"");
            
            response.sendRedirect(request.getContextPath()+"/Panels/index.jsp");
        
        
    } 
    
    
                                                                   

%>
