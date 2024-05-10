<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
	
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Product</title>
      <link rel="stylesheet" href="../stylesheets/abc.css">
  </head>
  <style>
   .product-container {
    display: inline-block;
    justify-content: center;
    flex-wrap: wrap;
    position: relative;
  
  }
  .product-card {
    width: 300px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    margin: 20px;
    margin-left: 50px;
    height: 550px;
  }
  .product-card img {
    width: 100%;
    height: 250px;
    /* display: inline-flex; */
  }
  .product-details {
    padding: 20px;
  }
  .product-title {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 10px;
  }
  .product-price {
    font-size: 16px;
    color: #4CAF50;
    margin-bottom: 10px;
  }
  .product-description {
    font-size: 14px;
    color: #777;
    line-height: 1.5;
  }
  .btn {
    height: 20px;
    display: flex;
    align-items: center; /* Center vertically */
  justify-content: center; /* Center horizontally */
    display: flex;
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s;
  }
  .btn:hover {
    background-color: #45a049;
  }
</style>

<sql:setDataSource var="dbConnection" driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/pixelpeak" user="root" password=""/>

<sql:query var="productPull" dataSource="${dbConnection}">
	SELECT productID,productName,productPrice,productStock,productCategory,productDescription,imagePart FROM product	
</sql:query>

 <body>
<jsp:include page="HeaderBlack.jsp" />
    <br>
    <h2 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"><span style="color: rgb(190, 30, 45, .9); margin-left: 16px;">Browse</span> Products</h2>
    <div class="name">
      <div class = "filter" >
        <h3 style="font-family: 'Segoe UI',sans-serif; font-weight: 400;">Price </h3>
      <div class ="filter-section">
          <input type="text" class="startingprice" placeholder="NRS: " ><samp> To </samp> 
          <input type="text" class="finalprice" placeholder="NRS: ">
      </div>
      <br>
      <button type="submit" class="Apply-button" >Apply</button><br><br>
      <div class="content">
            <div class="status">
              <p class="name"> Status</p>
              <div class="checkboxes">
                <input type="checkbox" name="status" value="out-of-stock" class="checkbox-1">
                Out of Stock</input>
                <br><br>
                <input type="checkbox" name="status" value="in-stock" class="checkbox-2">
                In Stock</input>
              </div>
            </div> 
            <div class="cameraType">
              <p>Camera Type</p>
              <div class="checkboxes-2">
                <input type="checkbox" name="DSLR" value="DSLR" class="Bridge-camera-checkbox">
                DSLR Camera</input><br><br>
                <input type="checkbox" name="Bridge-camera" value="in-stock" class="Bridge-camera-checkbox">
                Bridge Camera</input><br><br>
                <input type="checkbox" name="Bridge-camera" value="in-stock" class="Bridge-camera-checkbox">
                Action Camera </input><br><br>
                <input type="checkbox" name= "Film Camera" value="in-stock" class="Bridge-camera-checkbox">
                Film Camera </input>
              </div>
            </div>
            <div class="Brand">
              <p>Brand</p>
              <div class="camera-Brand">
                <input type="checkbox" name="DSLR" value="Canon" class="camerabrand">
                Canon</input><br><br>
                <input type="checkbox" name="Bridge-camera" value="in-stock" class="camerabrand">
                Sony</input><br><br>
                <input type="checkbox" name="Bridge-camera" value="in-stock" class="camerabrand">
                Nikon </input><br><br>
                <input type="checkbox" name= "Filim Camera" value="in-stock" class="camerabrand">
                Panasonic </input>
              </div>
            </div>
      </div>
</div> 
    </div>
    
    <c:forEach var="product" items="${productPull.rows}">
    <div class="cards">
      <div class="product-card">
        <img src="${pageContext.request.contextPath}/resources/${product.imagePart}" alt="${pageContext.request.contextPath}/resources/image.jpg">
        <div class="product-details">
          <h2 class="product-title">${product.productName}</h2>
          <br>
          <p class="product-price">$${product.productPrice}</p><br>
          <p class="product-price">Category: ${product.productCategory}</p><br>
          <br>
          <h2 class="product-title">Stock :${product.productStock}</h2>
          <p class="product-description">${product.productDescription}</p>
          <a href="#" class="btn">Add to Cart</a>
        </div>
      </div>  
    </div>
    </c:forEach>
    <jsp:include page="footer.jsp" />
  </body>
  </html>
