<%-- 
    Document   : actualizarProducto
    Created on : 4/06/2021, 07:38:08 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*"%>
<%@page import="java.util.*"%>
<%@page session="true"%>
<%
    Producto p = ProductoDB.obtenerProducto(Integer.parseInt(request.getParameter("id")));
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title>JSP Page</title>
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

                <a  href="index.jsp"> <span class="icon-home3"></span> </a>
                <h5><a href="registrarProducto.jsp" >Registrar Producto</a></h5>
                <a class="active" href="administrador.jsp" > <span class="icon-user-tie"></span></a>
                <a  href="ConsultaUsuarios.jsp"> <span class="icon-newspaper"></span></a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>

            </div>
        </div>



        <!--Fin Menu-->
        <br><br><br><br><br><br>
        <!--Menu-->
        <div class="margen">



            <h2 align="center" >Actualizar Producto</h2>
            <div class="tablas">

                <table border="0" align="center" width="500">
                    <form method="post" action="ActualizarProducto" >
                        <tr>
                            <th rowspan="5" ><img src="img/<%=p.getImagen()%>" width="140" height="140"></th>
                            <th>Codigo</th>
                            <th><input type="text" name="txtCodigo" value="<%=p.getCodigoProducto()%>" readonly="" ></th>
                        </tr>
                        <tr>
                            <th>Nombre</th>
                            <th><input type="text" name="txtNombre" value="<%=p.getNombre()%>"  ></th>

                        </tr>
                        <tr>
                            <th>Precio</th>
                            <th><input type="text" name="txtPrecio" value="<%=p.getPrecio()%>"></th>

                        </tr>
                        <tr>

                            <th colspan="3" ><input type="submit" value="Actualizar" name="btnActualizar" ></th>

                        </tr>
                        <input type="hidden" name="accion" value="ModificarCarrito" >
                    </form>
                </table>
            </div>
        </div>

    </body>
</html>
