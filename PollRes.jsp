<%-- 
    Document   : PollRes
    Created on : 11 Jan, 2019, 5:01:19 PM
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
          try{ 
        String party1=request.getParameter("Party");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Somoshri","putuli98");
        String s="update vote_count set count=count+1 where party_name=?";
        PreparedStatement ps=con.prepareStatement(s);
        ps.setString(1,party1);
        ps.executeUpdate();
              %>
        <script>alert('YOUR VOTE HAS BEEN REGISTERED');
            window.location="HomePage.jsp";
        </script>
        <%
          }catch(Exception e){out.print(e);}
            %>
    </body>
</html>
