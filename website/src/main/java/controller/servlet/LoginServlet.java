package controller.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DataController;
import model.login;
import util.Authentication;
import util.StringUtils;

@WebServlet(urlPatterns = StringUtils.loginurl, asyncSupported = true)
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final DataController dbController;

    public LoginServlet() {
        this.dbController = new DataController();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Call the common method
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter(StringUtils.username);
        String password = request.getParameter(StringUtils.password);

        // Check if the user is admin
        boolean isAdmin = userName.equals("Admin") && password.equals("Admin123");

        // Call DBController to validate login credentials
        int loginResult = dbController.getLoginInfo(new login(userName, password));

        if (isAdmin) {
            // Admin login successful
        	 Authentication.createSecureCookie(request, response, "username", userName);
            response.sendRedirect(request.getContextPath() + "/pages/adminmainboard.jsp");
        } else {
            if (loginResult == 1) {
                // User login successful
            	Authentication.createSecureCookie(request, response, "username", userName);
                response.sendRedirect(request.getContextPath() + "/pages/main.jsp");
            } else {
            	response.sendRedirect(request.getContextPath() + "/pages/error.jsp");
            }
        }
    }
}
