package servlets;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DatabaseController.DataController;
import Model.Encryption;
import Model.model;
import stringUtils.StringUtils;
@WebServlet(asyncSupported = true, urlPatterns = {StringUtils.registerurl})
public class register extends HttpServlet {
    private static final long serialVersionUID = 1L;
    DataController dbController = new DataController();
    public register() {
        super();  
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter(StringUtils.username);
        String email = request.getParameter(StringUtils.email);
        String gender = request.getParameter(StringUtils.gender);
        String phone = request.getParameter(StringUtils.phone);
        String password = request.getParameter(StringUtils.password);
        String encryptedPassword = Encryption.encrypt(userName,password);
        model userModel = new model(userName, email, gender, phone, encryptedPassword);
        int result = dbController.addData(userModel);
        if (result > 0) {
            response.sendRedirect(request.getContextPath() + StringUtils.loginPage);
        }
    }
}