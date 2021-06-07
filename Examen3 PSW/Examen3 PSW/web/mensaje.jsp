<%-- 
    Document   : mensaje
    Created on : 5/06/2021, 01:07:22 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title>B&J UPS  </title>
        <link rel="stylesheet" href="./CSS/Menu.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Roboto+Slab&display=swap" rel="stylesheet">
    </head>
    <body>

        <!--//Barra menu-->
        <div id="navbar">
            <img src="img/Logo.png">
            <div id="navbar-right">

            </div>
        </div>
        <!--//Barra menu-->
        <br><br><br><br>
          <br><br>  <br><br>  <br><br>  <br><br>  <br><br>
        <div class="margen">

          
            <h1 align="center" >
                <%
                    if (request.getParameter("men") != null) {
                        out.println(request.getParameter("men"));
                    }

                %>
            </h1>

        </div>
    </body>
</html>
