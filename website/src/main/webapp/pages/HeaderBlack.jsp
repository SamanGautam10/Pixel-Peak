<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    .navbar{
    width: 100%;
    padding: 30px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    user-select: none;
    }
    .logo{
    width: 160px;
    margin-top: -10px;
    cursor: pointer;
}
.navbar ul li{
    list-style: none;
    display: inline-block;
    margin: 20px;
}
.navbar ul li a{
    
    text-decoration: none;
    text-transform: uppercase;
    color: Black;
    font-weight: 600;
    padding: 15px;
    /* margin-left: 20px; */
}
.navbar li a:hover{
    border-bottom: 3px solid green;
}

    </style>
<body>
    
    <div class="navbar">
        <img class="logo" src="../images/pixelspeak-high-resolution-logo-transparent.png">
        <ul>
            <li><a href="main.jsp">Home</a></li>
            <li><a href="product.jsp">Products</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li><a href="profile.jsp">Profile</a></li>
        </ul>
    </div>
</body>
</html>