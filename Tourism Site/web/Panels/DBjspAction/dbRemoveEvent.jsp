<%-- 
    Document   : dbFunction
    Created on : Apr 5, 2019, 11:23:59 AM
    Author     : DigitalForce™
--%>


<%@page import="com.servlet.db.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Connection con = null;
    Statement st = null;
    //ResultSet rs = null;
    
    
    String i = request.getParameter("u");
    int id = Integer.parseInt(i);
    
    con = DB.getConnection();
    //ob2.println("Connection complete!");
    st = con.createStatement();
    st.executeUpdate("delete from event where ID="+id+" ");
    
    
    st.executeUpdate("Set @autoid := 0; ");
    st.executeUpdate("Update event set ID = @autoid := (@autoid + 1);");
    st.executeUpdate("Alter table event AUTO_INCREMENT = 1;");
    response.sendRedirect(request.getContextPath()+"/Panels/user-events.jsp");
    
                                                                   

%>
