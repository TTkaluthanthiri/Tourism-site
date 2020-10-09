<%-- 
    Document   : dbFunction
    Created on : Apr 5, 2019, 11:23:59 AM
    Author     : DigitalForce™
--%>


<%@page import="DBConnection.DB2"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Connection con = null;
    Statement st = null;
    //ResultSet rs = null;
    
    String id = request.getParameter("r");
    int i = Integer.parseInt(id);
    con = DB.getConnection();
    
    //ob2.println("Connection complete!");
    st = con.createStatement();
    st.executeUpdate("delete from local_business where ID="+i+"");
    st.executeUpdate("Set @autoid := 0; ");
    st.executeUpdate("Update local_business set ID = @autoid := (@autoid + 1);");
    st.executeUpdate("Alter table local_business AUTO_INCREMENT = 1;");
    response.sendRedirect(request.getContextPath()+"/Main/myprofile-single.jsp");
    
                                                                   

%>
