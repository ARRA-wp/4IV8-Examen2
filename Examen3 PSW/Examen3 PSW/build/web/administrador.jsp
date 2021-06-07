<%-- 
    Document   : administrador.jsp
    Created on : 5/06/2021, 09:58:53 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title>B&J </title>
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
        <!--//Barra menu-->
        <br><br><br><br> 

        <div class="margen">

            <!-- Actualizar usuario-->
            <h1>Administrador</h1>
            <hr color="#121212" size=5 width="1090"> 
            <div class="tablas" >

                <form method="POST" action="actualizarUsuario">
                    <section>
                        <article>
                            <h2 style="text-align:center"; >Actualizar Usuarios</2>
                                <h3>
                                    Introduce el ID del Usuario a Localizar: <input type="text" name="id2"
                                                                                    onkeypress="return validarn(event)"></h3>
                        </article>
                    </section>
                    <section>
                        <article>
                            <h3 style="text-align:justify"; > Y ahora sus nuevos atributos: </h3>
                            <br>
                            <table align="center" border="10" class="tabla-Producto">
                                <thead>
                                    <tr>
                                        <th><h2>Nombre</h2></th>
                                        <th><h2>Contraseña</h2></th>
                                        <th><h2>Correo</h2></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><input type="text" name="nombre2" id="Productoi"
                                                   onkeypress="" class="input_Producto"></td>
                                        <td><input type="text" name="password2" id="Caloriasi"
                                                   onkeypress="" class="input_Producto"></td>
                                        <td><input type="text" name="email2" id="Azucaresi"
                                                   onkeypress="" class="input_Producto"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>
                            <h3 style="text-align:center" ;>

                                <input class="button-agregar" name="Botón" type="submit" value="Actualizar" onclick=""></h3>
                            <br>
                        </article>
                    </section>
                </form>

            </div>

            <!-- Fin Actualizar -->
            <hr color="#121212" size=6 width="1090"> 
            <br>
            <!-- Inicio Eliminar -->
            <div class="tablas">
                <form method="POST" action="EliminarProducto">
                    <section>
                        <article>
                            <h2 style="text-align:center" ;>Eliminar Alimento/Usuarios</h2>
                            <h3 >
                                Introduce el ID del Producto a Eliminar: <input type="text" name="idp"
                                                                                onkeypress="return validarn(event)"></h3>
                            <br>
                            <h3 style="text-align:center" ;> <input class="button-agregar" name="Botón" type="submit"
                                                                    value="Eliminar" onclick=""></h3>

                            </form>
                            <form method="post" action="EliminarUsuario">
                                <h3 >
                                    Introduce el ID del Usuario a Eliminar: <input type="text" name="idu"
                                                                                   onkeypress="return validarn(event)"></h3>
                        </article>
                    </section>

                    <section>
                        <article>
                            <h1 style="text-align:center" ;> <input class="button-agregar" name="Botón" type="submit"
                                                                    value="Eliminar" onclick=""></h1>
                            <h3 style="text-align:center" ;>

                            </h3>
                        </article>
                    </section>
                </form>
            </div>

            <!-- Fin Eliminar -->
            <hr color="#121212" size=6 width="1090"> 
            <br>
            <!-- Inicio Revisar -->
            <div class="tablas">
                <section>
                    <article>
                        <h2 style="text-align:center" ;>Registro Alimento/Usuario</h2>
                        <h3 style="text-align:justify" ;>
                            Selecciona que registro quieres checar.</h3>
                    </article>
                </section>
                <section>
                    <article  style="text-align:center";>

                        <div class="botones">
                            <a href="ConsultaUsuarios.jsp"> <button type="button"   onclick=""><span class="icon-home3"></span> usuarios </button>
                            </a>

                        </div>
                    </article>
                </section>

            </div>
            <hr color="#121212" size=6 width="1090"> 


            </section>
        </div>   


        <script>
            // Get the modal
            var modal = document.getElementById('id01');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>


        <script>
            window.onscroll = function () {
                myFunction()
            };

            var navbar = document.getElementById("navbar");
            var sticky = navbar.offsetTop;

            function myFunction() {
                if (window.pageYOffset >= sticky) {
                    navbar.classList.add("sticky")
                } else {
                    navbar.classList.remove("sticky");
                }
            }
        </script>


    </body>
</html>
