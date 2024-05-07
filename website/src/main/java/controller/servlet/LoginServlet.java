package servlets;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DatabaseController.DataController;
import Model.Encryption;
import Model.login;
import stringUtils.StringUtils;
@WebServlet(urlPatterns = StringUtils.loginurl, asyncSupported = true)
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final DataController dbController;
    public LoginServlet() 
     {
        this.dbController = new DataController();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Call the common method
        processRequest(request, response);
    }
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter(StringUtils.username);
        String encryptedPassword = request.getParameter(StringUtils.password);
        String decryptedPassword = Encryption.decrypt(encryptedPassword, userName);
        System.out.println(encryptedPassword);
        login login = new login(userName, decryptedPassword);
        login.setUserName(userName);
        login.setPassword(decryptedPassword);
        
        // Call DBController to validate login credentials
        int loginResult = dbController.getLoginInfo(login);
        System.out.print(loginResult);
        if (loginResult == 1) {
        	
            request.setAttribute(StringUtils.MESSAGE_SUCCESS, StringUtils.MESSAGE_SUCCESS);
            response.sendRedirect(request.getContextPath() + StringUtils.landingPage);
        } 
        else if (loginResult == 0) {
        	  // Login successful
        	HttpSession session = request.getSession();
            session.setAttribute("username", userName);
            
            Cookie cookie = new Cookie("username", userName);
            cookie.setMaxAge(3600); // Cookie expires in 1 hour
            response.addCookie(cookie);
            // Username or password mismatch
            request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR);
            request.getRequestDispatcher(StringUtils.loginPage).forward(request, response);
        } else if (loginResult == -1) {
            // Username not found
            request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.account_error);
            request.getRequestDispatcher(StringUtils.loginPage).forward(request, response);
        } 
    }
}
