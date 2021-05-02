<%-- 
    Document   : Administrador
    Created on : 1/05/2021, 02:49:51 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="shortcut icon" href="IMG/Icono.jpg" />
        <title> Ben and Jerrys Registro de Usuarios</title>

        <link rel="stylesheet" href="./CSS/Inicio.css">
        <link rel="stylesheet" href="./CSS/estilo.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&family=Rufina&family=Yeseva+One&display=swap" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./CSS/Crud.css">
        <script src="JS/Validar.js" ></script>


    </head>

    <body class="body-total">


        <div class="header">
            <img src="IMG/Logo.png"  width="200" height="50">
            <a href="sabores.html">Sabores </a>
            <a href="index.html">Tienda en linea</a>
            <a href="iniciar.jsp">Iniciar Sesión </a>
            <a href="#about">Acerca de</a>
            <a class="active" href="Administrador.jsp">Administrador</a>
        </div>
        <div class="formulario">
            <div class="formularioA"
                 <div class="container" >

                    <h1 class="titulo"></h1>
                    <h4 class="nombre"></h4>
                    <hr>
                    <hr>
                    <br>

                    <div class="containerRegistro">

                        <form name="formulario" method="post" 
                              action="registroadm.jsp">
                            <label>Registrar Usuario Administrador</label>

                            <table align="center" border="5">
                                <thead>
                                    <tr>

                                        <th>Nombre</th>

                                        <th>Edad</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>

                                        <td><input type="text" name="nombre" onkeypress="return validarp(event)" ></td>

                                        <td><input type="number" name="edad" min="01" max="99" size="2" onkeypress="return validarn(event)" ></td>


                                    </tr>

                                </tbody>

                            </table>
                            <br>
                            <input type="submit" value="Registro de Administrador" >
                            <input type="reset" value="Borrar Registro" >
                        </form>
                    </div>
                    <br>
                    <hr>
                    <hr>
                    <br>
                    <div class="containerConsulta" >
                        <br>
                        <form method="get" name="consultarregistro" action="Consultar.jsp">
                            <input type="submit" value="Consultar Tabla de Usuarios" >
                        </form>
                    </div>
                    <br>
                    <br>
                    <hr>
                    <hr>
                    <br>
                    <div class="containerEliminar" >
                        <br>
                        <form method="post" name="formularioeliminar" action="Eliminar.jsp">
                            <label>ID del Usuario a Eliminar</label>
                            <input type="number" name="id" onkeypress="return validarn(event)" >
                            <br>
                            <br>
                            <input type="submit" value="Eliminar Usuario" >
                        </form>
                        <br>
                        <form method="post" name="formularioeliminar" action="Eliminaradm.jsp">
                            <label>ID del Administrador a Eliminar</label>
                            <input type="number" name="id2" onkeypress="return validarn(event)" >
                            <br>
                            <br>
                            <input type="submit" value="Eliminar Usuario" >
                        </form>

                    </div>

                    <br>
                    <br>
                    <hr>
                    <hr>
                    <br>
                    <br>

                    <div class="containerActualizar">


                        <form method="post" name="formularioactualizar" action="Actuausu.jsp" >
                            <label>Actualización de Datos de los usuarios</label>
                            <br>

                            <table align="center" border="5" class="tabla-Producto">
                                <thead>
                                    <tr>

                                        <th>Nombre</th>
                                        <th>Edad</th>

                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>

                                        <td><input type="text" name="nombre2"
                                                   onkeypress="return validarp(event)" 
                                                   class="input_Producto" ></td>


                                        <td><input type="text" name="edad2"
                                                   onkeypress="return validarn(event)"
                                                   class="input_Producto" ></td>


                                    </tr>

                                </tbody>


                            </table>
                            <br>
                            <br>

                            <h3> Ingresa el id a buscar: </h3>
                            <input type="text" name="id2" onkeypress="return validarn(event)"  >
                            <br>
                            <br>

                            <input type="submit" value="Actualizacion de Usuarios" >
                            <input type="reset" value="Borrar Registro" >

                        </form>

                    </div>

                    <br>
                    <br>

                </div>
            </div>
        </div>
    </body>
</html>

