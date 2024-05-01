package controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.ProductAdd;
import util.StringUtils;

public class DatabaseController {
	//connecting to pixelpeak database
	public Connection getConnection() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/pixelpeak";
		String user = "root";
		String pass ="";
		
		return DriverManager.getConnection(url, user, pass);
	}
	
	public int addProduct(ProductAdd product) {
		
		//getting values and inserting in database
		try (Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtils.INSERT_PRODUCT);
			
			//settings values in product table
			st.setString(1, product.getProductName());
			st.setString(2, product.getProductPrice());
			st.setString(3, product.getProductStock());
			st.setString(4, product.getProductCategory());
			st.setString(5, product.getProductDescription());
			//committing in database
			int result = st.executeUpdate();
			//returning value of result
			if (result > 0) {
	            return 1; // Registration successful
	        } else {
	            return 0; // Registration failed (no rows affected)
	        }
		}
		
		//error handling
		catch(SQLException | ClassNotFoundException ex){
			ex.printStackTrace(); //log the exception for debugging
			return -1;
		}
	}
	
	//getting all product info
	public ArrayList<ProductAdd> getAllProductInfo(){
		try {
			PreparedStatement st = getConnection().prepareStatement(StringUtils.GET_PRODUCT_INFO);
			ResultSet rs = st.executeQuery();
			
			ArrayList<ProductAdd> products = new ArrayList<ProductAdd>();
			
			while(rs.next()) {
				ProductAdd product = new ProductAdd(null, null, null, null, null);
				
				product.setProductName(rs.getString("productName"));
				product.setProductPrice(rs.getString("productPrice"));
				product.setProductStock(rs.getString("productStock"));
				product.setProductCategory(rs.getString("productCategory"));
				product.setProductDescription(rs.getString("productDescription"));
				
				products.add(product);
			}
			
			return products;
		} 
		catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return null;
		}
	}
}
