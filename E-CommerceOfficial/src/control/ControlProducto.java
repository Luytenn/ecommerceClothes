/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import cad.ProductoCad;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import beans.Producto;

/**
 *
 * @author Voyager
 */
@WebServlet("/ControlProducto")
public class ControlProducto extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControlProducto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControlProducto at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        
         
        recibirDatos(request);
            
          String url = request.getAttribute("imagen").toString();
          
          String nombre = request.getAttribute("nombre").toString();
          float precio = Float.parseFloat(request.getAttribute("precio").toString());
          float precion = Float.parseFloat(request.getAttribute("precionuevo").toString());
          int cantidad = Integer.parseInt(request.getAttribute("cantidad").toString());
          int subCategoria  = Integer.parseInt(request.getAttribute("subCategoria").toString());
          int categoria = Integer.parseInt(request.getAttribute("categoria").toString());
          
          String descripcion = request.getAttribute("descripcion").toString();
          
          boolean nuevo,recomendado,visible;
          try{
           nuevo=request.getAttribute("nuevo").toString().equalsIgnoreCase("on");
          }catch(Exception e){
              nuevo = false;
          }
          try{
           recomendado= request.getAttribute("recomendado").toString().equalsIgnoreCase("on");
          }catch(Exception e){
              recomendado = false;
          }
          try{
           visible = request.getAttribute("visible").toString().equalsIgnoreCase("on");
         // response.sendRedirect("foto/"+url);
          }catch(Exception e){
              visible = false;
          }
          
          String accion = request.getAttribute("accion").toString();
          
           Producto p = new Producto();
           
           p.setNombre(nombre);
           p.setPrecio(precio);
           p.setPrecionuevo(precion);
           p.setStock(cantidad);
           p.setCodigo_subCategoria(subCategoria);
           p.setCodigo_categoria(categoria);
           p.setDescripcion(descripcion);
           p.setNuevo(nuevo);
           p.setRecomendado(recomendado);
           p.setVisible(visible);
           p.setImg(url);
           
           if(accion.equalsIgnoreCase("registrar")){
               
               if(ProductoCad.registrarProducto(p)){
                   request.setAttribute("mensaje", "<p style='color:green'>producto registrado</p>");
                  
                   
               }else{
                  request.setAttribute("mensaje", "<p style='color:red'>producto no registrado</p>");
                  
               }
               
           }else{
               request.setAttribute("mensaje", "accion desconocida");
           }
            request.getRequestDispatcher("Admin").forward(request, response); 
        
    }
    
    
    private void recibirDatos(HttpServletRequest request){
        
        try {
            FileItemFactory fileFactory  = new DiskFileItemFactory();
            
            ServletFileUpload servletUpload = new ServletFileUpload(fileFactory);
            String nombre = " ";
            List items=servletUpload.parseRequest(request);
            for(int i=0;items.size()>i;i++){
                
                FileItem item = (FileItem)items.get(i);
                if(!item.isFormField()){
                    String ruta = getServletContext().getRealPath("/")+"foto/";
                    SimpleDateFormat sdf = new SimpleDateFormat("ddMyyyyhhmmss");
                    String fecha = sdf.format(new Date());
                    nombre = fecha+new Random().nextLong()+item.getName();
                    String nuevonombre = ruta+nombre;
                    File folder = new File(ruta);
                    if(!folder.exists()){
                        folder.mkdirs();
                    }
                    File imagen = new File(nuevonombre);
                    if(item.getContentType().contains("image")){
                        item.write(imagen);
                        request.setAttribute(item.getFieldName(), nombre);
                       
                    }
                }else{
                    request.setAttribute(item.getFieldName(), item.getString());
                }
            }
        } catch (FileUploadException ex) {
            request.setAttribute("subida", false);
        } catch (Exception ex) {
            request.setAttribute("subida", false);
        }
        
        
        
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
