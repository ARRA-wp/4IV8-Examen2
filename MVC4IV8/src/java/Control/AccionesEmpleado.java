/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author demon
 */
package Control;


import java.sql.*;
import java.util.*;

public class AccionesEmpleado {
    /*
    CRUD
    
    Registrarse     ->  Empleado e
    Actualizar los datos  -> Empleado e
    Buscar su registro por id    ->  int id
    Buscar a todos los trabajadores  ->  ???
    Dar de baja a un trabajador   -> int id
    Calcular los intereses del pago 
    Verificar el usuario (string user, string pass)
    
    */
    
    public static int RegistrarEmpleado(Empleado e){
        int estatus = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "insert into empleados(nom_usu, pass_usu) "
                    + "values(?,?)";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //hago uso de los getter y setter
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            
            
            
            estatus = ps.executeUpdate();
            System.out.println("Nuevo empleado Registrado");
            con.close();
        
        }catch(Exception ex){
            System.out.println("Registro no exitoso en la tabla empleado");
            System.out.println(ex.getMessage());
        
        }
        return estatus;
    }
    
    public static int ActualizarEmpleado(Empleado e){
        int estatus = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "update empleados set nom_usu = ?, pass_usu = ?, "
                    + "where id_usu = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //hago uso de los getter y setter
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            ps.setInt(3, e.getId());
            
            estatus = ps.executeUpdate();
            System.out.println("Empleado Actualizado");
            con.close();
        
        }catch(Exception ex){
            System.out.println("No se pudo actualizar el registro del empleado");
            System.out.println(ex.getMessage());
        
        }
        return estatus;
    }
    
    public static int EliminarEmpleado(int id){
        int estatus = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "delete from empleados where id_usu = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //hago uso de los getter y setter
            ps.setInt(1, id);
            
            
            estatus = ps.executeUpdate();
            System.out.println("Empleado dado de baja");
            con.close();
        
        }catch(Exception ex){
            System.out.println("No se pudo eliminar al empleado");
            System.out.println(ex.getMessage());
        
        }
        return estatus;
    }
    
    public static Empleado BuscarEmpleadoById(int id){
        Empleado e = new Empleado();
        try{
            Connection con = Conexion.getConnection();
            String q = "select * from empleados where id_usu = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //hago uso de los getter y setter
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            //obtener los datos de la tabla
            if(rs.next()){
                e.setId(rs.getInt(1));
                e.setNombre(rs.getString(2));
                e.setPassword(rs.getString(3));
            }
            
            System.out.println("Empleado encontrado");
            con.close();
        
        }catch(Exception ex){
            System.out.println("No existe registro del empleado");
            System.out.println(ex.getMessage());
        
        }
        return e;
    }
    
    
    public static List<Empleado> getAllEmpleados(){
        List<Empleado> lista = new ArrayList<Empleado>();
        Empleado e = new Empleado();
        
        System.out.println(e);
        try{
            Connection con = Conexion.getConnection();
            String q = "select * from empleados";
            
            PreparedStatement ps = con.prepareStatement(q);
                        
            ResultSet rs = ps.executeQuery();
            //obtener los datos de la tabla
            while(rs.next()){
                
                e.setId(rs.getInt(1));
                e.setNombre(rs.getString(2));
                e.setPassword(rs.getString(3));
                lista.add(e);
            }
            
            System.out.println("Consulta de la tabla empleados");
            con.close();
        
        }catch(Exception ex){
            System.out.println("No existe registro del empleado");
            System.out.println(ex.getMessage());
        
        }
        return lista;
    }
    
    
}
