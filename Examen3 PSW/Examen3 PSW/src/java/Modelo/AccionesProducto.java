/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import Utils.Conexion;

/**
 *
 * @author Rafael
 */
public class AccionesProducto {
    
    
     public static int borrarProducto(int id){
        int estatus = 0;
        try{
            Connection con = Conexion.getConection();
            String q = "delete from producto where codigoProducto = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            estatus = ps.executeUpdate();
            System.out.println("Eliminacion del Producto exitoso");
            con.close();
        }catch(Exception ed){
            System.out.println("Error al borrar al usuario");
            System.out.println(ed.getMessage());
        
        }
        return estatus;
        
    }
    
}
