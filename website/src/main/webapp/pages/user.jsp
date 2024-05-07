<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management</title>
</head>

<link rel="stylesheet" href="../stylesheets/dashboard.css">
<link href='https://fonts.googleapis.com/css?family=Varela Round' rel='stylesheet'>

<body>
	<!-- main navigation bar -->
    <div class="sidebar">
        <a href="adminmainboard.html"><img src="../resources/icon.png" alt="" width="200" class="nav-img"></a>
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

    <div class="add-product">
        <a href="../pages/productadd.jsp">
        <h1 class="heading-one">Add New Product</h1>
        </a>
    </div>

    <!-- Table to add and remove products -->
    <c:choose>
    <c:when test="${empty products.rows}">
        <div class="management">
            <h1 class="heading-one">No products found</h1>
        </div>
    </c:when>
    <c:otherwise>
        <!-- Table to display products -->
        <div class="management">
            <h1 class="heading-one">View Your Products</h1>
            <table>
                <div class="management-row">
                    <tr>
                        <th>ID</th>
                        <th>User Name</th>
                        <th>Gender</th>
                        <th>Email</th>
                    </tr>
                </div>     
                <c:forEach var="product" items="${products.rows}">
                    <div class="management-row">
                        <tr>
                            <td>${product.productID}</td>
                            <td>${product.productName}</td>
                            <td>${product.productPrice}</td>
                            <td>${product.productStock}</td>
                            <td>${product.productCategory}</td>
                            <td>${product.productDescription}</td>
                        </tr>
                    </div>
                </c:forEach>
            </table>
        </div>
    </c:otherwise>
</c:choose>
</body>
</body>
</html>