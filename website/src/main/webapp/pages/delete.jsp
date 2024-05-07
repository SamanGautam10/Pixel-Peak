<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
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
	        <form id="deleteForm-${products.productID}" method="post"
							action="../ProductServlet">
	        	<div class="form-column">
	                <label for="Product ID">Product ID</label><br>
	                <input type="hidden" id="pID" name="productID">
	             </div>
	             
	            <div class="form-column">
	                <label for="Product Name">Product Name</label><br>
	                <input type="text" id="pName" name="productName" >
	             </div>
	
	            <div class="form-column">
	                <label for="Product Price">Product Price</label><br>
	                <input type="text" id="pPrice" name="productPrice" required>
	            </div>
	
	            <div class="form-column">
	                <label for="Product Stock">Product Stock</label><br>
	                <input type="text" id="pStock" name="productStock" required>
	            </div>
	
	            <div class="form-column">
	                <label for="Product Category">Product Category</label><br>
	                <input type="text" id="pCategory" name="productCategory" required>
	            </div>
	
	            <div class="form-column">
	                <label for="Product Description">Product Description</label><br>
	                <textarea name="productDescription" cols="60" rows="20" id="pDescription" required></textarea>
	            </div>
	             
	            <div class="forum-column">
	            	<button class="btn-management" type="submit" >Update</button>
	            </div>
	        </form>
    	</div>	
</body>

<script>
	function confirmDelete(userName) {
		if (confirm("Are you sure you want to delete this product: " + productID
				+ "?")) {
			document.getElementById("deleteForm-" + productID).submit();
		}
	}
</script>

</html>