package controller.servlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.DataController;
import model.Encryption;
import model.model;
import util.StringUtils;
@WebServlet(asyncSupported = true, urlPatterns = {StringUtils.registerurl})
public class register extends HttpServlet {
    private static final long serialVersionUID = 1L;
    DataController dbController = new DataController();
    public register() {
        super();  
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
        String userName = request.getParameter(StringUtils.username);
        String email = request.getParameter(StringUtils.email);
        String gender = request.getParameter(StringUtils.gender);
        String phone = request.getParameter(StringUtils.phone);
        String password = request.getParameter(StringUtils.password);
        model userModel = new model(userName, email, gender, phone, password);
        int result = dbController.addData(userModel);
        if (result > 0) {
            response.sendRedirect(request.getContextPath() + StringUtils.loginPage);
        }
        else {
			response.sendRedirect("../pages/adminerror.jsp");
		}
    }
    	catch(Exception e) {
    		e.printStackTrace(); //Log for exception for debugging
    	}
    }
}