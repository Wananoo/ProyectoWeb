<%-- 
    Document   : Lenguajes
    Created on : Jul 18, 2020, 9:46:44 PM
    Author     : wanan
--%>

<%@page import="Servlet.ObtenerL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="ico/icono.png">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lenguajes</title>
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
</div>
        <div class="main">
        <h1>Lenguajes</h1>
        <br>
        <div>
            <p class="subtit">
                Selecciona un lenguaje del cual quieres aprender:
            </p>
        </div>
        <form action="ObtenerL" method="get">
            <button class="botonlenguaje" onclick="submit();" name="Leng" value="Python">  
            <img class="icono" width="30" height="25" src="ico/icono-python.png">Python</button>
            <button class="botonlenguaje" onclick="submit();" name="Leng" value="Java">  
            <img class="icono" width="30" height="25" src="ico/icono-java.png">Java</button>
            <button class="botonlenguaje" onclick="submit();" name="Leng" value="C#">  
            <img class="icono" width="30" height="25" src="ico/icono-cs.png">C#</button>
        </form>
        <br>
        <%
            String LengS = request.getParameter("Leng");
            if (!(LengS==null))
            {%>
            <p>Lenguaje: ${Lenguaje}</p>
            <p>Dificultad: ${Dificultad}</p>
            <p>Sintaxis basica de ${Lenguaje}: <br> ${Sintaxis}</p><br>
            <p>Ventajas de ${Lenguaje}: <br> ${Ventajas}</p><br>
            <p> <a href="" onclick="this.href='${Documentacion}'">Documentacion Oficial de ${Lenguaje}:</a></p><br>
            <%if(!LengS.equals("C#")){%>
            <iframe src="${Documentacion}" title="Documentacion" height="500" width="1000">
            <%}else{%><p>Contenido de Microsoft no Disponible</p><%}}
        %>
         
        </div>
    </body>
</html>
