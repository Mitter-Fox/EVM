<%-- 
    Document   : viewcomp
    Created on : 10 Jan, 2019, 5:15:32 PM
    Author     : Somoshri Ghosh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
.btn-group button {
  background-color: #4CAF50; /* Green background */
  border: 1px solid green; /* Green border */
  color: white; /* White text */
  padding: 10px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  float: left; /* Float the buttons side by side */
}

/* Clear floats (clearfix hack) */
.btn-group:after {
  content: "";
  clear: both;
  display: table;
}

.btn-group button:not(:last-child) {
  border-right: none; /* Prevent double borders */
}

/* Add a background color on hover */
.btn-group button:hover {
  background-color: #3e8e41;
}
.pollstyle {
	background-color: #FFC;
}
table.roundedCorners { 
  border: 3px solid DarkOrange;
  border-radius: 13px; 
  border-spacing: 0;
  }
table.roundedCorners td, 
table.roundedCorners th { 
  border-bottom: 1px solid DarkOrange;
  padding: 10px; 
  }
table.roundedCorners tr:last-child > td {
  border-bottom: none;
}
</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All</title>
        <style type="text/css">
    .evmbutton {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-style: normal;
	background-color: #69C;
	text-align: center;
	vertical-align: middle;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
}
    </style>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <script src="js/bootstrap.min.js"></script>
    </head>
    <body style="background: #69C; text-align: center">
        <% 
        String nm="";
        try{
        nm = session.getAttribute("ss_name").toString();
        }catch(Exception e)
        {
            out.print("<script>window.location='redirect.html';</script>");
        }
    %>   
        <form>
    <div id="wrapper">
      <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="adjust-nav">
          <div class="navbar-header"><a class="navbar-brand" href="AdminPortal.jsp">
                    <img src="assets/img/logo.png" href="AdminPortal.jsp"/>
                </a>
          </div>
             <span class="logout-spn" >
              <a style="color:#fff;" ><br><p><strong><font size ="12"> VIEW COMPLAINTS/FEEDBACK </font></strong></p>
              </a>  
                  
          </span>          </div>
      </div>
        <!-- /. NAV TOP  --><!-- /. NAV SIDE  --><!-- /. PAGE WRAPPER  -->
        </div></form>
        <div class="container">
        <h1> </h1>
        <br><br><br>
        <table  class="table table-hover" style="background: #F0F0F0">
            <tr><td colspan="5" align="center" ><i>ALL COMPLAINTS</i></td></tr>
            <tr style="background: appworkspace"><td>VOTER_ID</td>
                <td>VOTER NAME</td>
                <td>EMAIL</td>
                <td>MOBILE NO</td>
                <td>MESSAGE</td>
                <td></td>
                
            </tr>
            <%
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Somoshri","putuli98");
                PreparedStatement ps=con.prepareStatement("select * from complaints");
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                %>
            <tr><td><%= rs.getString(1) %> </td>
                <td><%= rs.getString(2) %> </td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td><a href="DeleteComp.jsp?id=<%= rs.getString(1) %>">DELETE</a></td>
            </tr>
            <% } 
            %>
        </table>
    </div>
          <br><br><br>
                        <div align="center">
                             <strong>Current Admin : 
                             <%= nm%>
                             </strong> 
                        </div>
    </body>
</html>
