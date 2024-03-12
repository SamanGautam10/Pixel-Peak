package controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.StringUtils;
import model.StudentModel;

public class DatabaseController {
//	public static final String GET_LOGIN_STUDENT_INFO = "SELECT user_name, password from student_info";
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/student_management";
		String user = "root";
		String pass = "";
		return DriverManager.getConnection(url, user, pass);
	}
	
	public int addStudent(StudentModel studentModel) {
		String query = "INSERT INTO student_info" + "(first_name, last_name, birthday, gender, email, number, subject, user_name, password) VALUES (?,?,?,?,?,?,?,?,?)";
		try(Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, studentModel.getFirstName());
			st.setString(2, studentModel.getLastName());
			st.setDate(3, Date.valueOf(studentModel.getDob()));
			st.setString(4, studentModel.getGender());
			st.setString(5, studentModel.getEmail());
			st.setString(6, studentModel.getPhoneNumber());
			st.setString(7, studentModel.getSubject());
			st.setString(8, studentModel.getUsername());
			st.setString(9, studentModel.getPassword());
			
			int result = st.executeUpdate();
			return result > 0 ? 1:0;
		}
		catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace(); //Log for exception for debugging
			return -1;
		}
	}
	
	public int getStudentLoginInfo(String user_name, String password) {
		try (Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtils.GET_LOGIN_STUDENT_INFO);
			
			st.setString(1, user_name);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				//Username and password matches to database
				return 1;
			}
			else {
				//No matching record
				
				return 0;
			}
		}
		catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace(); //Log to send exception
			
			return -1;
		}
	}
}
