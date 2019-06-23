<%-- 
    Document   : newjsp
    Created on : 9 Jan, 2019, 4:51:28 PM
    Author     : Somoshri Ghosh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="smtppackage.EmailUtility"%>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            Random rand = new Random();
            int n =rand.nextInt(90000) + 10000;

           String host;
	String port;
	String user;
	String pass;
        String vid="ABCD1234";//request.getParameter("id");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Somoshri","putuli98");
        //checking flag
        PreparedStatement ps1=con.prepareStatement("select flag from voter where voter_id=?");
        ps1.setString(1,vid);
        ResultSet rs1=ps1.executeQuery();
        rs1.next();
        int flag = rs1.getInt(1);
        if(flag==0){
        //adding new flag
        String s="select email from voter where voter_id=?";
        PreparedStatement ps=con.prepareStatement(s);
        ps.setString(1,vid);
        ResultSet rs=ps.executeQuery();
        rs.next();
                String email=rs.getString(1);
            ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
                String recipient = email;
		String subject ="E-Poll (Online Voting)";
		String content = Integer.toString(n);
                HttpSession hs1= request.getSession();
                hs1.setAttribute("ss_otp", content);

		String resultMessage = "";

		try {
			EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
					content);
			resultMessage = "The e-mail was sent successfully";
                        
		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "There were an error: " + ex.getMessage();
		} finally {
			//request.setAttribute("Message", resultMessage);
			//getServletContext().getRequestDispatcher("/Result.jsp").forward(
					//request, response);
                                        out.print(resultMessage);
		}
        }
        else{
           out.println("<script>alert('Sorry! Your vote has already been registered!');window.location='HomePage.jsp';</script>");
        }
        
            %>
    </body>
</html>
