<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
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
            <li><a href="#">Logout</a></li>
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
                    <span class="profile-text">Saman Gautam</span>
                </a>
            </div>
        </div>
    </nav>

    <!-- Stats of the company -->
    <div class="welcome-back">
        <p class="span-welcome">Welcome Back, Admin</p>
    </div>

    <!-- card for stats -->
    <div class="card-row">
        <div class="column-card">
            <div class="card">
                <img src="../resources/growth.png" alt="" >
                <p>Today Sale: </p>
            </div>
        </div> 

        <div class="column-card">
            <div class="card">
                <img src="../resources/growth.png" alt="" >
                <p>Overall Sales: </p>
            </div>
        </div>

        <div class="column-card">
            <div class="card">
                <img src="../resources/user-icon.png" alt="" >
                <p>Total Users: </p>
            </div>
        </div>

        <div class="column-card">
            <div class="card">
                <img src="../resources/total-order.png" alt="" >
                <p>Total Orders: </p>
            </div>
        </div>
    </div>

    <!-- message from user through contact us -->
        <div class="card-row">
            <div class="message-user">
                Hello
            </div>
        </div>
</body>
</html>