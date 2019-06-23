<%-- 
    Document   : AdminPortal
    Created on : 8 Jan, 2019, 8:59:58 PM
    Author     : Subarna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin  |  Portal</title>
	<!-- BOOTSTRAP STYLES-->
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
        String nm="";
        try{
        nm = session.getAttribute("ss_name").toString();
        }catch(Exception e)
        {
            out.print("<script>window.location='redirect.html';</script>");
        }
    %>     
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png" />

                    </a>
                    
                   
                    
                </div>
              
                <span class="logout-spn" >
                  <a href="HomePage.jsp" style="color:#fff;">LOGOUT</a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 


                    <li class="active-link">
                        <a href="newregn.jsp" ><i class="fa fa-table "></i>New Registration <span class="badge">NEW</span></a>
                    </li>

                    <li>
                        <a href="updateregn.jsp"><i class="fa fa-edit "></i>Update Details  <span class="badge">*</span></a>
                    </li>
                    <li>
                        <a href="" data-toggle="modal" data-target="#details-modal"><i class="fa fa-desktop "></i>View Voter Details</a>
                    </li>
                    <li>
                        <a href="viewcomp.jsp"><i class="fa fa-desktop "></i> View Complaints/Feedbacks</a>
                    </li>
					<li>
                        <a href="viewpoll.jsp"><i class="fa fa-desktop "></i> View Poll Result</a>
                    </li>
                    <li>
                        <a href="reset.jsp"><i class="fa fa-edit "></i> Reset Poll</a>
                    </li>

                    

                   
                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome 
                             <%= nm%> !
                             </strong> 
                        </div>
                       
                  </div>
              </div>
                 <!-- /. ROW  -->   
				  <div class="row">
                    <div class="col-lg-12 ">
					<br/>
                        <div class="alert alert-danger">
                             <strong>E-Poll </strong>   Logout before exiting.
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
            <div class="row">
                <div class="col-lg-12" >
                    &copy;  2019 TRSS | Design by: Subarna-Rohit-Somoshri-Tridib
                </div>
            </div>
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
    
    <!-- Voter Details Modal -->  
 <div class="modal fade" id="details-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Voter Details</h4>
          <form class="aa-login-form" action="ViewServ">
            <label for="">Voter ID : <span>*</span></label>
            <input type="text" placeholder="Enter Voter-ID" name="text_vid" id="text_vid">
                <!--button class="aa-browse-btn" type="submit">Send OTP</button -->
            <input type="submit" value="VIEW" />
        
            <!-- for displaying space -->
            <label for="rememberme" class="rememberme">   </label>
            <p class="aa-lost-password"><a href="#"></a></p>
          
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>    
   
</body>
</html>

