package controller.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DatabaseController;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/LoginControl" })
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	private final DatabaseController dbController;
	DatabaseController dbController = new DatabaseController();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControl() {
        this.dbController = new DatabaseController();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter printOut = response.getWriter();
		
		String user_name = request.getParameter("getUsername");
		String password = request.getParameter("getPassword");
		
		
		int loginResult = dbController.getStudentLoginInfo(user_name, password);
		printOut.println("<h3>Login Successfull</h3>");
		
		if(loginResult == 1) {
			PrintWriter systemOut = response.getWriter();
			systemOut.println("<h3>Login Successfull second</h3>");
			//successful login
			response.sendRedirect(request.getContextPath() + "/pages/welcome.html");
		}
		else if(loginResult == 0) {
			//pass
		}
		else {
			//pass
		}
	}

}
