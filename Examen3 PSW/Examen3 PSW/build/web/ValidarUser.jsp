<%-- 
    Document   : ValidarUser
    Created on : 5/06/2021, 08:55:26 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validar Usuario</title>
    </head>
    <body>
        
        <%
            
            try{
                
                //aqui ya puedo incorporar codigo java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String url, userName, password, driver;
        
        url = "jdbc:mysql://us-cdbr-east-04.cleardb.com/heroku_277b2a02de4d329";
        userName = "b1edfe27e31beb";
        password = "30e34afa";
        
        driver = "com.mysql.jdbc.Driver";
            
            //Parametros
    String userid = request.getParameter("nombre");    
    String pwd = request.getParameter("contraseña");
    
    //Coneccion
    Class.forName(driver);
    con = DriverManager.getConnection(url, userName, password);
    //Fin coneccion
    
    
    Statement st = con.createStatement();
   
    rs = st.executeQuery("select * from msuario where nom_usu='" + userid + "' and con_usu='" + pwd + "' and id_tipo like '1'");
    if (rs.next()) {
        //Redireccion
        //session.setAttribute("userid", userid);
         response.sendRedirect("index.html");
         %>
         <h1>Correcto :3</h1>
         <a href="index.html" ></a>
         <%
    } else {

%>

<%
    
    rs = st.executeQuery("select * from msuario where nom_usu='" + userid + "' and con_usu='" + pwd + "' and id_tipo=2");
    if (rs.next()) {
       response.sendRedirect("index2.jsp");
    } else {
    
        %>
<h1>Incorrecto :c</h1>
<a href="index.html" ></a>
<%
    
    }
    }
}catch(SQLException ed){
System.out.println(ed.getMessage());

        %>
        <h1>Error de conección :C</h1>
        <a href="index.html" ></a>
        <%
            }
%>
        
    </body>
</html>
