/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.*;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Rafael
 */
public class ServletControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       /*
        String accion=request.getParameter("accion");
        if(accion.equals("añadirCarrito")){
            this.añadirCarrito(request,response);
        
        }
        */
       añadirCarrito(request,response);
        
        
    }
    
    private void añadirCarrito(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
    
        HttpSession sesion = request.getSession();
        ArrayList<DetalleVenta> carrito;
        if(sesion.getAttribute("carrito")==null){
            //Me crea un carrito si entro y no tiene carrito
            carrito = new ArrayList<DetalleVenta>();
            
        } else {
            //Me inicializa el carrito
            carrito = (ArrayList<DetalleVenta>) sesion.getAttribute("carrito");
        
        }
        
        Producto p = ProductoDB.obtenerProducto(Integer.parseInt(request.getParameter("txtCodigo")));
        
        DetalleVenta d = new DetalleVenta();
        
        d.setCodigoProducto(Integer.parseInt(request.getParameter("txtCodigo")));
        d.setProducto(p);
        d.setCantidad(Double.parseDouble(request.getParameter("txtCantidad")));
        double subTotal = p.getPrecio() * d.getCantidad();
        if(subTotal>100){
        
            d.setDescuento(subTotal*0.05);
            
        }else{
            
            d.setDescuento(0);
        
        }
        int indice = -1;
        
        for(int i=0;i<carrito.size();i++){
            DetalleVenta det = carrito.get(i);
            if(det.getCodigoProducto() == p.getCodigoProducto()){
            indice=i;
            break;
            }
        
        }
        if(indice==-1){
        carrito.add(d);
        }
          sesion.setAttribute("carrito",carrito);
        response.sendRedirect("registrarVenta.jsp");
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
