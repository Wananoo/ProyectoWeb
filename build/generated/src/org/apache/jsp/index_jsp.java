package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link rel=\"shortcut icon\" href=\"ico/icono.png\">\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>DevHelp</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"sidenav\">\n");
      out.write("  <a href=\"index.jsp\"><img class=\"icono\" width=\"30\" height=\"25\" src=\"ico/icono-home.png\" alt=\"Inicio\">\n");
      out.write("       Inicio</a>\n");
      out.write("  <a href=\"Lenguajes.jsp\"><img class=\"icono\" width=\"30\" height=\"25\" src=\"ico/icono-lenguajes.png\" alt=\"Lenguajes\">\n");
      out.write("       Lenguajes</a>\n");
      out.write("  <a href=\"Herramientas.jsp\"><img class=\"icono\" width=\"30\" height=\"25\" src=\"ico/icono-herramientas.png\" alt=\"Herramientas\">\n");
      out.write("      Herramientas</a>\n");
      out.write("  <a href=\"#\"><img class=\"icono\" width=\"30\" height=\"25\" src=\"ico/icono-contacto.png\" alt=\"Herramientas\">\n");
      out.write("      Contacto</a>\n");
      out.write("    <a href=\"#\"><img class=\"icono\" width=\"30\" height=\"25\" src=\"ico/icono-acerca.png\" alt=\"Herramientas\">\n");
      out.write("        Acerca de</a>\n");
      out.write("</div>\n");
      out.write("        <div class=\"main\">\n");
      out.write("        <h1>DevHelp</h1>\n");
      out.write("        <br>\n");
      out.write("        <div>\n");
      out.write("            <p class=\"subtit\">\n");
      out.write("                Bienvenido/a a DevHelp!\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
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
