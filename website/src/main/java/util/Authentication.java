package util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Authentication {

    public static void createSecureCookie(HttpServletRequest request, HttpServletResponse response, String name, String value) {
        Cookie cookie = new Cookie(name, value);
        cookie.setSecure(true); // Ensure cookie is sent over HTTPS only
        cookie.setMaxAge(30 * 60); //Expiration time to 30 minutes
        response.addCookie(cookie);
        
        // Create or retrieve session
        HttpSession session = request.getSession(true);
        session.setMaxInactiveInterval(30 * 60); // Set session timeout to 30 minutes
    }
    
    public static void destroyCookie(HttpServletRequest request, HttpServletResponse response, String name) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    cookie.setMaxAge(0); // Set cookie expiration to 0
                    response.addCookie(cookie);
                    break;
                }
            }
        }
    }
}
