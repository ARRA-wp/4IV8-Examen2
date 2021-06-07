<%-- 
    Document   : añadirCarrito
    Created on : 4/06/2021, 05:39:13 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="Modelo.*"%>
<%
    Producto p = ProductoDB.obtenerProducto(Integer.parseInt(request.getParameter("id")));
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title>B&J Añadir al Carrito</title>
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

                <a href="index.jsp" > <span class="icon-home3"></span></a>
                <a class="active" href="registrarVenta.jsp" >  <span class="icon-cart"></span></a>
                <a href="login.jsp"> <span class="icon-user"></span></a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>
            </div>
        </div>
        <!--//Barra menu-->
        <br><br><br><br> 

        <!--Fin Menu-->
        <div class="margen">
            <h1>Añadir a Carrito</h1>
            <div class="tabla-img">

                <table border="0" align="center" width="500">
                    <form method="post" action="ServletControlador" >
                        <tr>
                            <th rowspan="5" ><img src="img/<%=p.getImagen()%>" width="140" height="140"></th>
                            <th><input type="hidden" name="txtCodigo" value="<%=p.getCodigoProducto()%>" ></th>
                        </tr>
                        <tr>
                            <th><h2>Nombre</h2></th>
                            <th><input type="text" name="txtNombre" value="<%=p.getNombre()%>" readonly="" ></th>

                        </tr>
                        <tr>
                            <th><h2>Precio</h2></th>
                            <th><input type="text" name="txtPrecio" value="<%=p.getPrecio()%>" readonly="" ></th>

                        </tr>
                        <tr>
                            <th><h2>Cantidad</h2></th>
                            <th><input type="number" name="txtCantidad" value="0" min="0" ></th>

                        </tr>
                        <tr>


                    </form>
                          
                </table>
                              <br><br>
                <h3 style="text-align: center">
                    <input type="submit" value="Añadir" name="btnAñadir" >


                    <input type="hidden" name="accion" value="añadirCarrito" >
                </h3>
            </div>
        </div>
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
