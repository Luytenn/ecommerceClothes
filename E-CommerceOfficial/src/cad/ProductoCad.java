/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cad;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

import beans.Producto;

/**
 *
 * @author Voyager
 */
public class ProductoCad {
    
    public static boolean registrarProducto(Producto p){
        
    	
    	
        try {
            String sql = "{call sp_registrarProducto(?,?,?,?,?,?,?,?,?,?,?)}";
            Connection c = Conexion.conectar();
            CallableStatement sentencia = (CallableStatement) c.prepareCall(sql);
            sentencia.setString(1, p.getNombre());
            sentencia.setFloat(2, p.getPrecio());
            sentencia.setFloat(3, p.getPrecionuevo())	;
            sentencia.setInt(4, p.getStock());
            sentencia.setBoolean(5, p.isNuevo());
            sentencia.setBoolean(6, p.isRecomendado());
            sentencia.setBoolean(7, p.isVisible());
            sentencia.setString(8, p.getDescripcion());
            sentencia.setInt(9,p.getCodigo_categoria());
            sentencia.setInt(10, p.getCodigo_subCategoria());
 
            
            sentencia.setString(11, p.getImg());
            
            return sentencia.executeUpdate()>0;
            
        } catch (SQLException ex) {
            return false;
        }
    }
    
    
    public static ArrayList<Producto> listarProductosRecomendados(){
            
        try {
            String sql = "{call sp_listarProductosRecomendados()}";
            Connection c = Conexion.conectar();
            CallableStatement sentencia = (CallableStatement) c.prepareCall(sql);
            
            ResultSet res = sentencia.executeQuery();
            ArrayList<Producto> lista = new ArrayList<>();
            while(res.next()){
                Producto p = new Producto();
                p.setWebid(res.getInt("webid"));
                p.setNombre(res.getString("nombre"));
                p.setPrecio(res.getFloat("precio"));
                p.setImg(res.getString("img"));
                p.setNuevo(res.getBoolean("nuevo"));
                p.setStock(res.getInt("stock"));
                lista.add(p);
                
            
            }
   
                return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
     public static ArrayList<Producto> listarProductosPorCategoria(int cat){
            
        try {
            String sql = "{call sp_listarPorCategoria(?)}";
            Connection c = Conexion.conectar();
            CallableStatement sentencia = (CallableStatement) c.prepareCall(sql);
            sentencia.setInt(1,cat);
            ResultSet res = sentencia.executeQuery();
            ArrayList<Producto> lista = new ArrayList<>();
            while(res.next()){
                Producto p = new Producto();
                p.setWebid(res.getInt("webid"));
                p.setNombre(res.getString("nombre"));
                p.setPrecio(res.getFloat("precio"));
                p.setImg(res.getString("img"));
                p.setNuevo(res.getBoolean("nuevo"));
                p.setStock(res.getInt("stock"));
                lista.add(p);
                
            
            }
   
                return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
     
     
      public static ArrayList<Producto> listarProductosPorSubCategoria(int subcat){
            
        try {
            String sql = "{call sp_listarProductoPorSubCategoria(?)}";
            Connection c = Conexion.conectar();
            CallableStatement sentencia = (CallableStatement) c.prepareCall(sql);
            sentencia.setInt(1,subcat);
            ResultSet res = sentencia.executeQuery();
            ArrayList<Producto> lista = new ArrayList<>();
            while(res.next()){
                Producto p = new Producto();
                p.setWebid(res.getInt("webid"));
                p.setNombre(res.getString("nombre"));
                p.setPrecio(res.getFloat("precio"));
                p.setImg(res.getString("img"));
                p.setNuevo(res.getBoolean("nuevo"));
                p.setStock(res.getInt("stock"));
                lista.add(p);
                
            
            }
   
                return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
     
     
     public static Producto consultarProducto(int webid){
            
        try {
            String sql = "{call sp_consultarProducto(?)}";
            Connection c = Conexion.conectar();
            CallableStatement sentencia = (CallableStatement) c.prepareCall(sql);
            sentencia.setInt(1,webid);
            ResultSet res = sentencia.executeQuery();
            Producto p = null;
            if(res.next()){
                p = new Producto();
                p.setWebid(res.getInt("webid"));
                p.setNombre(res.getString("nombre"));
                p.setPrecio(res.getFloat("precio"));
                p.setImg(res.getString("img"));
                p.setNuevo(res.getBoolean("nuevo"));
                p.setStock(res.getInt("stock"));
                p.setDescripcion(res.getString("descripcion"));
                   
                
            
            }   
   
                return p;
        } catch (SQLException ex) {
            return null;
        }
    }
     
     public static void ActualizarProducto(int webid){
            
        try {
            String sql = "{call descontarProductoVendidos(?)}";
            Connection c = Conexion.conectar();
            CallableStatement sentencia = (CallableStatement) c.prepareCall(sql);
            sentencia.setInt(1,webid);
            sentencia.executeUpdate();
           
        } catch (SQLException ex) {
             System.out.println("error");
        }
    }
     
}
