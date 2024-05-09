<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
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
   <jsp:include page="adminheader.jsp" />

    <!-- Form to add product -->
    <div class="form-row">
        <form action="../UpdateProductServlet" method="post">
        		<div class="form-column">
	                <label for="Product ID">Product ID</label><br>
	                <input type="hidden" name="productID" value="${param.productID}" />
	                <span>${param.productID}</span>
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