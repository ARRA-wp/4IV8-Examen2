/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Rafael
 */
public class Usuario {
    
    private int id;
    private String nombre;
    private String password;
    private String email;
    private int tusuario;

    public Usuario() {
    }
    
    

    public Usuario(int id, String nombre, String password, String email, int tusuario) {
        this.id = id;
        this.nombre = nombre;
        this.password = password;
        this.email = email;
        this.tusuario = tusuario;
    }

    public int getTusuario() {
        return tusuario;
    }

    public void setTusuario(int tusuario) {
        this.tusuario = tusuario;
    }
    

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    
    
}
