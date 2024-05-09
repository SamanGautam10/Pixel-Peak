<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Heading</title>
</head>

<link rel="stylesheet" href="../stylesheets/dashboard.css">
<link href='https://fonts.googleapis.com/css?family=Varela Round' rel='stylesheet'>

<body>
<!-- main navigation bar -->
    <div class="sidebar">
        <a href="../pages/adminmainboard.jsp"><img src="../resources/icon.png" alt="" width="200" class="nav-img"></a>
        <ul>
            <li><a href="../pages/adminmainboard.jsp">Dashboard</a></li>
            <li><a href="../pages/productmanagement.jsp">Products Management</a></li>
            <li><a href="../pages/orderlist.jsp">Order List</a></li>
            <li><a href="../pages/user.jsp">User Management</a></li>
            <li><a href="../LogoutServlet">Logout</a></li>
        </ul>
    </div>

    <!-- Search bar and message -->
    <nav class="search">
        <div class="search-bar-column">
            <div class="search-row">
                <input type="text" name="search-bar" placeholder="Search" class="searchbar">
            </div>
            <div class="profile">
                <a href="#">
                    <img src="../resources/dashboard-icon.svg" alt="" class="profile-img"> 
                    <span class="profile-text">
                        <% 
                        // Fetch username from cookie
                        Cookie[] cookies = request.getCookies();
                        String username = null;
                        if (cookies != null) {
                            for (Cookie cookie : cookies) {
                                if (cookie.getName().equals("username")) {
                                    username = cookie.getValue();
                                    break;
                                }
                            }
                        }
                        // Display username or "Guest" if not found
                        if (username != null) {
                            out.print(username);
                        } else {
                        	response.sendRedirect(request.getContextPath() + "/pages/permission.jsp");
                        }
                        %>
                    </span>
                </a>
            </div>
        </div>
    </nav>
</body>
</html>