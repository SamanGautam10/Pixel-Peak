package controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import controller.DatabaseController;
import model.ProductAdd;
import util.StringUtils;

/**
 * Servlet implementation class ProductAddServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/ProductAddServlet" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, //2MB
maxFileSize = 1024 * 1024 * 10, //10MB
maxRequestSize = 1024 * 1024 * 50)
public class ProductAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	DatabaseController dbController = new DatabaseController();
	
    public ProductAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try {
		String productName = request.getParameter("productName");
		int productPrice = Integer.parseInt(request.getParameter("productPrice"));
		int productStock = Integer.parseInt(request.getParameter("productStock"));
		String productCategory = request.getParameter("productCategory");
		String productDescription = request.getParameter("productDescription");
		Part imagePart = request.getPart("imagePart");
		
		ProductAdd productAdd = new ProductAdd(productName, productPrice, productStock, productCategory, productDescription, imagePart);
		
		String savePath = StringUtils.IMAGE_DIR_SAVE_PATH;
		String fileName = productAdd.getImageUrlFromPart();
		
		if(!fileName.isEmpty() && fileName != null) {
			imagePart.write(savePath + fileName);
		}
		
		int result = dbController.addProduct(productAdd);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/pages/productmanagement.jsp");
		}
		else {
			PrintWriter out = response.getWriter();
	        out.println("<html><body>");
	        out.println("<h3>Error: Milya xaina</h3>");
	        out.println("</body></html>");
		}
	}
		catch(Exception ex) {
			ex.printStackTrace(); //Log for exception for debugging
		}
	}
}
