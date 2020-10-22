<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hub - Bootstrap 4 Ecommerce Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">


	
     <%@include file="../WEB-INF/css.jsp" %>
    
    
    <script src="js/modernizr.custom.79639.js"></script>
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

	
<!-- Mirrored from demo.bootstrapious.com/hub/1-4-2/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 30 Jan 2020 17:03:08 GMT -->




    
  </head>
  <body>
    <!-- navbar-->
   <%@include file="../WEB-INF/navbar.jsp" %>
    <!-- Hero Section-->
    <section class="hero hero-page gray-bg padding-small">
      <div class="container">
        <div class="row d-flex">
          <div class="col-lg-9 order-2 order-lg-1">
            <h1>Shopping cart</h1><p class="lead text-muted">You currently have 3 items in your shopping cart</p>
          </div>
          <div class="col-lg-3 text-right order-1 order-lg-2">
            <ul class="breadcrumb justify-content-lg-end">
              <li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
              <li class="breadcrumb-item active">Shopping cart</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- Shopping Cart Section-->
    <section class="shopping-cart">
      <div class="container">
        <div class="basket">
          <div class="basket-holder">
            <div class="basket-header">
              <div class="row">
                <div class="col-5">Product</div>
                <div class="col-2">Price</div>
                <div class="col-2">Quantity</div>
                <div class="col-2">Total</div>
                <div class="col-1 text-center">Remove</div>
              </div>
            </div>
            <div class="basket-body">
              <!-- Product-->
              
              
               <c:forEach items="${sessionScope.cart}" var="pro">
               
               
		              <div class="item">
		                <div class="row d-flex align-items-center">
		                  <div class="col-5">
		                    <div class="d-flex align-items-center"><img src="foto/${pro.p.img}" alt="..." class="img-fluid">
		                      <div class="title"><a href="detail.html">
		                          <h5>${pro.p.nombre}</h5><span class="text-muted">Size: Large</span></a></div>
		                    </div>
		                  </div>
		                  <div class="col-2"><span>${pro.p.precio}</span></div>
		                  <div class="col-2">
		                    <div class="d-flex align-items-center">
		                      <div class="quantity d-flex align-items-center">
		                        <div class="dec-btn">-</div>
		                        <input type="text" value="${pro.cantidad}" class="quantity-no">
		                        <div class="inc-btn">+</div>
		                      </div>
		                    </div>
		                  </div>
		                  <div class="col-2"><span>${pro.p.precio*pro.cantidad}</span></div>
		                  <div class="col-1 text-center"><a href="Cart?action=delete&id=${pro.p.webid}"><i class="delete fa fa-trash"></i></a></div>
		                </div>
		              </div>
		              
		              
              
                </c:forEach>
              <!-- Product-->
              
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="CTAs d-flex align-items-center justify-content-center justify-content-md-end flex-column flex-md-row"><a href="Category" class="btn btn-template-outlined wide">Continue Shopping</a><a href="#" class="btn btn-template wide">Update Cart</a></div>
      </div>
    </section>
    <!-- Order Details Section-->
    <section class="order-details no-padding-top"> 
      <div class="container">
        <div class="row">                         
          <div class="col-lg-6">
            <div class="block">
              <div class="block-header">
                <h6 class="text-uppercase">Coupon Code</h6>
              </div>
              <div class="block-body">
                <p>If you have a coupon code, please enter it in the box below</p>
                <form action="#">
                  <div class="form-group d-flex">
                    <input type="text" name="coupon">
                    <button type="submit" class="cart-black-button">Apply coupon</button>
                  </div>
                </form>
              </div>
            </div>
            <div class="block">
              <div class="block-header">
                <h6 class="text-uppercase">Instructions for seller</h6>
              </div>
              <div class="block-body">
                <p>If you have some information for the seller you can leave them in the box below</p>
                <form action="#">
                  <textarea name="instructions"></textarea>
                </form>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="block">
              <div class="block-header">
                <h6 class="text-uppercase">Order Summary</h6>
              </div>
              <div class="block-body">
                <p>Shipping and additional costs are calculated based on values you have entered.</p>
                <ul class="order-menu list-unstyled">
                  <li class="d-flex justify-content-between"><span>Order Subtotal </span><strong>$390.00</strong></li>
                  <li class="d-flex justify-content-between"><span>Shipping and handling</span><strong>$10.00</strong></li>
                  <li class="d-flex justify-content-between"><span>Total</span><strong class="text-primary price-total">$400.00</strong></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-12 text-center CTAs"><a href="checkout1.jsp" class="btn btn-template btn-lg wide">Proceed to checkout<i class="fa fa-long-arrow-right"></i></a></div>
        </div>
      </div>
    </section>
    
     <%@include file="../WEB-INF/footer.jsp" %>
    
   
   
   	 <%@include file="../WEB-INF/js.jsp" %>
   
   
   

</body>
</html>