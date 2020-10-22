 <nav class="navbar navbar-expand-lg navbar-dark bg-mattBlackLight fixed-top">
      
    
      <button class="navbar-toggler sideMenuToggler" type="button">
        <span class="navbar-toggler-icon"></span>
      </button>

      <a class="navbar-brand" href="#">FrontEndFunn</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

 	<div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle p-0"
              href="#"
              id="navbarDropdown"
              role="button"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              <i class="material-icons icon">
                person
              </i>
              
               <% 
            	HttpSession sesion = request.getSession();
            	String usuario = "";
            	
            	if(sesion.getAttribute("usuario")!=null){
            		usuario = String.valueOf(sesion.getAttribute("usuario"));
            		
            	}else{
            		out.print("<script>location.replace('login.jsp');</script>"); //no funciona, modificar
            	}
            	
            	out.print("<span > "+ usuario +" </span>");
            	
            %>
             
              
            </a>
            <div
              class="dropdown-menu dropdown-menu-right"
              aria-labelledby="navbarDropdown"
            >
           
              <a class="dropdown-item" href="login.jsp?cerrar=true">Cerrar Sesion</a>
              
              <!-- CODIGO JAVA PARA CERRAR LA SESION -->
               <%
               	if(request.getParameter("cerrar")!=null){
               		session.invalidate();
               	}
               %>
            
              <!-- CODIGO JAVA PARA CERRAR LA SESION -->
            </div>
          </li>
        </ul>
      </div>
 
 
    </nav>
    <div class="wrapper d-flex">
      <div class="sideMenu bg-mattBlackLight">
        <div class="sidebar">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a href="listarProductos" class="nav-link px-2">
                <i class="material-icons icon">
                  dashboard
                </i>
                <span class="text">Producto</span>
              </a>
            </li>
             <li class="nav-item">
              <a href="#" class="nav-link px-2">
                <i class="material-icons icon">
                  computer
                </i>
                <span class="text">Categoria</span>
              </a>
            </li>
            
            <li class="nav-item">
              <a href="#" class="nav-link px-2">
                <i class="material-icons icon">
                  person
                </i>
                <span class="text">Administrador</span>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link px-2">
                <i class="material-icons icon"> insert_chart </i
                ><span class="text">Ventas</span></a
              >
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link px-2">
                <i class="material-icons icon">
                  settings
                </i>
                <span class="text">Proveedores</span>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link px-2">
                <i class="material-icons icon">
                  pages
                </i>
                <span class="text">Compras</span>
              </a>
            </li>
           
            <li class="nav-item">
              <a href="#" class="nav-link px-2 sideMenuToggler">
                <i class="material-icons icon expandView ">
                  view_list
                </i>
                <span class="text">Resize</span>
              </a>
            </li>
          </ul>
        </div>
      </div>