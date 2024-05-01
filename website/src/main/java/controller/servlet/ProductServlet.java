package controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;
import model.ProductAdd;

/**
 * Servlet implementation class ProductController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/ProductServlet" })
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//making a global object of database controller
	DatabaseController dbController = new DatabaseController();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String productName = request.getParameter("productName");
		String productPrice = request.getParameter("productPrice");
		String productStock = request.getParameter("productStock");
		String productCategory = request.getParameter("productCategory");
		String productDescription = request.getParameter("productDescription");
		//creating object of ProductAdd
		ProductAdd productAdd = new ProductAdd(productName, productPrice, productStock, productCategory, productDescription);
		int result = dbController.addProduct(productAdd);
		
		if (result > 0) {
			response.sendRedirect(request.getContextPath() + "/pages/productmanagement.jsp");
		}
		else {
			PrintWriter out = response.getWriter();
	        out.println("<html><body>");
	        out.println("<h3>Error: Data insertion failed</h3>");
	        out.println("</body></html>");
		}
	}
}
