package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminPortal_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("      <meta charset=\"utf-8\" />\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("    <title>Admin  |  Portal</title>\r\n");
      out.write("\t<!-- BOOTSTRAP STYLES-->\r\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- FONTAWESOME STYLES-->\r\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <!-- CUSTOM STYLES-->\r\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- GOOGLE FONTS-->\r\n");
      out.write("   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("     \r\n");
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
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("         <div class=\"navbar navbar-inverse navbar-fixed-top\">\r\n");
      out.write("            <div class=\"adjust-nav\">\r\n");
      out.write("                <div class=\"navbar-header\">\r\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".sidebar-collapse\">\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\">\r\n");
      out.write("                        <img src=\"assets/img/logo.png\" />\r\n");
      out.write("\r\n");
      out.write("                    </a>\r\n");
      out.write("                    \r\n");
      out.write("                   \r\n");
      out.write("                    \r\n");
      out.write("                </div>\r\n");
      out.write("              \r\n");
      out.write("                <span class=\"logout-spn\" >\r\n");
      out.write("                  <a href=\"HomePage.jsp\" style=\"color:#fff;\">LOGOUT</a>  \r\n");
      out.write("\r\n");
      out.write("                </span>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /. NAV TOP  -->\r\n");
      out.write("        <nav class=\"navbar-default navbar-side\" role=\"navigation\">\r\n");
      out.write("            <div class=\"sidebar-collapse\">\r\n");
      out.write("                <ul class=\"nav\" id=\"main-menu\">\r\n");
      out.write("                 \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <li class=\"active-link\">\r\n");
      out.write("                        <a href=\"newregn.jsp\" ><i class=\"fa fa-table \"></i>New Registration <span class=\"badge\">NEW</span></a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"updateregn.jsp\"><i class=\"fa fa-edit \"></i>Update Details  <span class=\"badge\">*</span></a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"\" data-toggle=\"modal\" data-target=\"#details-modal\"><i class=\"fa fa-desktop \"></i>View Voter Details</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"viewcomp.jsp\"><i class=\"fa fa-desktop \"></i> View Complaints/Feedbacks</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("                        <a href=\"viewpoll.jsp\"><i class=\"fa fa-desktop \"></i> View Poll Result</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"reset.jsp\"><i class=\"fa fa-edit \"></i> Reset Poll</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                    \r\n");
      out.write("                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- /. NAV SIDE  -->\r\n");
      out.write("        <div id=\"page-wrapper\" >\r\n");
      out.write("            <div id=\"page-inner\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-lg-12\">\r\n");
      out.write("                     <h2>ADMIN DASHBOARD</h2>   \r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>              \r\n");
      out.write("                 <!-- /. ROW  -->\r\n");
      out.write("                  <hr />\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-lg-12 \">\r\n");
      out.write("                        <div class=\"alert alert-info\">\r\n");
      out.write("                             <strong>Welcome \r\n");
      out.write("                             ");
      out.print( nm);
      out.write(" !\r\n");
      out.write("                             </strong> \r\n");
      out.write("                        </div>\r\n");
      out.write("                       \r\n");
      out.write("                  </div>\r\n");
      out.write("              </div>\r\n");
      out.write("                 <!-- /. ROW  -->   \r\n");
      out.write("\t\t\t\t  <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-lg-12 \">\r\n");
      out.write("\t\t\t\t\t<br/>\r\n");
      out.write("                        <div class=\"alert alert-danger\">\r\n");
      out.write("                             <strong>E-Poll </strong>   Logout before exiting.\r\n");
      out.write("                        </div>\r\n");
      out.write("                       \r\n");
      out.write("                    </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  <!-- /. ROW  --> \r\n");
      out.write("    </div>\r\n");
      out.write("             <!-- /. PAGE INNER  -->\r\n");
      out.write("            </div>\r\n");
      out.write("         <!-- /. PAGE WRAPPER  -->\r\n");
      out.write("        </div>\r\n");
      out.write("    <div class=\"footer\">\r\n");
      out.write("      \r\n");
      out.write("    \r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-lg-12\" >\r\n");
      out.write("                    &copy;  2019 TRSS | Design by: Subarna-Rohit-Somoshri-Tridib\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("          \r\n");
      out.write("\r\n");
      out.write("     <!-- /. WRAPPER  -->\r\n");
      out.write("    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->\r\n");
      out.write("    <!-- JQUERY SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/jquery-1.10.2.js\"></script>\r\n");
      out.write("      <!-- BOOTSTRAP SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("      <!-- CUSTOM SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <!-- Voter Details Modal -->  \r\n");
      out.write(" <div class=\"modal fade\" id=\"details-modal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("    <div class=\"modal-dialog\">\r\n");
      out.write("      <div class=\"modal-content\">                      \r\n");
      out.write("        <div class=\"modal-body\">\r\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("          <h4>Voter Details</h4>\r\n");
      out.write("          <form class=\"aa-login-form\" action=\"ViewServ\">\r\n");
      out.write("            <label for=\"\">Voter ID : <span>*</span></label>\r\n");
      out.write("            <input type=\"text\" placeholder=\"Enter Voter-ID\" name=\"text_vid\" id=\"text_vid\">\r\n");
      out.write("                <!--button class=\"aa-browse-btn\" type=\"submit\">Send OTP</button -->\r\n");
      out.write("            <input type=\"submit\" value=\"VIEW\" />\r\n");
      out.write("        \r\n");
      out.write("            <!-- for displaying space -->\r\n");
      out.write("            <label for=\"rememberme\" class=\"rememberme\">   </label>\r\n");
      out.write("            <p class=\"aa-lost-password\"><a href=\"#\"></a></p>\r\n");
      out.write("          \r\n");
      out.write("        </div>                        \r\n");
      out.write("      </div><!-- /.modal-content -->\r\n");
      out.write("    </div><!-- /.modal-dialog -->\r\n");
      out.write("  </div>    \r\n");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
