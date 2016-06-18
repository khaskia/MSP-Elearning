package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<title>Forms</title>\r\n");
      out.write("\r\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"css/datepicker3.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"css/styles.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<!--[if lt IE 9]>\r\n");
      out.write("<script src=\"js/html5shiv.js\"></script>\r\n");
      out.write("<script src=\"js/respond.min.js\"></script>\r\n");
      out.write("<![endif]-->\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4\">\r\n");
      out.write("\t\t\t<div class=\"login-panel panel panel-default\">\r\n");
      out.write("\t\t\t\t<div class=\"panel-heading\">Log in</div>\r\n");
      out.write("\t\t\t\t<div class=\"panel-body\">\r\n");
      out.write("                                    \r\n");
      out.write("                                    ");
 if(request.getAttribute("error")!=null){ 
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("                                    <div class=\"alert bg-danger\" role=\"alert\">\r\n");
      out.write("                                         ");
      out.print(request.getAttribute("error") );
      out.write("\r\n");
      out.write("                                    </div>           \r\n");
      out.write("                                    \r\n");
      out.write("                                    ");
}
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("                                    <form role=\"form\" action=\"../admincplogin\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t<fieldset>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input class=\"form-control\" placeholder=\"email\" name=\"email\" type=\"email\" autofocus=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input class=\"form-control\" placeholder=\"Password\" name=\"pass\" type=\"password\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"checkbox\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"remember\" type=\"checkbox\" value=\"Remember Me\">Remember Me\r\n");
      out.write("\t\t\t\t\t\t\t\t</label>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("                                                        <input  type=\"submit\" value=\"submit\" class=\"btn btn-primary\" name=\"login\" />\r\n");
      out.write("\t\t\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div><!-- /.col-->\r\n");
      out.write("\t</div><!-- /.row -->\t\r\n");
      out.write("\t\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t<script src=\"js/jquery-1.11.1.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/chart.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/chart-data.js\"></script>\r\n");
      out.write("\t<script src=\"js/easypiechart.js\"></script>\r\n");
      out.write("\t<script src=\"js/easypiechart-data.js\"></script>\r\n");
      out.write("\t<script src=\"js/bootstrap-datepicker.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\t!function ($) {\r\n");
      out.write("\t\t\t$(document).on(\"click\",\"ul.nav li.parent > a > span.icon\", function(){\t\t  \r\n");
      out.write("\t\t\t\t$(this).find('em:first').toggleClass(\"glyphicon-minus\");\t  \r\n");
      out.write("\t\t\t}); \r\n");
      out.write("\t\t\t$(\".sidebar span.icon\").find('em:first').addClass(\"glyphicon-plus\");\r\n");
      out.write("\t\t}(window.jQuery);\r\n");
      out.write("\r\n");
      out.write("\t\t$(window).on('resize', function () {\r\n");
      out.write("\t\t  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')\r\n");
      out.write("\t\t})\r\n");
      out.write("\t\t$(window).on('resize', function () {\r\n");
      out.write("\t\t  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')\r\n");
      out.write("\t\t})\r\n");
      out.write("\t</script>\t\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
