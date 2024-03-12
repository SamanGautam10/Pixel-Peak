package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Name: Prithivi Maharjan Email: prithivi.maharjan18@gmail.com
 */
@WebServlet(urlPatterns = "/login", asyncSupported = true)
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final DatabaseController dbController;

	public Login() {
		this.dbController = new DatabaseController();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		int loginResult = dbController.getStudentLoginInfo(userName, password);

		if (loginResult == 1) {
		    response.sendRedirect(request.getContextPath() + "/pages/welcome.html");
		} else {
			// Code will be written in later weeks
		}
	}
}