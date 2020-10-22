   <!-- navbar-->
    <header class="header">
      <!-- Tob Bar-->
      <div class="top-bar">
        <div class="container-fluid">
          <div class="row d-flex align-items-center">
            <div class="col-lg-6 hidden-lg-down text-col">
              <ul class="list-inline">
                <li class="list-inline-item"><i class="icon-telephone"></i>020-800-456-747</li>
                <li class="list-inline-item">Free shipping on orders over $300</li>
              </ul>
            </div>
            <div class="col-lg-6 d-flex justify-content-end">
              <!-- Language Dropdown-->
              <div class="dropdown show"><a id="langsDropdown" href="https://example.com/" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><img src="https://d19m59y37dris4.cloudfront.net/hub/1-4-2/img/united-kingdom.svg" alt="english">English</a>
                <div aria-labelledby="langsDropdown" class="dropdown-menu"><a href="#" class="dropdown-item"><img src="https://d19m59y37dris4.cloudfront.net/hub/1-4-2/img/germany.svg" alt="german">German</a><a href="#" class="dropdown-item"> <img src="https://d19m59y37dris4.cloudfront.net/hub/1-4-2/img/france.svg" alt="french">French</a></div>
              </div>
              <!-- Currency Dropdown-->
              <div class="dropdown show"><a id="currencyDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle">USD</a>
                <div aria-labelledby="currencyDropdown" class="dropdown-menu"><a href="#" class="dropdown-item">EUR</a><a href="#" class="dropdown-item"> GBP</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <nav class="navbar navbar-expand-lg">
        <div class="search-area">
          <div class="search-area-inner d-flex align-items-center justify-content-center">
            <div class="close-btn"><i class="icon-close"></i></div>
            <form action="#">
              <div class="form-group">
                <input type="search" name="search" id="search" placeholder="What are you looking for?">
                <button type="submit" class="submit"><i class="icon-search"></i></button>
              </div>
            </form>
          </div>
        </div>
        <div class="container-fluid">  
          <!-- Navbar Header  --><a href="index-2.html" class="navbar-brand"><img src="img/logo.png" alt="..."></a>
          <button type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right"><i class="fa fa-bars"></i></button>
          <!-- Navbar Collapse -->
          <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="navbar-nav mx-auto">
              <li class="nav-item"><a href="index.jsp"   aria-expanded="false" class="nav-link">Home</a></li>
               
              <li class="nav-item"><a href="Category" class="nav-link">Shop</a>
              </li>
              <!-- Megamenu-->
              <li class="nav-item dropdown menu-large"><a href="#" class="nav-link">Template</a></li>
              <!-- /Megamenu end-->
              <!-- Multi level dropdown    -->
              <li class="nav-item dropdown"><a id="navbarDropdownMenuLink" href="http://example.com/"  aria-haspopup="true" aria-expanded="false" class="nav-link">Dropdown</a></li>
              <!-- Multi level dropdown end-->
              <li class="nav-item"><a href="blog.html" class="nav-link">Blog </a>
              </li>
              
 
			              
              <li class="nav-item"><a href="dashboard" class="nav-link">Dashboard</a>
              </li>
            </ul>
            <div class="right-col d-flex align-items-lg-center flex-column flex-lg-row">
              <!-- Search Button-->
              <div class="search"><i class="icon-search"></i></div>
              <!-- User Not Logged - link to login page-->
            
                <!--  <a  href="login.jsp">Ingresar</a> -->
                
              <!-- agregado hoy -->
                            
       <%
		       HttpSession sesion = request.getSession();
		   	String usuario = "";
		       
       %>
      
               
       <div class="user-link"  id="navbarSupportedContent">     	
        <ul class="navbar-nav ml-auto">	
          <li class="nav-item dropdown">
            <a
             	  class="nav-link dropdown-toggle p-0"
              		
		              aria-expanded="false"
              href="login.jsp"
              <%
              	if(sesion.getAttribute("usuario")!=null){
              		%>
              		 class="nav-link dropdown-toggle p-0"
              		 id="navbarDropdown"
		              role="button"
		              data-toggle="dropdown"
		              aria-haspopup="true"
		              aria-expanded="false"
              <% 
              	}
              %>
             
            >
              <i class="icon-profile" style=" text-transform: Arial; font-size :20px;">
               
               	 <% 
            	
            	
            	if(sesion.getAttribute("usuario")!=null){
            		usuario = String.valueOf(sesion.getAttribute("usuario"));
            		
            		out.print(usuario);
            		
            	}     	
            	
            %>
              </i>
                     
            </a>
            
            <% 
            
            if(sesion.getAttribute("usuario")!=null){
        		
        		%>
        	 <div class="dropdown-menu dropdown-menu-right"  aria-labelledby="navbarDropdown">
              
                       
        
            		  <a  href="login.jsp?cerrar=true" style="text-decoration: none;" >Cerrar Sesion</a>
              
              
            	</div>
        		<% 
        	}
            %>
           
          </li>
        </ul>
      </div>
          
            
            

              
              
               <!-- agregado hoy -->
            
              <!-- Cart Dropdown-->
              <div class="cart dropdown show"><a id="cartdetails" href="https://example.com/" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="icon-cart"></i>
                  <div class="cart-no">1</div></a><a href="cart.html" class="text-primary view-cart">View Cart</a>
                <div aria-labelledby="cartdetails" class="dropdown-menu">
                  <!-- cart item-->
                  <div class="dropdown-item cart-product">
                    <div class="d-flex align-items-center">
                      <div class="img"><img src="img/hoodie-man-1.png" alt="..." class="img-fluid"></div>
                      <div class="details d-flex justify-content-between">
                        <div class="text"> <a href="#"><strong>Heather Gray Hoodie</strong></a><small>Quantity: 1 </small><span class="price">$75.00 </span></div><a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                      </div>
                    </div>
                  </div>
                  <!-- total price-->
                  <div class="dropdown-item total-price d-flex justify-content-between"><span>Total</span><strong class="text-primary">$75.00</strong></div>
                  <!-- call to actions-->
                  <div class="dropdown-item CTA d-flex"><a href="cart.html" class="btn btn-template wide">View Cart</a><a href="checkout1.html" class="btn btn-template wide">Checkout</a></div>
                </div>
              </div>
              <!-- Cart Dropdown-->
            </div>
          </div>
        </div>
      </nav>
    </header>