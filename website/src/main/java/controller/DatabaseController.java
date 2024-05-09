package controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.ProductAdd;
import model.model;
import util.StringUtils;

public class DatabaseController {
	//connecting to pixelpeak database
	public Connection getConnection() throws SQLException, ClassNotFoundException{
		Class.forName(StringUtils.DRIVER);
		
		return DriverManager.getConnection(StringUtils.LOCALHOST_URL, StringUtils.LOCALHOST_USER, StringUtils.LOCALHOST_PASSWORD);
	}
	
	/**
	 *This method is used to get values of the form 
	 *First we pull the value from the respective form and set it to the database
	 *result = st.executeUpdate() this line is used to set change data in database
	 */
	public int addProduct(ProductAdd productAdd) {
		String query = StringUtils.INSERT_PRODUCT;
		try(Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, productAdd.getProductName());
			st.setInt(2, productAdd.getProductPrice());
			st.setInt(3, productAdd.getProductStock());
			st.setString(4, productAdd.getProductCategory());
			st.setString(5, productAdd.getProductDescription());
			st.setString(6, productAdd.getImageUrlFromPart());

			
			int result = st.executeUpdate();
			return result > 0 ? 1:0;
		}
		catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace(); //Log for exception for debugging
			return -1;
		}
	}
	
	/**
	 * This function is used to get all the information form the database
	 * Using setter method which is in ProductAdd, we set the value of respective field
	 * 
	 */
	public ArrayList<ProductAdd> getAllProductInfo(){
		try {
			PreparedStatement st = getConnection().prepareStatement(StringUtils.GET_PRODUCT_DETAILS);
			ResultSet rs = st.executeQuery();
			
			ArrayList<ProductAdd> products = new ArrayList<ProductAdd>();
			
			while(rs.next()) {
				ProductAdd product = new ProductAdd(null, 0, 0, null, null,null);
				
				product.setProductName(rs.getString("productName"));
				product.setProductPrice(rs.getInt("productPrice"));
				product.setProductStock(rs.getInt("productStock"));
				product.setProductCategory(rs.getString("productCategory"));
				product.setProductDescription(rs.getString("productDescription"));
				product.setImageUrlFromDB(rs.getString("imagePart")); 

				
				products.add(product);
			}
			
			return products;
		} 
		catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	
	/**
	 * This method is used for deleting the existing products information from the database
	 * DELETE_PRODUCT_SQL is a variables declared in StringUtils that contains query to delete product from the database
	 */
	public int deleteProductInfo(int productID) {
	    try (Connection con = getConnection()) {
	        PreparedStatement st = con.prepareStatement(StringUtils.DELETE_PRODUCT_SQL);
	        st.setInt(1, productID);
	        return st.executeUpdate();
	    } catch (SQLException | ClassNotFoundException ex) {
	        ex.printStackTrace(); // Log the exception for debugging
	        return -1;
	    }
	}

	
	 public static boolean updateProduct(String productID, String productName, String productPrice, String productStock, String productCategory, String productDescription) {
	        try (Connection conn = DriverManager.getConnection(StringUtils.LOCALHOST_URL, StringUtils.LOCALHOST_USER, StringUtils.LOCALHOST_PASSWORD)) {
	            String query = StringUtils.UPDATE_PRODUCT;
	            try (PreparedStatement pstmt = conn.prepareStatement(query)) {
	                pstmt.setString(1, productName);
	                pstmt.setString(2, productPrice);
	                pstmt.setString(3, productStock);
	                pstmt.setString(4, productCategory);
	                pstmt.setString(5, productDescription);
	                pstmt.setString(6, productID);

	                int rowsUpdated = pstmt.executeUpdate();
	                return rowsUpdated > 0;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }
	
	/**
	 * Aagaman Ko Part
	 */
	/**
	 * This function is used to get all the information from the database
	 * Using setter method which is in model, we set the value of respective field
	 * This method is being used to pull all the data from database to be set in user management.
	 */
	public ArrayList<model> getAllUserInfo(){
		try {
			PreparedStatement st = getConnection().prepareStatement(StringUtils.GET_USER);
			ResultSet rs = st.executeQuery();
			
			ArrayList<model> registerUser = new ArrayList<model>();
			
			while(rs.next()) {
				model register = new model(null, null, null,null);
				
				register.setUserName(rs.getString("UserName"));
				register.setEmail(rs.getString("Email"));
				register.setGender(rs.getString("Gender"));
				register.setPhone(rs.getString("Phone"));
				
				registerUser.add(register);
			}
			
			return registerUser;
		} 
		catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
}
