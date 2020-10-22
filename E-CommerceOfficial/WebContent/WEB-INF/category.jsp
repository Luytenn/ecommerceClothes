<%@page import="beans.Categoria"%>
<%@page import="cad.CategoriaCad"%>
<%@page import="cad.ProductoCad"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Producto"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from demo.bootstrapious.com/hub/1-4-2/category.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 30 Jan 2020 17:03:03 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hub - Bootstrap 4 Ecommerce Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Bootstrap Select-->
    <link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="vendor/nouislider/nouislider.css">
    <!-- Custom font icons-->
    <link rel="stylesheet" href="css/custom-fonticons.css">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="https://img/favicon.ico">
    <!-- Modernizr-->
    <script src="js/modernizr.custom.79639.js"></script>
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    
      <%@include file="../WEB-INF/navbar.jsp" %>
   
    <main>
      <div class="container">
        <div class="row">
          <!-- Sidebar-->
          <div class="sidebar col-xl-3 col-lg-4 sidebar">
            <div class="block">
              <h6 class="text-uppercase">Product Categories</h6>
              <ul class="list-unstyled">
               
                  
                  
                  <c:forEach var="c" items="<%= CategoriaCad.listarCategorias() %>">
                      <c:set var="cod" value="${c.codigo}"/>
                      <% int codigo = Integer.parseInt(pageContext.getAttribute("cod").toString()); %>
                      <li><a href="?category=<%=codigo%>" class="d-flex justify-content-between align-items-center"><span>${c.nombre}</span><small>200</small></a>
                  <ul class="list-unstyled">
    
                            
                         <% ArrayList<Categoria> listaSub = CategoriaCad.listarSubCategorias(codigo); %>
                        
                          <% for(int isub=0; listaSub.size()>isub ; isub++){ 
                            
                              int subcodigo = listaSub.get(isub).getCodigo();
                                                       
                            %>
                            <li> <a href="?subCategory=<%= subcodigo%>"> <%= listaSub.get(isub).getNombre() %> </a></li>
											
										
                      <%  }%>
                    
                  </ul>
                </li>
                </c:forEach>
                   
              </ul>
            </div>
            
            
          </div>
          <!-- /Sidebar end-->
          <!-- Grid -->
          <div class="products-grid col-xl-9 col-lg-8 sidebar-left">
            <div class="row">
              <!-- item-->
              <%! ArrayList<Producto> datos; %>
            
             <% if(Integer.parseInt(session.getAttribute("subCategory").toString())>0){
                     datos = ProductoCad.listarProductosPorSubCategoria(Integer.parseInt(session.getAttribute("subCategory").toString()));
             }else if(Integer.parseInt(session.getAttribute("category").toString())>0) {
                     datos = ProductoCad.listarProductosPorCategoria(Integer.parseInt(session.getAttribute("category").toString()));
                     
             }else{
                     datos = ProductoCad.listarProductosRecomendados();
                         }
                                                    
                %>
 
              <c:forEach var="p" items="<%= datos %>">
              <div class="item col-xl-4 col-md-6">
                <div class="product is-gray">
                  <div class="image d-flex align-items-center justify-content-center">
                    <div class="ribbon ribbon-primary text-uppercase">${p.nombre}</div><img src="foto/${p.img}" alt="product" class="img-fluid">
                    <div class="hover-overlay d-flex align-items-center justify-content-center">
                      <div class="CTA d-flex align-items-center justify-content-center"><a href="#" class="add-to-cart"><i class="fa fa-shopping-cart"></i></a><a href="detail?id=${p.webid}&action=order" class="visit-product active"><i class="icon-search"></i>	</a><a href="#" data-toggle="modal" data-target="#exampleModal" class="quick-view"><i class="fa fa-arrows-alt"></i></a></div>
                    </div>
                  </div>
                  <div class="title"><small class="text-muted">${p.nombre}</small><a href="detail.html">
                      <h3 class="h6 text-uppercase no-margin-bottom">${p.nombre}</h3></a><span class="price text-muted">${p.precio}</span></div>
                </div>
              </div>
              
               </c:forEach>
           
            </div>
            <nav aria-label="page navigation example" class="d-flex justify-content-center">
              <ul class="pagination pagination-custom">
                <li class="page-item"><a href="#" aria-label="Previous" class="page-link"><span aria-hidden="true">Prev</span><span class="sr-only">Previous</span></a></li>
                <li class="page-item"><a href="#" class="page-link active">1       </a></li>
                <li class="page-item"><a href="#" class="page-link">2       </a></li>
                <li class="page-item"><a href="#" class="page-link">3       </a></li>
                <li class="page-item"><a href="#" class="page-link">4       </a></li>
                <li class="page-item"><a href="#" class="page-link">5 </a></li>
                <li class="page-item"><a href="#" aria-label="Next" class="page-link"><span aria-hidden="true">Next</span><span class="sr-only">Next     </span></a></li>
              </ul>
            </nav>
          </div>
          <!-- / Grid End-->
        </div>
      </div>
    </main>
    <!-- Overview Popup    -->
    
    <!-- Footer-->
    
     <%@include file="../WEB-INF/footer.jsp" %>
    
   
    
     <%@include file="../WEB-INF/js.jsp" %>
    
    
  </body>

</html>