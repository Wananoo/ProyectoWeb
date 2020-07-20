<%-- 
    Document   : Lenguajes
    Created on : Jul 18, 2020, 9:46:44 PM
    Author     : wanan
--%>

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
  <a href="#"><img class="icono" width="30" height="25" src="ico/icono-contacto.png" alt="Herramientas">
      Contacto</a>
    <a href="#"><img class="icono" width="30" height="25" src="ico/icono-acerca.png" alt="Herramientas">
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
        <form>
            <button class="botonlenguaje" onclick="submit();" name="Leng" value="Python">  
            <img class="icono" width="30" height="25" src="ico/icono-python.png">Python</button>
            <button class="botonlenguaje" onclick="submit();" name="Leng" value="Java">  
            <img class="icono" width="30" height="25" src="ico/icono-java.png">Java</button>
            <button class="botonlenguaje" onclick="submit();" name="Leng" value="CSharp">  
            <img class="icono" width="30" height="25" src="ico/icono-cs.png">C#</button>
        </form>
        <br>
        <%
            String Leng = request.getParameter("Leng");
            if(Leng==null){Leng="";}
            switch (Leng)
            {
                case "Python":
                            {
                                
                                break;
                            }
                default: break;
            }
        %>
        </div>
    </body>
</html>
