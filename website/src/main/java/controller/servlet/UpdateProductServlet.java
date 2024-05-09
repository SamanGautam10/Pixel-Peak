package controller.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;

/**
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/UpdateProductServlet" })
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productID = request.getParameter("productID");
        String productName = request.getParameter("productName");
        String productPrice = request.getParameter("productPrice");
        String productStock = request.getParameter("productStock");
        String productCategory = request.getParameter("productCategory");
        String productDescription = request.getParameter("productDescription");

        boolean success = DatabaseController.updateProduct(productID, productName, productPrice, productStock, productCategory, productDescription);
        if (success) {
            response.sendRedirect(request.getContextPath() + "/pages/productmanagement.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/pages/adminerror.jsp");
        }
    }
}
