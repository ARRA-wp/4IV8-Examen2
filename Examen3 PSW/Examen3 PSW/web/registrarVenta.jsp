<%-- 
    Document   : registrarVenta
    Created on : 4/06/2021, 06:59:45 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*"%>
<%@page import="java.util.*"%>
<%@page session="true"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title> B&J R/Venta</title> 
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
                <a href="index.jsp" ><span class="icon-home3"></span></a>
                <a class="active" href="registrarVenta.jsp"> <span class="icon-cart"></span></a>
                <a href="login.jsp"> <span class="icon-user"></span></a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>
            </div>
        </div>
        <!--//Barra menu-->
        <br><br><br><br>    <br><br><br><br>
        <!--Fin barra menu-->
        <div class="margen">

            <form method="post" action="ServletActualizar" >
                <input type="hidden" name="accion" value="RegistrarVenta" >
                <div class="tablas">
                    <table border="1" align="center" >
                        <tr>
                            <td><h2>Nombre</h2></td>
                            <td><h2>Precio</h2></td>
                            <td><h2>Cantidad</h2></td>
                            <td><h2>Descuento</h2></td>
                            <td><h2>Sub Total</h2></td>

                        </tr>
                        <%
                            double total = 0;
                            ArrayList<DetalleVenta> lista = (ArrayList<DetalleVenta>) session.getAttribute("carrito");

                            if (lista != null) {

                                for (DetalleVenta d : lista) {

                        %>
                        <tr>
                            <td><h2><%=d.getProducto().getNombre()%></h2></td>
                            <td><h2><%=d.getProducto().getPrecio()%></h2></td>
                            <td><h2><%=d.getCantidad()%></h2></td>
                            <td><h2><%= String.format("%.2f", d.getDescuento())%></h2></td>
                            <td><h2><%=String.format("%.2f", (d.getProducto().getPrecio() * d.getCantidad()) - d.getDescuento())%></h2></td>

                        </tr>
                        <%
                                    total = total + (d.getProducto().getPrecio() * d.getCantidad()) - d.getDescuento();

                                }
                            }
                        %>

                        <tr>
                            <th colspan="4" align="right" ><h2>Total a Pagar</h2></th>
                            <th><h2><%=String.format("%.2f", total)%></h2></th>
                        </tr>  

                    </table>
                </div>
            </form>

            <div class="botones">
                <a href="index.jsp"> <button type="button"   onclick=""><span class="icon-cart"></span> Seguir comprando </button>
                </a>
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
