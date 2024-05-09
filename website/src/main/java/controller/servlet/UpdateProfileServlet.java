package controller.servlet;

import java.io.IOException;
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
 * Servlet implementation class UpdateProfileServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/UpdateProfileServlet" })
public class UpdateProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String userId = request.getParameter("userId");
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");

        // Update user profile in the database
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pixelpeak", "root", "");
            PreparedStatement pstmt = conn.prepareStatement("UPDATE register SET UserName=?, Email=?, Gender=?, Phone=? WHERE id=?");
            pstmt.setString(1, userName);
            pstmt.setString(2, email);
            pstmt.setString(3, gender);
            pstmt.setString(4, phone);
            pstmt.setString(5, userId);
            pstmt.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Redirect back to profile page after update
        response.sendRedirect(request.getContextPath() + "/pages/profile.jsp");
    }
}