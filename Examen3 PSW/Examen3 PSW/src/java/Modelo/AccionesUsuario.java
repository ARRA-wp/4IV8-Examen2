/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rafael
 */
public class AccionesUsuario {
    
    
     public static int registrarUsuario(Usuario e){
        int estatus = 0;
        try{
            Connection con = Conexion.getConection();
            String q = "insert into msuario(nom_usu, con_usu, email_usu, id_tipo) "
                    + "values(?,?,?,?)";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
            ps.setInt(4, e.getTusuario());
            
            estatus = ps.executeUpdate();
              
            System.out.println("Registro de usuario exitoso");
            con.close();
        }catch(Exception ed){
            System.out.println("Error al registar al usuario");
            System.out.println(ed.getMessage());
        
        }
        return estatus;
        
    }
     
     //Actualizar Usuario
    
    public static int actualizarUsuario(Usuario e){
        int estatus = 0;
        try{
            Connection con = Conexion.getConection();
            String q = "update msuario set nom_usu = ?, con_usu = ?,"
                    + "email_usu = ? "
                    + " where id_usu = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
         
            ps.setInt(4, e.getId());
            
            estatus = ps.executeUpdate();
            System.out.println("Actualizacion del Usuario exitosa");
            con.close();
        }catch(Exception ed){
            System.out.println("Error al actualizar al usuario");
            System.out.println(ed.getMessage());
        
        }
        return estatus;
        
    }
    
    //Borrar usuario
    
     public static int borrarUsuario(int id){
        int estatus = 0;
        try{
            Connection con = Conexion.getConection();
            String q = "delete from msuario where id_usu = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            estatus = ps.executeUpdate();
            System.out.println("Eliminacion del usuario exitoso");
            con.close();
        }catch(Exception ed){
            System.out.println("Error al borrar al usuario");
            System.out.println(ed.getMessage());
        
        }
        return estatus;
        
    }
    
     
     //Buscar detenidamente un usuario
     
     public static Usuario buscarUsuarioById(int id){
        Usuario e = new Usuario();
        try{
            Connection con = Conexion.getConection();
            String q = "select * from msuario where id_usu = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                e.setId(rs.getInt(1));
                e.setNombre(rs.getString(2));
                e.setPassword(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setTusuario(rs.getInt(5));
               
            }
            System.out.println("Se encontro al usuario");
            con.close();
        }catch(Exception ed){
            System.out.println("Error al buscar al usuario");
            System.out.println(ed.getMessage());
        
        }
        return e;
        
    }
     
     //Consultar a todos los usuarios
     
     public static List<Usuario> getAllUsuario(){
        List<Usuario> lista = new ArrayList<Usuario>();
        
        try{
            Connection con = Conexion.getConection();
            String q = "select * from msuario";
            
            PreparedStatement ps = con.prepareStatement(q);

            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Usuario e = new Usuario();
                e.setId(rs.getInt(1));
                e.setNombre(rs.getString(2));
                e.setPassword(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setTusuario(rs.getInt(5));
               
                lista.add(e);
            }
            System.out.println("Se encontro a los usuario");
            con.close();
        }catch(Exception ed){
            System.out.println("Error al buscar a los Usuario");
            System.out.println(ed.getMessage());
        
        }
        return lista;
        
    }
    
}
