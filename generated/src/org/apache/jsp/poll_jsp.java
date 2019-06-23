package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class poll_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- FONTAWESOME STYLES-->\r\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <!-- CUSTOM STYLES-->\r\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- GOOGLE FONTS-->\r\n");
      out.write("   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\r\n");
      out.write("   \r\n");
      out.write("       \r\n");
      out.write("    \r\n");
      out.write("      </head>\r\n");
      out.write("    <body>\r\n");
      out.write("       \r\n");
      out.write("        <div id=\"wrapper\"> <form name=\"form1\" method=\"get\" action=\"PollRes.jsp\">  \r\n");
      out.write("      <div class=\"navbar navbar-inverse navbar-fixed-top\">\r\n");
      out.write("        <div class=\"adjust-nav\">\r\n");
      out.write("          <div class=\"navbar-header\"><a class=\"navbar-brand\" href=\"#\">\r\n");
      out.write("                    <img src=\"assets/img/logo.png\" />\r\n");
      out.write("                </a>\r\n");
      out.write("            </div>\r\n");
      out.write("             <span class=\"logout-spn\" >\r\n");
      out.write("              <a style=\"color:#fff;\" ><br><p><strong><font size =\"12\"> CAST YOUR VOTE</font></strong></p>\r\n");
      out.write("              </a>  \r\n");
      out.write("                  \r\n");
      out.write("          </span>          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /. NAV TOP  --><!-- /. NAV SIDE  --><!-- /. PAGE WRAPPER  -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <h1 align=\"center\">    </h1>\r\n");
      out.write("    <p align=\"center\">&nbsp;</p>\r\n");
      out.write("    <br>\r\n");
      out.write("    \r\n");
      out.write("    <table width=\"661\" border=\"1\" align=\"center\">\r\n");
      out.write("      \r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"79\" height=\"96\"><div align=\"center\">1</div></td>\r\n");
      out.write("        <td width=\"150\"><div align=\"center\">Party 1</div></td>\r\n");
      out.write("        <td width=\"168\"><div align=\"center\"><img src=\"images/burger.png\" width=\"64\" \r\n");
      out.write("                                                 height=\"64\" alt=\"Burger\" longdesc=\"Images/burger.png\"></div></td>\r\n");
      out.write("        <td width=\"110\"><div align=\"center\"><img src=\"images/arr.png\" width=\"24\" height=\"24\" \r\n");
      out.write("                                                 alt=\"arr\" longdesc=\"Images/arr.png\"></div></td>\r\n");
      out.write("        <td width=\"120\"><div align=\"center\">\r\n");
      out.write("          \r\n");
      out.write("            <input type=\"radio\" name=\"Party\" id=\"Party\" value=\"Party1\">\r\n");
      out.write("           \r\n");
      out.write("          \t\r\n");
      out.write("        </div></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"100\"><div align=\"center\">2</div></td>\r\n");
      out.write("        <td><div align=\"center\">Party 2</div></td>\r\n");
      out.write("        <td><div align=\"center\"><img src=\"images/coke.png\" width=\"64\" height=\"64\" alt=\"coke\" longdesc=\"images/coke.png\"></div></td>\r\n");
      out.write("        <td><div align=\"center\"><img src=\"images/arr.png\" width=\"24\" height=\"24\" alt=\"arr\" longdesc=\"images/arr.png\"></div></td>\r\n");
      out.write("        <td><div align=\"center\"><input type=\"radio\" name=\"Party\" id=\"Party\" value=\"Party2\">\r\n");
      out.write("         </div></td>  \r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"102\"><div align=\"center\">3</div></td>\r\n");
      out.write("        <td><div align=\"center\">Party 3</div></td>\r\n");
      out.write("        <td><div align=\"center\"><img src=\"images/pizza.png\" width=\"64\" height=\"64\" alt=\"pizza\" longdesc=\"Images/pizza.png\"></div></td>\r\n");
      out.write("        <td><div align=\"center\"><img src=\"images/arr.png\" width=\"24\" height=\"24\" alt=\"arr\" longdesc=\"Images/arr.png\"></div></td>\r\n");
      out.write("        <td><div align=\"center\"><input type=\"radio\" name=\"Party\" id=\"Party\" value=\"Party3\">\r\n");
      out.write("            \r\n");
      out.write("          \r\n");
      out.write("        </div></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"105\"><div align=\"center\"></div></td>\r\n");
      out.write("        <td><div align=\"center\">Party 4</div></td>\r\n");
      out.write("        <td><div align=\"center\"><img src=\"images/chicken-leg.png\" width=\"64\" height=\"64\" alt=\"chicken\" longdesc=\"Images/chicken-leg.png\"></div></td>\r\n");
      out.write("        <td><div align=\"center\"><img src=\"images/arr.png\" width=\"24\" height=\"24\" alt=\"arr\" longdesc=\"Images/arr.png\"></div></td>\r\n");
      out.write("        <td><div align=\"center\"><input type=\"radio\" name=\"Party\" id=\"Party\" value=\"Party4\">\r\n");
      out.write("            \r\n");
      out.write("          \r\n");
      out.write("        </div></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"110\"><div align=\"center\">5</div></td>\r\n");
      out.write("        <td><div align=\"center\">NOTA</div></td>\r\n");
      out.write("        <td><div align=\"center\"><img src=\"images/pint.png\" width=\"64\" height=\"64\" alt=\"pint\" longdesc=\"Images/pint.png\"></div></td>\r\n");
      out.write("        <td><div align=\"center\"><img src=\"images/arr.png\" width=\"24\" height=\"24\" alt=\"arr\" longdesc=\"Images/arr.png\"></div></td>\r\n");
      out.write("        <td><div align=\"center\"><input type=\"radio\" name=\"Party\" id=\"Party\" value=\"NOTA\">\r\n");
      out.write("     \r\n");
      out.write("               \r\n");
      out.write(" \r\n");
      out.write("\t  \r\n");
      out.write("        </div></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"69\" colspan=\"5\"><div align=\"center\">\r\n");
      out.write("                \r\n");
      out.write("                 <input type=\"submit\" name=\"Button1\" id=\"Button1\"  value=\"VOTE\" \r\n");
      out.write("                        style=\"font-size : 20px; width: 27.5%; height: 51px; font-family:Arial, Helvetica, sans-serif;\" />\r\n");
      out.write("                </div></td>\r\n");
      out.write("                  \r\n");
      out.write("        </form>\r\n");
      out.write("         \r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("  \r\n");
      out.write("    <br>\r\n");
      out.write("    <p align=\"center\">&nbsp;</p>\r\n");
      out.write("    \r\n");
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
