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
   
   
   
    <%@include file="../WEB-INF/css.jsp" %>
   
   
    <script src="../../../d19m59y37dris4.cloudfront.net/hub/1-4-2/js/modernizr.custom.79639.js"></script>

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
              <li class="nav-item"><a href="checkout1.html" class="nav-link active">Address</a></li>
              <li class="nav-item"><a href="#" class="nav-link disabled">Order Date </a></li>
              <li class="nav-item"><a href="#" class="nav-link disabled">Payment Method </a></li>
              <li class="nav-item"><a href="#" class="nav-link disabled">Order Review</a></li>
            </ul>
            <div class="tab-content">
              <div id="address" class="active tab-block">
                <form action="#">
                  <!-- Invoice Address-->
                  <div class="block-header mb-5">
                    <h6>Address</h6>
                  </div>
                  <div class="row">
                    <div class="form-group col-md-6">
                      <label for="firstname" class="form-label">First Name</label>
                      <input id="firstname" type="text" name="first-name" placeholder="Enter you first name" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="lastname" class="form-label">Last Name</label>
                      <input id="lastname" type="text" name="last-name" placeholder="Enter your last name" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="email" class="form-label">Email Address</label>
                      <input id="email" type="email" name="email" placeholder="enter your email address" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="street" class="form-label">Street</label>
                      <input id="street" type="text" name="address" placeholder="Your street name" class="form-control">
                    </div>
                    <div class="form-group col-md-3">
                      <label for="city" class="form-label">City</label>
                      <input id="city" type="text" name="city" placeholder="Your city" class="form-control">
                    </div>
                    <div class="form-group col-md-3">
                      <label for="zip" class="form-label">ZIP</label>
                      <input id="zip" type="text" name="zip" placeholder="ZIP code" class="form-control">
                    </div>
                    <div class="form-group col-md-3">
                      <label for="state" class="form-label">State</label>
                      <input id="state" type="text" name="state" placeholder="Your state" class="form-control">
                    </div>
                    <div class="form-group col-md-3">
                      <label for="country" class="form-label">Country</label>
                      <input id="country" type="text" name="country" placeholder="Your country" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="phone-number" class="form-label">Phone Number</label>
                      <input id="phone-number" type="tel" name="phone-number" placeholder="Your phone number" class="form-control">
                    </div>

               
                  </div>
                  <!-- /Invoice Address-->
                  
                  <div class="CTAs d-flex justify-content-between flex-column flex-lg-row"><a href="cart.html" class="btn btn-template-outlined wide prev"> <i class="fa fa-angle-left"></i>Back to basket</a><a href="checkout2.jsp" class="btn btn-template wide next">Choose delivery method<i class="fa fa-angle-right"></i></a></div>
                </form>
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