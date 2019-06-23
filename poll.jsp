<%-- 
    Document   : poll
    Created on : Jan 9, 2019, 4:01:21 PM
    Author     : Tridib
--%>

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
       
        <div id="wrapper"> <form name="form1" method="get" action="PollRes.jsp">  
      <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="adjust-nav">
          <div class="navbar-header"><a class="navbar-brand" href="#">
                    <img src="assets/img/logo.png" />
                </a>
            </div>
             <span class="logout-spn" >
              <a style="color:#fff;" ><br><p><strong><font size ="12"> CAST YOUR VOTE</font></strong></p>
              </a>  
                  
          </span>          </div>
        </div>
        <!-- /. NAV TOP  --><!-- /. NAV SIDE  --><!-- /. PAGE WRAPPER  -->
        </div>
        <h1 align="center">    </h1>
    <p align="center">&nbsp;</p>
    <br>
    
    <table width="661" border="1" align="center">
      
      <tr>
        <td width="79" height="96"><div align="center">1</div></td>
        <td width="150"><div align="center">Party 1</div></td>
        <td width="168"><div align="center"><img src="images/burger.png" width="64" 
                                                 height="64" alt="Burger" longdesc="Images/burger.png"></div></td>
        <td width="110"><div align="center"><img src="images/arr.png" width="24" height="24" 
                                                 alt="arr" longdesc="Images/arr.png"></div></td>
        <td width="120"><div align="center">
          
            <input type="radio" name="Party" id="Party" value="Party1">
           
          	
        </div></td>
      </tr>
      <tr>
        <td height="100"><div align="center">2</div></td>
        <td><div align="center">Party 2</div></td>
        <td><div align="center"><img src="images/coke.png" width="64" height="64" alt="coke" longdesc="images/coke.png"></div></td>
        <td><div align="center"><img src="images/arr.png" width="24" height="24" alt="arr" longdesc="images/arr.png"></div></td>
        <td><div align="center"><input type="radio" name="Party" id="Party" value="Party2">
         </div></td>  
      </tr>
      <tr>
        <td height="102"><div align="center">3</div></td>
        <td><div align="center">Party 3</div></td>
        <td><div align="center"><img src="images/pizza.png" width="64" height="64" alt="pizza" longdesc="Images/pizza.png"></div></td>
        <td><div align="center"><img src="images/arr.png" width="24" height="24" alt="arr" longdesc="Images/arr.png"></div></td>
        <td><div align="center"><input type="radio" name="Party" id="Party" value="Party3">
            
          
        </div></td>
      </tr>
      <tr>
        <td height="105"><div align="center"></div></td>
        <td><div align="center">Party 4</div></td>
        <td><div align="center"><img src="images/chicken-leg.png" width="64" height="64" alt="chicken" longdesc="Images/chicken-leg.png"></div></td>
        <td><div align="center"><img src="images/arr.png" width="24" height="24" alt="arr" longdesc="Images/arr.png"></div></td>
        <td><div align="center"><input type="radio" name="Party" id="Party" value="Party4">
            
          
        </div></td>
      </tr>
      <tr>
        <td height="110"><div align="center">5</div></td>
        <td><div align="center">NOTA</div></td>
        <td><div align="center"><img src="images/pint.png" width="64" height="64" alt="pint" longdesc="Images/pint.png"></div></td>
        <td><div align="center"><img src="images/arr.png" width="24" height="24" alt="arr" longdesc="Images/arr.png"></div></td>
        <td><div align="center"><input type="radio" name="Party" id="Party" value="NOTA">
     
               
 
	  
        </div></td>
      </tr>
      <tr>
        <td height="69" colspan="5"><div align="center">
                
                 <input type="submit" name="Button1" id="Button1"  value="VOTE" 
                        style="font-size : 20px; width: 27.5%; height: 51px; font-family:Arial, Helvetica, sans-serif;" />
                </div></td>
                  
        </form>
         
      </tr>
    </table>
  
    <br>
    <p align="center">&nbsp;</p>
    
    </body>
</html>
