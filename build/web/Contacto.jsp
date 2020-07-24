<%-- 
    Document   : Contacto
    Created on : Jul 24, 2020, 5:10:59 AM
    Author     : wanan
--%>

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
</div>
        <div class="main">
        <h1>Contacto</h1>
        <br>
        <div>
            <p class="subtit">
                Contactate con nosotros y danos tu retroalimentacion!</p>
                <form action="#" method="get">
                    Seccion: 
                    <select  style="background-color:#383838;" onchange="submit();">
                        <option>Sin especificar</option>
                        <option>Lenguajes</option>
                        <option>Herramientas</option>
                    </select>
                    <select>
                        ########
                    </select>
                    <br>
                    Comentario: 
                    <BLOCKQUOTE><textarea  style="background-color:#383838;" id="texto" rows="4" cols="50"></textarea>
                        </BLOCKQUOTE>
                    <input  style="background-color:#383838;" type="submit" formaction="Contacto" value="Enviar" />
                </form>
        </div>
        </div>
    </body>
</html>
