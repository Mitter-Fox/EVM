<%-- 
    Document   : HomePage
    Created on : 8 Jan, 2019, 8:28:04 PM
    Author     : Subarna
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>E-Poll | Home</title>
    
    <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <link rel="stylesheet" href="css/layout.css">
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  
    <script>
        function send_otp(){
           
            //Creating a new XMLHttpRequest object
           var d= document.getElementById("text_vid").value;
           
        <%   HttpSession hs= request.getSession();
           hs.setAttribute("ss_id", "29041998");
          %>
    var xmlhttp;
    if (window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest(); //for IE7+, Firefox, Chrome, Opera, Safari
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP"); //for IE6, IE5
    }
    //Create a asynchronous GET request
    xmlhttp.open("GET", "SendOTP.jsp?id="+d, true);
     
    //When readyState is 4 then get the server output
    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4) {
            if (xmlhttp.status == 200)
            {
                document.getElementById("message").innerHTML = xmlhttp.responseText;
                
              alert(xmlhttp.responseText);
              //this.attr("data-dismiss");//data-target="#OTP-modal"
            }
            else
            {
                alert('Voter ID might be incorrect !! Something is wrong !!');
            //  document.getElementById('OTP-modal').style.display = "none";
            //  this.attr("data-dismiss");
            window.location="HomePage.jsp";
            }
        }
    };
     
    xmlhttp.send(null);
    
        }
        
        </script>
        
  </head>
  <body> 
   <!-- wpf loader Two -->
   <!-- <div id="wpf-loader-two">          
      <div class="wpf-loader-two-inner">
        <span>Loading</span>
      </div>
    </div>  -->
  <!-- / wpf loader Two -->       
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


  <!-- Start header section -->
  <header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-left">
              
                <!-- start cellphone -->
                <div class="cellphone hidden-xs">
                  <p><span class="fa fa-phone"></span>00000-99999</p>
                </div>
                <!-- / cellphone -->
              </div>
              <!-- / header top left -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
                 <li><a href="contact.jsp">Contact Us</a></li>
                  <li><a href="" data-toggle="modal" data-target="#login-modal">Admin Login</a></li>
                  
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header top  -->

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
              <div class="aa-logo">
                <!-- Text based logo -->
                <a href="index.html">
                  <span class="fa fa-thumbs-o-up"></span>
                  <p>e-<strong>Poll</strong> <span>Online Polling System</span></p>
                </a>
                <!-- img based logo -->
              <!--  <a href="index.html"><img src="img/banner.jpg" alt="logo img"></a> -->
              </div>
              <div id="sequence" class="seq">
                <div class="seq-screen">
                  <ul class="seq-canvas">
                    <!-- single slide item -->
                    <li>
                      <div class="seq-model"> <img src="img/slider/pic1.jpg" alt="Food img" width="1920" height="700" data-seq /> </div>
                    <!-- single slide item -->
                    <li>
                      <div class="seq-model"> <img src="img/slider/pic2.jpg" alt="Male Female slide img" width="1920" height="400" data-seq /> </div>
                    </li>
                    <li>
                      <div class="seq-model"> <img src="img/slider/pic3.jpg" alt="Male Female slide img" width="1920" height="400" data-seq /> </div>
                    </li>
               	  </ul>
                </div> 
                <!-- slider navigation btn -->
                <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
                  <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a> <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
                </fieldset>
              </div>
              <!-- / logo  -->
                           </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header bottom  -->
  </header>
  <!-- / header section -->
  <!-- menu -->
  <section id="menu"></section>
  <!-- / menu -->
  <!-- Start slider -->
  <section id="aa-slider">
    <div class="aa-slider-area"></div>
  </section>
 
  <div align="center">           
              
  <a class="aa-browse-btn" href="" data-toggle="modal" data-target="#voter-modal">VOTE NOW <span class="fa fa-long-arrow-right"></span></a>       
  </div>    
  <br>
  <div class="container">
  <div class="row">
  <div class="column" align="justify">Conducting an election should not be difficult, involve stress, or even take much time. E-Poll emphasis time-saving make the job of the election manager and the voters as easy as possible. E-Poll is a web-based online voting system that will help one organize elections in a quick, convenient, and cost-effective way. E-Poll improve voter turnout and build instant results .</div>
  
  <div class="column1" align="justify">The concept of hassle-free voting is being implemented by this system.In our technologically blooming world, this concept is a major reform in the voting systems that has been practised till now. The Online Polling System is recognized as secure and accurate in its ability to authenticate voters and to tabulate voting results.
            </div>
</div>
</div>
              
  

  <!-- Subscribe section -->
  <section id="aa-subscribe">
    <div class="container">
      <div class="row">
        <div >
          <div class="aa-subscribe-area">
            <h3>Subscribe our newsletter </h3>
            <p>To subscribe to newsletters from the government, hit SUBSCRIBE!!</p>
            <form action="" class="aa-subscribe-form">
              <input type="email" name="" id="" placeholder="Enter your Email">
              <input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Subscribe section -->

  <!-- footer -->  
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container-fluid">
        <div class="row">
        <div>
          <div class="aa-footer-top-area">
            <div class="row">
              
                <div class="aa-footer-widget" align="center">
                  <div class="aa-footer-widget">
                      <a href="contact.jsp"><h3><span class="fa fa-angle-left"></span> Contact Us <span class="fa fa-angle-right"></span></h3></a>
                    <address>
                      <p> XX, HALFWAY STREET , KOLKATA 70000X, INDIA</p>
                      <p><span class="fa fa-phone"></span>+91 00000 99999</p>
                      <p><span class="fa fa-envelope"></span>something@teamfuture.in</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="#"><span class="fa fa-facebook"></span></a>
                      <a href="#"><span class="fa fa-twitter"></span></a>
                      <a href="#"><span class="fa fa-google-plus"></span></a>
                      <a href="#"><span class="fa fa-youtube"></span></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row"></div>
      </div>
    </div>
  </footer>
  <!-- / footer -->

  <!-- Admin Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
       
          <div class="modal-body">
        <button id="btn_cl" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Administrator Login</h4>
          <form class="aa-login-form" action="AdminServ" method="post">
            <label for="">Email address<span>*</span></label>
            <input type="text" placeholder="Enter email" name="text_email">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Password" name="text_pass">
            <button class="aa-browse-btn" type="submit">Login</button>
            <label for="rememberme" class="rememberme"> </label>
            <p class="aa-lost-password"><a href="#"></a></p>
          <!--  <div class="aa-register-now">
              Don't have an account?<a href="account.html">Register now!</a>
            </div> -->
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div> 
  
  
  
   <!-- Voter Login Modal -->  
 <div class="modal fade" id="voter-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Voter Login</h4>
          <form class="aa-login-form" action="otp_validate">
            <label for="">Voter ID<span>*</span></label>
            <input type="text" placeholder="Enter Voter-ID" name="text_vid" id="text_vid">
            <!--button class="aa-browse-btn" type="submit">Send OTP</button -->
            <a class="aa-browse-btn" onclick="send_otp()" data-toggle="modal" data-target="#OTP-modal" >SEND OTP </a> 
        
            <!-- for displaying space -->
            <label for="rememberme" class="rememberme">   </label>
            <p class="aa-lost-password"><a href="#"></a></p>
          
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div> 
   
   
   <!-- Voter OTP Modal -->  
 <div class="modal fade" id="OTP-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Voter Login</h4>
          
            <label for="">Enter OTP<span>*</span></label>
            <input type="text" placeholder="Enter OTP" name="t2">
            <button class="aa-browse-btn" type="submit">LOGIN</button>
            <!-- for displaying space -->
            <label for="rememberme" class="rememberme">   </label>
            <p class="aa-lost-password"><a href="#"></a></p>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>   
   
    <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="js/sequence.js"></script>
  <script src="js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="js/custom.js"></script> 

  </body>
</html>
