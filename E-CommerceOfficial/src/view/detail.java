package view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Item;
import beans.Producto;
import cad.ProductoCad;

/**
 * Servlet implementation class detail
 */
@WebServlet("/detail")
public class detail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public detail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(request.getParameter("action")!=null) {
			HttpSession session = request.getSession();
			String a = request.getParameter("action");
		if(a.equals("order")) {
	      	
			  int webid = Integer.parseInt(request.getParameter("id"));
			
			ArrayList<Item> cartDetail = new ArrayList<>();
		 	Producto p = new Producto();
		 	p = ProductoCad.consultarProducto(webid); 
            cartDetail.add(new Item(p,1));   //error here  could throw null
		 	    
		 	session.setAttribute("cartDetail", cartDetail);    
		
			
			}
		}
		 request.getRequestDispatcher("WEB-INF/detail.jsp").forward(request, response);
	

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
