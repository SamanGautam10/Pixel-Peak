<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
            <li><a href="#">User Management</a></li>
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

    <!-- Form to add product -->
    <div class="form-row">
        <form action="../UpdateProduct" method="post" enctype="multipart/form-data">
        		<div class="form-column">
	                <label for="Product ID">Product ID</label><br>
	                <input type="hidden" name="productID" value="${param.productID}" />
            	</div>
             
				<div class="form-column">
					<label for="firstName">Product Name</label> <br> 
					<input type="text" id="firstName" name="productName" value="${param.productName}" required>
				</div>
				<div class="form-column">
					<label for="lastName">Product Price</label><br> 
					<input type="text" id="lastName" name="productPrice" value="${param.productPrice}" required>
				</div>
				<div class="form-column">
					<label for="username">Product Stock</label> 
					<input type="text" id="username" name="productStock" value="${param.productStock}" required>
				</div>
				<div class="form-column">
					<label for="email">Product Category</label> 
					<input type="text" id="email" name="productCategory" value="${param.productCategory}"  required>
				</div>
			<div class="form-column">
				<div class="col">
					<label for="phoneNumber">Product Description</label> <br>
					<textarea cols="60" rows="20" id="productDescription" name="productDescription" required>${param.productDescription}</textarea>
				</div>
			</div>
			<button type="submit" class="btn-management">Submit</button>
		</form>
    </div>
</body>
</html>