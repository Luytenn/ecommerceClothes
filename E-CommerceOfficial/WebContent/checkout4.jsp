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
    <!-- Checout Forms-->
    <section class="checkout">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <ul class="nav nav-pills">
              <li class="nav-item"><a href="checkout1.html" class="nav-link">Address</a></li>
              <li class="nav-item"><a href="checkout2.html" class="nav-link">Order Date </a></li>
              <li class="nav-item"><a href="checkout3.html" class="nav-link">Payment Method </a></li>
              <li class="nav-item"><a href="checkout4.html" class="nav-link active">Order Review</a></li>
            </ul>
            <div class="tab-content">
              <div id="order-review" class="tab-block">
                <div class="cart">
                  <div class="cart-holder">
                    <div class="basket-header">
                      <div class="row">
                        <div class="col-6">Product</div>
                        <div class="col-2">Price</div>
                        <div class="col-2">Quantity</div>
                        <div class="col-2">Unit Price</div>
                      </div>
                    </div>
                    <div class="basket-body">
                      <!-- Product-->
                      <div class="item row d-flex align-items-center">
                        <div class="col-6">
                          <div class="d-flex align-items-center"><img src="../../../d19m59y37dris4.cloudfront.net/hub/1-4-2/img/shirt.png" alt="..." class="img-fluid">
                            <div class="title"><a href="detail.html">
                                <h6>Loose Oversized Shirt</h6><span class="text-muted">Size: Large</span></a></div>
                          </div>
                        </div>
                        <div class="col-2"><span>$65.00</span></div>
                        <div class="col-2"><span>4</span></div>
                        <div class="col-2"><span>$325.00</span></div>
                      </div>
                      <!-- Product-->
                      <div class="item row d-flex align-items-center">
                        <div class="col-6">
                          <div class="d-flex align-items-center"><img src="../../../d19m59y37dris4.cloudfront.net/hub/1-4-2/img/shirt-black.png" alt="..." class="img-fluid">
                            <div class="title"><a href="detail.html">
                                <h6>Loose Oversized Shirt</h6><span class="text-muted">Size: Medium</span></a></div>
                          </div>
                        </div>
                        <div class="col-2"><span>$65.00</span></div>
                        <div class="col-2"><span>4</span></div>
                        <div class="col-2"><span>$325.00</span></div>
                      </div>
                    </div>
                  </div>
                  <div class="total row"><span class="col-md-10 col-2">Total</span><span class="col-md-2 col-10 text-primary">$400.00</span></div>
                </div>
                <div class="CTAs d-flex justify-content-between flex-column flex-lg-row"><a href="checkout3.jsp" class="btn btn-template-outlined wide prev"><i class="fa fa-angle-left"></i>Back to payment method</a><a href="checkout5.html" class="btn btn-template wide next">Place an order<i class="fa fa-angle-right"></i></a></div>
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