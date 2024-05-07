package controller.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/DeleteServlet" })
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doDelete(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the productID parameter from the request
        int productID = Integer.parseInt(request.getParameter("productID"));

        // Call the method to delete the product from the database
        DatabaseController dbController = new DatabaseController();
        int result = dbController.deleteProductInfo(productID);

        // Respond with appropriate message
        if (result > 0) {
            response.setStatus(HttpServletResponse.SC_OK);
            //response.getWriter().println("Product deleted successfully");
            response.sendRedirect(request.getContextPath() + "/pages/productmanagement.jsp");
        } else {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().println("Failed to delete product.");
        }
    }
}
