package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang = \"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>MSP</title>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\"> <!-- Font awesome css file -->\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"> <!-- Bootstrap css file -->\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\"> <!-- my style css file -->\n");
      out.write("    \n");
      out.write("    <!-- google Fonts -->\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <!--For html5 tags -->\n");
      out.write("    <!--[if lt IE 9]-->\n");
      out.write("        <script src=\"js/html5shiv.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("  </head>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <body>\n");
      out.write("    \n");
      out.write("    <!-- ******************** Nav*************** -->\n");
      out.write("    \n");
      out.write("    <nav class=\"navbar navbar-default\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    \n");
      out.write("    <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("    \n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#first-nav\" aria-expanded=\"false\">\n");
      out.write("        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("      </button>\n");
      out.write("      <a href=\"index.html\" target=\"_self\"><img src=\"images/Logo.png\" class=\"img-responsive\" width=\"300\" height=\"200\" style=\"margin-right:10px\"></a>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"first-nav\">\n");
      out.write("    \n");
      out.write("  \n");
      out.write("            \n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">ABOUT <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"history.html\" >HISTORY</a></li>\n");
      out.write("            <li><a href=\"mission.html\" >MISSION</a></li>\n");
      out.write("            <li><a href=\"vision.html\">VISION</a></li>\n");
      out.write("            \n");
      out.write("            <li  class=\"Diaa\"> <a href=\"\">Department <span class=\"caret\"></a>\n");
      out.write("              <ul class=\"\">\n");
      out.write("               <li><a href=\"cs.html\">Computer Science</a></li>\n");
      out.write("                <li><a href=\"it.html\" >Information Technology</a></li>\n");
      out.write("                <li><a href=\"is.html\">Information System</a></li>\n");
      out.write("                <li><a href=\"or.html\">Operation Research</a></li>\n");
      out.write("                \n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("          \n");
      out.write("            \n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">COUNCILS <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"faculty-council-site.html\">Faculity Council Site</a></li>\n");
      out.write("            <li><a href=\"CouncilOFstudent-Affair.html\">\tStudent Affairs Council website</a></li>\n");
      out.write("            <li><a href=\"community-council.html\">Community Service Council and Environmental Affairs</a></li>\n");
      out.write("            <li role=\"separator\" class=\"divider\" ></li>\n");
      out.write("            <li><a href=\"electronic-services.html\">Site and electronic services unit</a></li>\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("            <li><a href=\"Collage-Services.html\">Services college site</a></li>\n");
      out.write("            <li><a href=\"student-council.html\">Student Council </a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("                \n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("            \n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">ADMINSTRATION <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"Dean.html\">DEAN</a></li>\n");
      out.write("            <li><a href=\"#\">Vice dean of student affairs</a></li>\n");
      out.write("            <li><a href=\"#\">Vice College for Graduate Studies and Research</a></li>\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("            <li><a href=\"#\">department heads</a></li>\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("            <li><a href=\"#\">Secretary of the College</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("            \n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">STAFF <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"#\">Staff Search</a></li>\n");
      out.write("            <li><a href=\"staff-register.html\">Staff Registeration</a></li>\n");
      out.write("            <li><a href=\"#\">Staff CV</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("     \n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">STUDENT <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li class=\"Diaa\"><a href=\"#\">Postgraduate<span class=\"caret\"></span>\n");
      out.write("             <ul>\n");
      out.write("               <li><a href=\"\">Graduate Exam Schedule</a></li>\n");
      out.write("               <li><a href=\"\">Graduate Exam Result</a></li>\n");
      out.write("               <li><a href=\"\">Awarded Degree</a></li>\n");
      out.write("               <li><a href=\"\">Postgraduate Affairs</a></li>\n");
      out.write("               \n");
      out.write("             </ul>  \n");
      out.write("            </a>\n");
      out.write("             \n");
      out.write("            </li>\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("            <li class=\"Diaa\"><a href=\"#\">Undergraduate <span class=\"caret\"></span>\n");
      out.write("              <ul>\n");
      out.write("                <li><a href=\"\">Student Site</a></li>\n");
      out.write("                \n");
      out.write("              </ul>\n");
      out.write("               \n");
      out.write("              </a>\n");
      out.write("\n");
      out.write("            </li>\n");
      out.write("            \n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("        <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">RESEARCH <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"#\">Reseach Direction</a></li>\n");
      out.write("            <li><a href=\"#\">List Of M.sc</a></li>\n");
      out.write("            <li><a href=\"#\">List Of Ph.D</a></li>\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("            <li><a href=\"#\">Journal</a></li>\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("            <li><a href=\"#\">Research Ethics</a></li>\n");
      out.write("            <li><a href=\"#\">Research Ethics</a></li>\n");
      out.write("            <li><a href=\"#\">Intellectual Property Right Guide</a></li>\n");
      out.write("             <li><a href=\"#\">Library</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li><a href=\"\">NEWS</a></li>\n");
      out.write("      </ul>\n");
      out.write("\n");
      out.write("                  \n");
      out.write("       <ul class=\"nav navbar-nav\">\n");
      out.write("        <li><a href=\"login.html\">E-LEARN PORTAL</a></li>\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("    </div><!-- /.navbar-collapse -->\n");
      out.write("  </div><!-- /.container-fluid -->\n");
      out.write("</nav>\n");
      out.write("    \n");
      out.write("    <!-- ********************End Nav*************** -->");
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
