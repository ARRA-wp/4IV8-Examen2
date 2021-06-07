<<%-- 
    Document   : index.jsp
    Created on : 3/06/2021, 06:00:18 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>B&J Principal </title>
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <link rel="stylesheet" href="./CSS/Menu.css">
        <link rel="stylesheet" href="./CSS/Tablas.css">
        <link rel="stylesheet" href="./CSS/Detalles.css">
        <link rel="stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Roboto+Slab&display=swap" rel="stylesheet">
    </head>
    <body>
        <!--//Barra menu-->
        <div id="navbar">
            <img src="img/Logo.png">
            <div id="navbar-right">

                <a class="active" href="index.jsp" > <span class="icon-home3"></span></a>
                <a href="registrarVenta.jsp" >  <span class="icon-cart"></span></a>
                <a href="login.jsp"> <span class="icon-user"></span></a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>
            </div>
        </div>
        <!--//Barra menu-->
        <h1>Hubo un error intentelo de nuevo</h1>

        <script>
            // When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
            window.onscroll = function () {
                scrollFunction()
            };

            function scrollFunction() {
                if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
                    document.getElementById("navbar").style.padding = "30px 10px";
                    document.getElementById("logo").style.fontSize = "25px";
                } else {
                    document.getElementById("navbar").style.padding = "80px 10px";
                    document.getElementById("logo").style.fontSize = "35px";
                }
            }
        </script>


    </body>
</html>
