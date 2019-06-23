<%-- 
    Document   : reset
    Created on : 11 Jan, 2019, 11:43:35 PM
    Author     : Somoshri Ghosh
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        String nm="";
        try{
        nm = session.getAttribute("ss_name").toString();
        }catch(Exception e)
        {
            out.print("<script>window.location='redirect.html';</script>");
        }
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Somoshri","putuli98");
                PreparedStatement ps=con.prepareStatement("update vote_count set count=0");
                ps.executeUpdate();
                out.println("<script>alert('Data Reset');window.location='AdminPortal.jsp';</script>");
                %>
                
    </body>
</html>
