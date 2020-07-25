package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import Modelo.Consultas;
import java.util.List;

public final class Contacto_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link rel=\"shortcut icon\" href=\"ico/icono.png\">\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Contacto</title>\n");
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
      out.write("  <a href=\"Contacto.jsp\"><img class=\"icono\" width=\"30\" height=\"25\" src=\"ico/icono-contacto.png\" alt=\"Herramientas\">\n");
      out.write("      Contacto</a>\n");
      out.write("    <a href=\"Acerca.jsp\"><img class=\"icono\" width=\"30\" height=\"25\" src=\"ico/icono-acerca.png\" alt=\"Herramientas\">\n");
      out.write("        Acerca de</a>\n");
      out.write("</div>\n");
      out.write("        ");
if (request.getParameter("error")!=null&&request.getParameter("error").equals("1"))
        {
      out.write("<script type=\"text/javascript\">\n");
      out.write("    alert(\"Error al ingresar\");\n");
      out.write("</script> ");
}
      out.write("\n");
      out.write("        <div class=\"main\">\n");
      out.write("        <h1>Contacto</h1>\n");
      out.write("        <br>\n");
      out.write("        <div>\n");
      out.write("            <p class=\"subtit\">\n");
      out.write("                Contactate con nosotros y danos tu retroalimentacion!</p>\n");
      out.write("                <form action=\"#\" method=\"get\">\n");
      out.write("                    Seccion: \n");
      out.write("                    \n");
      out.write("                    <select id=\"Seccion\" name=\"Seccion\" style=\"background-color:#383838;color:white;\" onchange=\"submit();\">\n");
      out.write("                        <option ");
if (request.getParameter("Seccion")!=null&&request.getParameter("Seccion").equals("Sin especificar")){
      out.write("selected");
}
      out.write(">Sin especificar</option>\n");
      out.write("                        <option ");
if (request.getParameter("Seccion")!=null&&request.getParameter("Seccion").equals("Lenguajes")){
      out.write("selected");
}
      out.write(" >Lenguajes</option>\n");
      out.write("                        <option ");
if (request.getParameter("Seccion")!=null&&request.getParameter("Seccion").equals("Herramientas")){
      out.write("selected");
}
      out.write(">Herramientas</option>\n");
      out.write("                    </select>\n");
      out.write("                            ");
 
                                Consultas cons = new Consultas();
                    String Seccion = request.getParameter("Seccion");
                    Seccion = "\""+Seccion+"\"";
                    List<String> SubSecciones = new  ArrayList<>();
                    if (Seccion.equals("\"Lenguajes\""))
                    {SubSecciones = cons.Listar("Lenguajes","Lenguajes");}
                    else if (Seccion.equals("\"Herramientas\""))
                    {SubSecciones = cons.Listar("Herramientas","Herramientas");}
                
      out.write("\n");
      out.write("                <select name=\"SubSeccionesDrop\" id=\"SubSeccionesDrop\" onchange=\"submit();\" style=\"background-color:#383838;color:white;\">\n");
      out.write("                    <option selected>Todos</option>\n");
      out.write("                    ");
for (int j = 0; j<SubSecciones.size();j++){
                    
      out.write("\n");
      out.write("                    <option>");
      out.print(SubSecciones.get(j));
      out.write("</option>\n");
      out.write("                    ");


                    }
      out.write("\n");
      out.write("                </select>\n");
      out.write("                    <br><br>\n");
      out.write("                    Nombre: \n");
      out.write("                    <input style=\"background-color:#383838;color:white;\" type=\"text\" name=\"autor\" />\n");
      out.write("                    <br><br>\n");
      out.write("                    Comentario: \n");
      out.write("                    <BLOCKQUOTE><textarea placeholder=\"Escribe aqui tu comentario\" style=\"background-color:#383838;color:white;\" id=\"texto\" name=\"texto\" rows=\"4\" cols=\"50\"></textarea>\n");
      out.write("                        </BLOCKQUOTE>\n");
      out.write("                    <input  style=\"background-color:#383838;color:white;\" type=\"submit\" formaction=\"EnviarContacto\" value=\"Enviar\" />\n");
      out.write("                </form>\n");
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
