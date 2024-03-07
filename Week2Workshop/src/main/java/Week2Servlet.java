

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Week2Servlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/Week2Servlet" })
public class Week2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Week2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter printOut = response.getWriter();
		response.setContentType("text/html");
		printOut.print("HelloWorld");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		response.setContentType("text/html");
		PrintWriter printOut = response.getWriter();

		String firstname = request.getParameter("FirstName");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));
		String subject = request.getParameter("subject");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc.mysql://localhost:3306/advancedprogramming";
			String user = "root";
			String pass = "";
			Connection con = DriverManager.getConnection(url, user, pass);
			
			String query = "Insert into workshop2 (firstname,lastname,email,phoneNumber,subject) values (?,?,?,?,?)";
			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, firstname);
			st.setString(2, lastname);
			st.setString(3, email);
			st.setInt(4, phoneNumber);
			st.setString(5, subject);
			
			st.executeUpdate(); 
			
//			PrintWriter out = response.getWriter();
//			out.println("<h1>Your account has been registered!!!</h1>");
//			out.println("<h3>Name:" + firstname + " " + lastname + "</h3>");
//			out.println("<h3>Email: " + email + "</h3>");
//			out.println("<h3>Phone Number: " + phoneNumber + "</h3>");
//			out.println("<h3>Subject: " + subject + "</h3>");
			
			int result = st.executeUpdate();
			
			if (result > 0) {
				printOut.println("<h1>Your account is registered as </h1>");
				printOut.println("<h3>Name:" +firstname+ "</h3>");
				printOut.println("<h3>Age:" +lastname+ "</h3>");
			}
			else {
				printOut.println("<h3>Sorry! Your data is not registered!!!</h3>");
			}
		}
		catch(SQLException | ClassNotFoundException ex) {
			printOut.println("<h1>Please enter the correct data!</h1>");
		}
	}

}
