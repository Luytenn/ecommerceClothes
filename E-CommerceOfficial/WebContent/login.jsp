<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.daoAdministrador"%>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from demo.bootstrapious.com/hub/1-4-2/customer-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 30 Jan 2020 17:00:42 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hub - Bootstrap 4 Ecommerce Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
     <%@include file="../WEB-INF/css.jsp" %>
    
    
    <script src="js/modernizr.custom.79639.js"></script>
 
  </head>
  <body>
   
   	 <%@include file="../WEB-INF/navbar.jsp" %>
   
    <!-- Hero Section-->
    <section class="hero hero-page gray-bg padding-small">
      <div class="container">
        <div class="row d-flex">
          <div class="col-lg-9 order-2 order-lg-1">
            <h1>Customer zone</h1>
          </div>
          <div class="col-lg-3 text-right order-1 order-lg-2">
            <ul class="breadcrumb justify-content-lg-end">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Customer zone</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- text page-->
    <section class="padding-small">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="block">
              <div class="block-header">
                <h5>Login</h5>
              </div>
              <div class="block-body"> 
                <p class="lead">Already our customer?</p>
                <p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                <hr>
                <form action="login" method="post">
               
                  <div class="form-group">
                    <label for="email" class="form-label">Usuario</label>
                    <input id="email" name="usuario" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="password" class="form-label">Password</label>
                    <input id="password" name="contraseña" type="password" class="form-control">
                  </div>
                  
                 
                  
                  <div class="form-group text-center">
                    <button type="submit" name="btnIngresar" class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                  </div>
                  
             
                  
                </form>
                <!-- CODIGO JAVA PARA CERRAR LA SESION -->
                 <%
               	if(request.getParameter("cerrar")!=null){
               		session.invalidate();
               		response.sendRedirect("login.jsp");
               	}
               %>
            
              <!-- CODIGO JAVA PARA CERRAR LA SESION -->
                
                
              </div>
            </div>
          </div>
          
          <div class="col-lg-6">
            <div class="block">
              <div class="block-header">
                <h5>New account</h5>
              </div>
              <div class="block-body"> 
                <p class="lead">Not our registered customer yet?</p>
                <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>
                <hr>
                <form action="https://demo.bootstrapious.com/hub/1-4-2/customer-orders.html" method="get">
                  <div class="form-group">
                    <label for="name" class="form-label">Name</label>
                    <input id="name" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="email" class="form-label">Email</label>
                    <input id="email" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="password" class="form-label">Password</label>
                    <input id="password" type="password" class="form-control">
                  </div>
                  <div class="form-group text-center">
                    <button type="submit" class="btn btn-primary"><i class="icon-profile"></i> Register                                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </section>
   
   <%@include file="../WEB-INF/footer.jsp" %>
   
  
    
     <%@include file="../WEB-INF/js.jsp" %>
    
 
    <!-- Main Template File-->
    <script src="../../../d19m59y37dris4.cloudfront.net/hub/1-4-2/js/front.js"></script>
  </body>

</html>