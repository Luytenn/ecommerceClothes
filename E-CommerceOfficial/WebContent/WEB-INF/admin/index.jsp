<%-- 
    Document   : index
    Created on : 12-Febrero-2018, 10:24:59
    Author     : Christian Camilo Gámez
--%>

<%@page import="beans.SubCategoria"%>
<%@page import="beans.Marca"%>
<%@page import="cad.MarcaCad"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Categoria"%>
<%@page import="cad.CategoriaCad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Gestión Productos |  Crea e-Commerce JAVA EE con pagos Online Paypal y Payu</title>
     <%@include file = "../../WEB-INF/css.jsp" %>
</head><!--/head-->

<body>
    <%@include file = "../../WEB-INF/navbar.jsp" %>

	<div class="container">
                <div class="row">
                                    <div class="col-sm-10 clearfix">
                                     ${mensaje}
                                     <h1>Gestionar Productos</h3>
                                     <br/>
                                     <br/>
                                     <form action ="ControlProducto" enctype="multipart/form-data" method="post">
                                     
                                     <div class="form-one">
                                         Nombre:<br/>
                                         <input type="text" name="nombre" placeholder="Nombre producto" value="" required />
                                         <br/>
                                         Precio:<br/>
                                         <input type="number" name="precio" placeholder="Precio" value="0" min="0"/>
                                         <br/>
                                         Precio promo:</br>
                                         <input type="number" name="precionuevo" placeholder="Precio" value="0" min="0"/>
                                         <br/>
                                         Stock:<br/>
                                         <input type="number" name="cantidad" placeholder="cantidad" value="1" min="1"/>
                                         <br/>
                                         <br/>
                                          Categorìa:<br/>
                                          <select name="categoria">
                                             <option>Seleccionar categoria</option>
                                             <%! int codigo;%>
                                             <% for(Categoria c:CategoriaCad.listarCategorias()){ 
                                                 codigo = c.getCodigo();
                                             %>
                                             
                                             <option  value="<%= codigo %>"><%= c.getNombre() %></option>
                                             <% } %>
                                         </select>
                                          <br/>
                                          
                                           <br/>
                                         SubCategoría:<br/>
                                         <select name="subCategoria">
                                             <option>Seleccionar SubCategoria</option>
                                             <% for(Categoria subc : CategoriaCad.listarTodoSubCategorias()) { %>
                                             <option value="<%= subc.getCodigo() %>"><%= subc.getNombre() %></option>
                                             <% } %>
                                         </select>
                                         <br/>
                                          
                                         Descripciòn:</br>
                                         <textarea name="descripcion" rows="4" cols="20" placeholder="Descripciòn" required>
                                            </textarea>
                                         <br/>
                                         Nuevo?:<input type="checkbox" name="nuevo" value="ON" checked="checked"/>
                                         Recomendado?:<input type="checkbox" name="recomendado" value="ON" />
                                        
                                         Visible?:<input type="checkbox" name="visible" value="ON" checked="checked"/>
                                         </br>
                                         </br>
                                         Seleccionar imagen:
                                         <input type="file" name="imagen" value="Seleccionar una imagen" />
                                        
                                          </br>
                                         <input class="btn btn-success" name="accion" type="submit" value="Registrar" />
                                         <input class="btn btn-default" name="accion" type="submit" value="Consultar" />
                                         <input class="btn btn-warning"  name="accion" type="submit" value="Actualizar" />
                                         <input class="btn btn-danger" name="accion" type="submit" value="Borrar" />
                                         
                                         
                                     </div>
                                       </form>
                                        </div>
                              </div>
            </div>
                                    <%@include file="../../WEB-INF/footer.jsp" %>
	

                                    <%@include file="../../WEB-INF/js.jsp" %>
   
</body>
</html>
