<%-- 
    Document   : DeleteComp
    Created on : 10 Jan, 2019, 10:46:38 PM
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
        <title>Delete</title>
    </head>
    <body>
            <% 
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Somoshri","putuli98");
            String pid=(String)(request.getParameter("id"));
            PreparedStatement ps=con.prepareStatement("delete from complaints where voter_id=?");
            ps.setString(1,pid);
            int i=ps.executeUpdate();
            if(i>0)
            {
                      out.println("<script>alert('Data Deleted');</script>");
                      response.sendRedirect("viewcomp.jsp");
            }
            %>
    </body>
</html>
