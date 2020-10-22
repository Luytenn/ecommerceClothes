<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hub - Bootstrap 4 Ecommerce Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    
  	
    <!-- DateTimePicker -->
  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
   <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">
    <!-- DateTimePicker -->
  
  
   
    <%@include file="../WEB-INF/css.jsp" %>
   
   
    <script src="../../../d19m59y37dris4.cloudfront.net/hub/1-4-2/js/modernizr.custom.79639.js"></script>
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
  
  	<%@include file="../WEB-INF/navbar.jsp" %>
  
    <!-- Hero Section-->
    <section class="hero hero-page gray-bg padding-small">
      <div class="container">
        <div class="row d-flex">
          <div class="col-lg-9 order-2 order-lg-1">
            <h1>Checkout</h1><p class="lead">You currently have 3 item(s) in your basket</p>
          </div>
          <div class="col-lg-3 text-right order-1 order-lg-2">
            <ul class="breadcrumb justify-content-lg-end">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Checkout</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- Checkout Forms-->
    <section class="checkout">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <ul class="nav nav-pills">
              <li class="nav-item"><a href="checkout1.html" class="nav-link">Address</a></li>
              <li class="nav-item"><a href="checkout2.html" class="nav-link active">Order Date</a></li>
              <li class="nav-item"><a href="#" class="nav-link disabled">Payment Method </a></li>
              <li class="nav-item"><a href="#" class="nav-link disabled">Order Review</a></li>
            </ul>
            <div class="tab-content">
              <div id="delivery-method" class="tab-block">
                <form action="#" class="shipping-form">
                 	<div class="container">
				            
				            <div class="form-group">
				                <p>Ingresa La fecha de envio:</p> <div class="input-group date" id="datetimepicker">
				                    <input type="text" class="form-control">
				                    <div class="input-group-addon input-group-prepend">
				                        <span class="input-group-text"><i class="fas fa-calendar"></i></span>
				                    </div>
				               
				            </div>
				        </div>
    				</div>
                </form>
                <div class="CTAs d-flex justify-content-between flex-column flex-lg-row"><a href="checkout1.jsp" class="btn btn-template-outlined wide prev"><i class="fa fa-angle-left"></i>Back to Address</a><a href="checkout3.jsp" class="btn btn-template wide next">Choose payment method<i class="fa fa-angle-right"></i></a></div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="block-body order-summary">
              <h6 class="text-uppercase">Order Summary</h6>
              <p>Shipping and additional costs are calculated based on values you have entered</p>
              <ul class="order-menu list-unstyled">
                <li class="d-flex justify-content-between"><span>Order Subtotal </span><strong>$390.00</strong></li>
                <li class="d-flex justify-content-between"><span>Shipping and handling</span><strong>$10.00</strong></li>
                <li class="d-flex justify-content-between"><span>Total</span><strong class="text-primary price-total">$400.00</strong></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
   
    
<%@include file="../WEB-INF/footer.jsp" %>
    
   
   
   	 <%@include file="../WEB-INF/js.jsp" %>

   	 
   	 
 </body>

</html>