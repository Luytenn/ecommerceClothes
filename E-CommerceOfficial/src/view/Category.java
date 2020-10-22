package view;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Category
 */
@WebServlet("/Category")
public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Category() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		  response.setContentType("text/html;charset=UTF-8");
	         HttpSession sesion = request.getSession();
	        if(request.getParameter("category")!=null){
	            sesion.setAttribute("subCategory", 0);
	            sesion.setAttribute("category", Integer.parseInt(request.getParameter("category")));
	            
	            
	        }else if(request.getParameter("subCategory")!=null){
	            sesion.setAttribute("category", 0);
	            sesion.setAttribute("subCategory", Integer.parseInt(request.getParameter("subCategory")));
	            
	            
	        }else{
	            sesion.setAttribute("category", 0);
	            sesion.setAttribute("subCategory", 0);
	        }
	        
	        request.getRequestDispatcher("WEB-INF/category.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
