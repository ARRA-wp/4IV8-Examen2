/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.sql.*;

/**
 *
 * @author Rafael
 */

public class Conexion {

    public static Connection getConection(){
        
        Connection cn=null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://us-cdbr-east-04.cleardb.com/heroku_277b2a02de4d329","b1edfe27e31beb","30e34afa");
            System.out.println("Conexion exitosa");
            
        }catch(Exception e){
        System.out.println("Error al conectar"+e);
        }
    return cn;
    }
    
    
    public static void main(String[] args) {
        Conexion.getConection();
    }
    
}
