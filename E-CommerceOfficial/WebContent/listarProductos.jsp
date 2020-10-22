<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="cad.ProductoCad"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Producto"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page session="true" %>

	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
      crossorigin="anonymous"
    />
 <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css"
      integrity="sha256-x8PYmLKD83R9T/sYmJn1j3is/chhJdySyhet/JuHnfY="
      crossorigin="anonymous"
    />
    
    <!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/dashboard.css" rel="stylesheet">
    
<link rel="stylesheet" href="css/style.css" />
</head>
<body>


	
	<%@include file="../WEB-INF/Menu_Dashboard.jsp" %>
	
	
	
	
        <!-- CRUD -->  <!-- CRUD -->  <!-- CRUD -->  <!-- CRUD -->  <!-- CRUD -->
    	
       
       
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar menu -->
                
                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                    <h1 style="margin-top: 10px">Lista de Productos</h1>
                  		<input class="btn btn-primary mb-2" type="submit" name="btn_añadir" value="Añadir Nuevo">	
                      <div class="table-responsive">
                        <table class="table table-dark"	>
                            <thead>
                              <tr>
                                <th>ID</th>
                                <th>Descripcion</th>
                                <th>Categoria</th>
                                <th>Precio</th>
                               	
                                	
                                
                               
                              </tr>
                            </thead>
                          
                            <tbody>
                            
                            <%! ArrayList<Producto> datos = ProductoCad.listarProductosRecomendados(); %>
            

                               <c:forEach var="p" items="<%= datos %>">
                                 <tr>                                 	
             							<td><c:out value="${p.webid}" /></td>
             							<td><a href="actualizarProducto.jsp"><c:out value="${p.nombre}" /></a></td>
             							<td><c:out value="${p.precio}" /></td>
             							<td> <c:out value="${p.stock}"/> </td>
             							<td><a href=""> <span data-feather="trash"></span> </a></td>
                                 </tr>
                                 
                               
                                 
									</c:forEach>

                        
                            </tbody>
                        </table>

                      </div>


                </main>
            </div>
        </div>
        <!-- Footer scripts, and functions -->
     
      
          
           <!-- CRUD -->  <!-- CRUD -->  <!-- CRUD --> <!-- CRUD -->  <!-- CRUD -->
        
    </div>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
      integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.bundle.min.js"
      integrity="sha256-OUFW7hFO0/r5aEGTQOz9F/aXQOt+TwqI1Z4fbVvww04="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-slimScroll/1.3.8/jquery.slimscroll.min.js"
      integrity="sha256-qE/6vdSYzQu9lgosKxhFplETvWvqAAlmAuR+yPh/0SI="
      crossorigin="anonymous"
    ></script>
    <script src="js/script.js"></script>
    
    <!-- Icons -->
	<script src="js/feather.min.js"></script>
	<script>
	    feather.replace()
	</script>
	
	
	
</body>
</html>




       
