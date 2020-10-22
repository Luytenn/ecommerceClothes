package view;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Administrador;
import beans.Cliente;
import dao.daoAdministrador;
import dao.daoCliente;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	daoAdministrador daoAdmin = new daoAdministrador();
	daoCliente daoCli = new daoCliente();
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//NO FUNCIONABLE , EN LUGAR DE ESTE CODIGO SE ESTA USANDO OTRO , QUE SE ENCUENTRA EN LOGIN.JSP
		
		String usuario = request.getParameter("usuario");
		 String password = request.getParameter("contraseña");
		 
		 Administrador admin = new Administrador();
		 Cliente cli = new Cliente();
		 
		 cli.setUsuario_cli(usuario);
		 cli.setContraseña_cli(password);
		 
		 admin.setUsuario_admin(usuario);
		 admin.setContraseña_admin(password);
		
		 Administrador a = daoAdmin.AutenticacionAdmin(usuario, password);
		 Cliente c = daoCli.AutenticacionCliente(usuario, password);
		 
		 
		 	HttpSession sesion = request.getSession();
		 
		 if(a==null) {
			 
			 if(c==null) {
				 
				 

				 response.sendRedirect("login.jsp");
				 
			 }else {
				 sesion.setAttribute("usuario", usuario);
				 response.sendRedirect("index.jsp");
				 
				 

			
			 }
			 
		 }else  {
			 sesion.setAttribute("usuario", usuario);
			 
			 response.sendRedirect("listarProductos.jsp");

			return;
			 
		 }
		 
	}

	

}
