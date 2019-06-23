<%-- 
    Document   : newregn
    Created on : Jan 9, 2019, 9:58:23 PM
    Author     : Tridib
--%>

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
</style>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Poll Page</title>
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
    
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    </head>
    
<body>
     <% 
        String nm= session.getAttribute("ss_name").toString();
        String id= session.getAttribute("ss_id").toString();
        String em= session.getAttribute("ss_email").toString();
        
    %> 
    <form>
    <div id="wrapper">
      <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="adjust-nav">
          <div class="navbar-header"><a class="navbar-brand" href="#">
                    <img src="assets/img/logo.png" />
                </a>
          </div>
             <span class="logout-spn" >
              <a style="color:#fff;" ><br><p><strong><font size ="12"> VOTER DETAILS</font></strong></p>
              </a>  
                  
          </span>          </div>
      </div>
        <!-- /. NAV TOP  --><!-- /. NAV SIDE  --><!-- /. PAGE WRAPPER  -->
        </div></form>
    <form name="form1" method="post">
      <div align="center"><br>
        <br><br><br><br>
      </div>
      <p align="center">
          Voter ID : <%=id%><br>
          Voter Name : <%=nm%><br>
          Voter Email : <%=em%>
      </p>
      
    </form>
    
    </body>
</html>
