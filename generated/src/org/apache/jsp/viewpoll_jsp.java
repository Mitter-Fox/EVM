package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class viewpoll_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<style>\n");
      out.write(".btn-group button {\n");
      out.write("  background-color: #4CAF50; /* Green background */\n");
      out.write("  border: 1px solid green; /* Green border */\n");
      out.write("  color: white; /* White text */\n");
      out.write("  padding: 10px 24px; /* Some padding */\n");
      out.write("  cursor: pointer; /* Pointer/hand icon */\n");
      out.write("  float: left; /* Float the buttons side by side */\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats (clearfix hack) */\n");
      out.write(".btn-group:after {\n");
      out.write("  content: \"\";\n");
      out.write("  clear: both;\n");
      out.write("  display: table;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn-group button:not(:last-child) {\n");
      out.write("  border-right: none; /* Prevent double borders */\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add a background color on hover */\n");
      out.write(".btn-group button:hover {\n");
      out.write("  background-color: #3e8e41;\n");
      out.write("}\n");
      out.write(".pollstyle {\n");
      out.write("\tbackground-color: #FFC;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <title>Poll Page</title>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("    .evmbutton {\n");
      out.write("\tfont-family: Arial, Helvetica, sans-serif;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("\tfont-style: normal;\n");
      out.write("\tbackground-color: #69C;\n");
      out.write("\ttext-align: center;\n");
      out.write("\tvertical-align: middle;\n");
      out.write("\tborder-top-width: thin;\n");
      out.write("\tborder-right-width: thin;\n");
      out.write("\tborder-bottom-width: thin;\n");
      out.write("\tborder-left-width: thin;\n");
      out.write("\tborder-top-style: solid;\n");
      out.write("\tborder-right-style: solid;\n");
      out.write("\tborder-bottom-style: solid;\n");
      out.write("\tborder-left-style: solid;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- FONTAWESOME STYLES-->\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- CUSTOM STYLES-->\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- GOOGLE FONTS-->\n");
      out.write("   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("<body>\n");
      out.write("     ");
 String nm="";
         try
         {
        nm= session.getAttribute("ss_name").toString();
         }
         catch(Exception e)
         {
              out.print("<script>window.location='redirect.html';</script>");
         }
    
      out.write(" \n");
      out.write("    <form>\n");
      out.write("    <div id=\"wrapper\">\n");
      out.write("      <div class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("        <div class=\"adjust-nav\">\n");
      out.write("          <div class=\"navbar-header\"><a class=\"navbar-brand\" href=\"AdminPortal.jsp\">\n");
      out.write("                    <img src=\"assets/img/logo.png\" />\n");
      out.write("                </a>\n");
      out.write("          </div>\n");
      out.write("             <span class=\"logout-spn\" >\n");
      out.write("              <a style=\"color:#fff;\" ><br><p><strong><font size =\"12\"> VOTE DETAILS</font></strong></p>\n");
      out.write("              </a>  \n");
      out.write("                  \n");
      out.write("          </span>          </div>\n");
      out.write("      </div>\n");
      out.write("        <!-- /. NAV TOP  --><!-- /. NAV SIDE  --><!-- /. PAGE WRAPPER  -->\n");
      out.write("        </div></form>\n");
      out.write("    <form name=\"form1\" method=\"post\">\n");
      out.write("        <BR><BR><BR><BR>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("    <table class=\"table table-hover\" style=\"background: #F0F0F0\" ALIGN=\"CENTER\" >\n");
      out.write("            \n");
      out.write("            <tr style=\"background: appworkspace\" ALIGN=\"CENTER\">\n");
      out.write("                <td>PARTY</td>\n");
      out.write("                <td>COUNT</td>\n");
      out.write("                            </tr>\n");
      out.write("            ");

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Somoshri","putuli98");
                PreparedStatement ps=con.prepareStatement("select * from vote_count");
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                
      out.write("\n");
      out.write("            <tr  ALIGN=\"CENTER\"><td>");
      out.print( rs.getString(1) );
      out.write(" </td>\n");
      out.write("                <td>");
      out.print( rs.getInt(2) );
      out.write(" </td>\n");
      out.write("            </tr>\n");
      out.write("            ");
 } 
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
      out.write("      \n");
      out.write("    </form>\n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
