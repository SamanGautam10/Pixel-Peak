<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import="util.StringUtils" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Management</title>
</head>

<link rel="stylesheet" href="../stylesheets/dashboard.css">
<link href='https://fonts.googleapis.com/css?family=Varela Round' rel='stylesheet'>
<!-- 
<sql:setDataSource var="dbConnection" driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/pixelpeak" user="root" password=""/>

<sql:query var="products" dataSource="${dbConnection}">
	SELECT productID,productName,productPrice,productStock,productCategory,productDescription FROM product	
</sql:query>
 -->

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
                        <th>SN</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Stock Qty.</th>
                        <th>Product Category</th>
                        <th>Product Description</th>
                        <th>Product Image</th>
                        <th>Actions</th>
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
                            <td>
            					<img src="../resources/${product.imageUrlFromPart}"
						class="card-img-top" alt="../resources/download.png">
        					</td>             
                            <td>
                                <a href="updateproduct.jsp?productID=${product.productID}&productName=${product.productName}&productPrice=${product.productPrice}&productStock=${product.productStock}&productCategory=${product.productCategory}&productDescription=${product.productDescription}">
                                    <button class="btn-management">Edit</button> 
                                </a>
                                <a href="../DeleteServlet?productID=<c:out value='${product.productID}'/>">
                                    <button class="btn-management">Delete</button>
                                </a>
                            </td>
                        </tr>
                    </div>
                </c:forEach>
            </table>
        </div>
    </c:otherwise>
</c:choose>
</body>
</html>