package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newregn_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<style>\r\n");
      out.write(".btn-group button {\r\n");
      out.write("  background-color: #4CAF50; /* Green background */\r\n");
      out.write("  border: 1px solid green; /* Green border */\r\n");
      out.write("  color: white; /* White text */\r\n");
      out.write("  padding: 10px 24px; /* Some padding */\r\n");
      out.write("  cursor: pointer; /* Pointer/hand icon */\r\n");
      out.write("  float: left; /* Float the buttons side by side */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Clear floats (clearfix hack) */\r\n");
      out.write(".btn-group:after {\r\n");
      out.write("  content: \"\";\r\n");
      out.write("  clear: both;\r\n");
      out.write("  display: table;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn-group button:not(:last-child) {\r\n");
      out.write("  border-right: none; /* Prevent double borders */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Add a background color on hover */\r\n");
      out.write(".btn-group button:hover {\r\n");
      out.write("  background-color: #3e8e41;\r\n");
      out.write("}\r\n");
      out.write(".pollstyle {\r\n");
      out.write("\tbackground-color: #FFC;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        \r\n");
      out.write("        <title>Poll Page</title>\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("    .evmbutton {\r\n");
      out.write("\tfont-family: Arial, Helvetica, sans-serif;\r\n");
      out.write("\tfont-size: 16px;\r\n");
      out.write("\tfont-style: normal;\r\n");
      out.write("\tbackground-color: #69C;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tvertical-align: middle;\r\n");
      out.write("\tborder-top-width: thin;\r\n");
      out.write("\tborder-right-width: thin;\r\n");
      out.write("\tborder-bottom-width: thin;\r\n");
      out.write("\tborder-left-width: thin;\r\n");
      out.write("\tborder-top-style: solid;\r\n");
      out.write("\tborder-right-style: solid;\r\n");
      out.write("\tborder-bottom-style: solid;\r\n");
      out.write("\tborder-left-style: solid;\r\n");
      out.write("}\r\n");
      out.write("    </style>\r\n");
      out.write("    \r\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- FONTAWESOME STYLES-->\r\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <!-- CUSTOM STYLES-->\r\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- GOOGLE FONTS-->\r\n");
      out.write("   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("<body>\r\n");
      out.write("           \r\n");
      out.write("    ");
 
        String nm="";
        try{
        nm = session.getAttribute("ss_name").toString();
        }catch(Exception e)
        {
            out.print("<script>window.location='redirect.html';</script>");
        }
    
      out.write("     \r\n");
      out.write("\r\n");
      out.write("    <form>\r\n");
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("      <div class=\"navbar navbar-inverse navbar-fixed-top\">\r\n");
      out.write("        <div class=\"adjust-nav\">\r\n");
      out.write("          <div class=\"navbar-header\"><a class=\"navbar-brand\" href=\"AdminPortal.jsp\">\r\n");
      out.write("                    <img src=\"assets/img/logo.png\" />\r\n");
      out.write("                </a>\r\n");
      out.write("          </div>\r\n");
      out.write("             <span class=\"logout-spn\" >\r\n");
      out.write("              <a style=\"color:#fff;\" ><br><p><strong><font size =\"12\"> NEW REGISTRATION</font></strong></p>\r\n");
      out.write("              </a>  \r\n");
      out.write("                  \r\n");
      out.write("          </span>          </div>\r\n");
      out.write("      </div>\r\n");
      out.write("        <!-- /. NAV TOP  --><!-- /. NAV SIDE  --><!-- /. PAGE WRAPPER  -->\r\n");
      out.write("        </div></form>\r\n");
      out.write("    <form name=\"form1\" method=\"post\" action=\"NewRegServ\" >\r\n");
      out.write("      <div align=\"center\"><br>\r\n");
      out.write("        <br><br><br><br>\r\n");
      out.write("      </div>\r\n");
      out.write("      <p align=\"center\">\r\n");
      out.write("        <label for=\"voter_id\">Enter Voter ID : &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </label>\r\n");
      out.write("        <input type=\"text\" name=\"v_id\" id=\"voter_id\">\r\n");
      out.write("      </p>\r\n");
      out.write("      <p align=\"center\">\r\n");
      out.write("        <label for=\"v_name\">Enter Voter's Name :&nbsp;&nbsp;&nbsp;&nbsp;</label>\r\n");
      out.write("        <input type=\"text\" name=\"v_name\" id=\"v_name\">\r\n");
      out.write("      </p>\r\n");
      out.write("      <p align=\"center\">\r\n");
      out.write("        <label for=\"v_name\">Enter Voter's Address :</label>\r\n");
      out.write("        <input type=\"text\" name=\"v_name\" id=\"v_add\">\r\n");
      out.write("      </p>\r\n");
      out.write("      <p align=\"center\">\r\n");
      out.write("        <label for=\"v_email\">Enter Voter's Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>\r\n");
      out.write("        <input type=\"text\" name=\"v_email\" id=\"v_email\">\r\n");
      out.write("      </p>\r\n");
      out.write("      <p align=\"center\">\r\n");
      out.write("        <input type=\"submit\" name=\"v_button\" id=\"v_button\" value=\"                                  REGISTER                                   \">\r\n");
      out.write("      </p>\r\n");
      out.write("    </form>\r\n");
      out.write("    <br><br><br>\r\n");
      out.write("                        <div align=\"center\">\r\n");
      out.write("                             <strong>Current Admin : \r\n");
      out.write("                             ");
      out.print( nm);
      out.write("\r\n");
      out.write("                             </strong> \r\n");
      out.write("                        </div>\r\n");
      out.write("                       \r\n");
      out.write("                  \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
