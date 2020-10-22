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
    <!-- Checkout Forms-->
    <section class="checkout">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <ul class="nav nav-pills">
              <li class="nav-item"><a href="checkout1.html" class="nav-link">Address</a></li>
              <li class="nav-item"><a href="checkout2.html" class="nav-link">Order Date </a></li>
              <li class="nav-item"><a href="checkout3.html" class="nav-link active">Payment Method </a></li>
              <li class="nav-item"><a href="#" class="nav-link disabled">Order Review</a></li>
            </ul>
            <div class="tab-content">
              <div id="payment-method" class="tab-block">
                <div id="accordion" role="tablist" aria-multiselectable="true">
                  <div class="card">
                    <div id="headingOne" role="tab" class="card-header">
                      <h6><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Credit Card</a></h6>
                    </div>
                    <div id="collapseOne" role="tabpanel" aria-labelledby="headingOne" class="collapse show">
                      <div class="card-body">
                        <form action="#">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <label for="card-name" class="form-label">Name on Card</label>
                              <input type="text" name="card-name" placeholder="Name on card" id="card-name" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                              <label for="card-number" class="form-label">Card Number</label>
                              <input type="text" name="card-number" placeholder="Card number" id="card-number" class="form-control">
                            </div>
                            <div class="form-group col-md-4">
                              <label for="expiry-date" class="form-label">Expiry Date</label>
                              <input type="text" name="expiry-date" placeholder="MM/YY" id="expiry-date" class="form-control">
                            </div>
                            <div class="form-group col-md-4">
                              <label for="cvv" class="form-label">CVC/CVV</label>
                              <input type="text" name="cvv" placeholder="123" id="cvv" class="form-control">
                            </div>
                            <div class="form-group col-md-4">
                              <label for="zip" class="form-label">ZIP</label>
                              <input type="text" name="zip" placeholder="123" id="zip" class="form-control">
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingTwo" role="tab" class="card-header">
                      <h6><a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="collapsed">Paypal</a></h6>
                    </div>
                    <div id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo" class="collapse">
                      <div class="card-body">
                        <input type="radio" name="shippping" id="payment-method-1" class="radio-template">
                        <label for="payment-method-1"><strong>Continue with Paypal</strong><br><span class="label-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></label>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingThree" role="tab" class="card-header">
                      <h6><a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed">Pay on delivery</a></h6>
                    </div>
                    <div id="collapseThree" role="tabpanel" aria-labelledby="headingThree" class="collapse">
                      <div class="card-body">
                        <input type="radio" name="shippping" id="payment-method-2" class="radio-template">
                        <label for="payment-method-2"><strong>Pay on Delivery</strong><br><span class="label-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="CTAs d-flex justify-content-between flex-column flex-lg-row"><a href="checkout2.jsp" class="btn btn-template-outlined wide prev"><i class="fa fa-angle-left"></i>Back to delivery method</a><a href="checkout4.jsp" class="btn btn-template wide next">Continue to order review<i class="fa fa-angle-right"></i></a></div>
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