<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Form</title>
</head>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="../stylesheets/dashboard.css">
<link href='https://fonts.googleapis.com/css?family=Varela Round' rel='stylesheet'>

<body>
<!-- main navigation bar -->
   <jsp:include page="adminheader.jsp" />
    
    <!-- Form to add product -->
    <div class="form-row">
        <form action="../ProductAddServlet" method="post" enctype="multipart/form-data">
				<div class="form-column">
					<label for="firstName">Product Name</label> <br> <input type="text"
						id="firstName" name="productName" required>
				</div>
				<div class="form-column">
					<label for="lastName">Product Price</label><br> <input type="text"
						id="lastName" name="productPrice" required>
				</div>
				<div class="form-column">
					<label for="username">Product Stock</label> <input type="text"
						id="username" name="productStock" required>
				</div>
				<div class="form-column">
					<label for="email">Product Category</label> <input type="text" id="email"
						name="productCategory" required>
				</div>
			<div class="form-column">
				<div class="col">
					<label for="phoneNumber">Product Description</label> <br><textarea cols="60" rows="20"
						id="productDescription" name="productDescription" required></textarea>
				</div>
			</div>
			
			<div class="form-column">
				<div class="col">
					<label for="productImage">Product Image</label> <br><input type="file" 
					id="imagePart" name="imagePart" required>
				</div>
			</div>
			
			<button type="submit" class="btn-management">Submit</button>
		</form>
    </div>
</body>
</html>