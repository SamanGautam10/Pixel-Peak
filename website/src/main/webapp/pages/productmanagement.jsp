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

<style>
.user-table { 
    border-collapse: collapse; 
    width: 100%;
}

.user-table th,
.user-table td {
    border: 2px solid #000000; 
    padding: 8px;
    text-align: left;
}

.user-table th {
    background-color: #f2f2f2;
}

</style>


<sql:setDataSource var="dbConnection" driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/pixelpeak" user="root" password=""/>

<sql:query var="productPull" dataSource="${dbConnection}">
	SELECT productID,productName,productPrice,productStock,productCategory,productDescription,imagePart FROM product	
</sql:query>


<body>
<!-- main navigation bar -->
    <jsp:include page="adminheader.jsp" />
    
    <div class="add-product">
        <a href="../pages/productadd.jsp">
        <h1 class="heading-one">Add New Product</h1>
        </a>
    </div>

    <!-- Table to add and remove products -->
    <c:choose>
    <c:when test="${empty productPull.rows}">
        <div class="management">
            <h1 class="heading-one">No products found</h1>
        </div>
    </c:when>
    <c:otherwise>
        <!-- Table to display products -->
        <div class="management">
            <h1 class="heading-one">View Your Products</h1>
            <table class="user-table">
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
                <c:forEach var="product" items="${productPull.rows}">
                    <div class="management-row">
                        <tr>
                            <td>${product.productID}</td>
                            <td>${product.productName}</td>
                            <td>${product.productPrice}</td>
                            <td>${product.productStock}</td>
                            <td>${product.productCategory}</td>
                            <td>${product.productDescription}</td>   
                            <td>
                            	<img src="${pageContext.request.contextPath}/resources/${product.imagePart}" alt="${pageContext.request.contextPath}/resources/image.jpg" width="70"></td>           
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