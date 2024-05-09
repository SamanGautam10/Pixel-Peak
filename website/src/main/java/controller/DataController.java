package controller;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.ProductAdd;
import model.login;
import model.model;
import util.StringUtils;
public class DataController {
    public Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName(StringUtils.DRIVER);

        return DriverManager.getConnection(StringUtils.LOCALHOST_URL, StringUtils.LOCALHOST_USER, StringUtils.LOCALHOST_PASSWORD);
    }
    public String getEncryptedPassword(String username) {
        String encryptedPassword = null;
        try (Connection connection = getConnection()) {
            String query = "SELECT password FROM users WHERE username = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                encryptedPassword = resultSet.getString("password");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return encryptedPassword;
    }

    public int  addData(model model) {
        try (Connection con = getConnection()) {
            PreparedStatement st = con.prepareStatement(StringUtils.Insert_User);
           st.setString(1,model.getUserName());
           st.setString(2, model.getEmail());
           st .setString(3,model.getGender());
           st.setString(4,model.getPhone());
           st.setString(5,model.getPassword());
           int result=st.executeUpdate(); 
           return result>0?1:0;
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace(); // Handle the exception appropriately
            return -1;
        }
    }
	public int getLoginInfo(login login) {

	    // Try-catch block to handle potential SQL or ClassNotFound exceptions
	    try {
	        // Prepare a statement using the predefined query for login check
	        PreparedStatement st = getConnection().prepareStatement(StringUtils.Login_check);

	        // Set the username in the first parameter of the prepared statement
	        st.setString(1, login.getUserName());
	        st.setString(2, login.getPassword());

	        // Execute the query and store the result set
	        ResultSet result = st.executeQuery();

	        // Check if there's a record returned from the query
	        if (result.next()) {
	            // Get the username from the database
	            String userDb = result.getString(StringUtils.username);

	            // Get the password from the database
	            String passwordDb = result.getString(StringUtils.password);

	            // Check if the username and password match the credentials from the database
	            if (userDb.equals(login.getUserName()) 
	            		&& passwordDb.equals(login.getPassword())) {
	                // Login successful, return 1
	                return 1;
	            } else {
	                // Username or password mismatch, return 0
	                return 0;
	            }
	        } else {
	            // Username not found in the database, return -1
	            return -1;
	        }
	    // Catch SQLException and ClassNotFoundException if they occur
	    } catch (SQLException | ClassNotFoundException ex) {
	        // Print the stack trace for debugging purposes
	        ex.printStackTrace();
	        // Return -2 to indicate an internal error
	        return -2;
	    }
	}
	
	public Boolean checkEmailIfExists(String email) {
	    // TODO: Implement logic to check if the provided email address exists in the database
	    // This method should likely query the database using DBController and return true if the email exists, false otherwise.
	    return false;
	}

	public Boolean checkNumberIfExists(String number) {
	    // TODO: Implement logic to check if the provided phone number exists in the database
	    // This method should likely query the database using DBController and return true if the phone number exists, false otherwise.
	    return false;
	}

	public Boolean checkUsernameIfExists(String username) {
	    // TODO: Implement logic to check if the provided username exists in the database
	    // This method should likely query the database using DBController and return true if the username exists, false otherwise.
	    return false;
	}
}