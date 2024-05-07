package controller.servlet;

import model.ProductAdd;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;

/**
 * Servlet implementation class UpdateProduct
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/UpdateProduct" })
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	DatabaseController dbController = new DatabaseController();
 
    public UpdateProduct() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
    	doPut(request,response);
    }
    
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
