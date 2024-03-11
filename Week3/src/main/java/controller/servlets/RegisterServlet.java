package controller.servlets;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;
import model.StudentModel;

/**
 * Servlet implementation class MyFirstServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DatabaseController dbController = new DatabaseController();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String first_name = request.getParameter("firstName");
		String last_name = request.getParameter("lastName");
		LocalDate dob = LocalDate.parse(request.getParameter("birthday"));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String number = request.getParameter("phoneNumber");
		String subject = request.getParameter("subject");
		String user_name = request.getParameter("username");
		String password = request.getParameter("password");
		
		StudentModel studentModel = new StudentModel(first_name, last_name, dob, gender, email, number, subject, user_name, password);
		
		int result = dbController.addStudent(studentModel);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/pages/login.html");
		}
		else {
			//pass
		}
	}

}
