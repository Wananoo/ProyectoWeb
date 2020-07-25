<%-- 
    Document   : Contacto
    Created on : Jul 24, 2020, 5:10:59 AM
    Author     : wanan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Consultas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="ico/icono.png">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacto</title>
    </head>
    
    <body>
        
        <div class="sidenav">
  <a href="index.jsp"><img class="icono" width="30" height="25" src="ico/icono-home.png" alt="Inicio">
       Inicio</a>
  <a href="Lenguajes.jsp"><img class="icono" width="30" height="25" src="ico/icono-lenguajes.png" alt="Lenguajes">
       Lenguajes</a>
  <a href="Herramientas.jsp"><img class="icono" width="30" height="25" src="ico/icono-herramientas.png" alt="Herramientas">
      Herramientas</a>
  <a href="Contacto.jsp"><img class="icono" width="30" height="25" src="ico/icono-contacto.png" alt="Herramientas">
      Contacto</a>
    <a href="Acerca.jsp"><img class="icono" width="30" height="25" src="ico/icono-acerca.png" alt="Herramientas">
        Acerca de</a>
    <br><br><br><br><br><a style="font-size: 15px;" href="https://www.paypal.com/paypalme/Wananoo?locale.x=es_XC">Donar</a>
</div>
        <%if (request.getParameter("error")!=null&&request.getParameter("error").equals("1"))
        {
        request.getSession(true);session.setAttribute("error", "0");
        %><script type="text/javascript">
    alert("Error al ingresar");
        </script> <%}%>
        <div class="main">
        <h1>Contacto</h1>
        <br>
        <div>
            <p class="subtit">
                Contactate con nosotros y danos tu retroalimentacion!</p>
                <form action="#" method="get">
                    Seccion: 
                    
                    <select id="Seccion" name="Seccion" style="background-color:#383838;color:white;" onchange="submit();">
                        <option <%if (request.getParameter("Seccion")!=null&&request.getParameter("Seccion").equals("Sin especificar")){%>selected<%}%>>Sin especificar</option>
                        <option <%if (request.getParameter("Seccion")!=null&&request.getParameter("Seccion").equals("Lenguajes")){%>selected<%}%> >Lenguajes</option>
                        <option <%if (request.getParameter("Seccion")!=null&&request.getParameter("Seccion").equals("Herramientas")){%>selected<%}%>>Herramientas</option>
                    </select>
                            <% 
                                Consultas cons = new Consultas();
                    String Seccion = request.getParameter("Seccion");
                    Seccion = "\""+Seccion+"\"";
                    List<String> SubSecciones = new  ArrayList<>();
                    if (Seccion.equals("\"Lenguajes\""))
                    {SubSecciones = cons.Listar("Lenguajes","Lenguajes");}
                    else if (Seccion.equals("\"Herramientas\""))
                    {SubSecciones = cons.Listar("Herramientas","Herramientas");}
                %>
                <select name="SubSeccionesDrop" id="SubSeccionesDrop" onchange="submit();" style="background-color:#383838;color:white;">
                    <option selected>Todos</option>
                    <%for (int j = 0; j<SubSecciones.size();j++){
                    %>
                    <option <%if (request.getParameter("SubSeccionesDrop")!=null&&request.getParameter("SubSeccionesDrop").equals(SubSecciones.get(j))){%>selected<%}%> ><%=SubSecciones.get(j)%></option>
                    <%

                    }%>
                </select>
                    <br><br>
                    Nombre: 
                    <input style="background-color:#383838;color:white;" type="text" name="autor" />
                    <br><br>
                    Comentario: 
                    <BLOCKQUOTE><textarea placeholder="Escribe aqui tu comentario" style="background-color:#383838;color:white;" id="texto" name="texto" rows="4" cols="50"></textarea>
                        </BLOCKQUOTE>
                    <input  style="background-color:#383838;color:white;" type="submit" formaction="EnviarContacto" value="Enviar"/>
                </form>
        </div>
        </div>
    </body>
</html>
