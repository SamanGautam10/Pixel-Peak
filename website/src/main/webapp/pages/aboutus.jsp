<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
</head>
<style>
body {
  margin: 0;
  padding: 0;
}

.main {
  font-family: Arial, sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  height:auto;
  padding:15px
  background-color: #f2f2f2;
}

.form {
  width: 400px;
  background-color: #fff;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
  padding: 20px;
}

.form h2 {
  margin-bottom: 20px;
  color: #333;
}

.field {
  margin-bottom: 20px;
}

.field label {
  font-weight: bold;
}

.field input[type="text"],
.field input[type="email"],
.field textarea {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-sizing: border-box;
}

.field textarea {
  resize: none;
  height: 120px;
}

.field button {
 background-color: #007bff;
  color: #fff;
  border: none;
  padding: 12px 20px;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  display: block; /* Make the button a block-level element */
  margin: 0 auto; /* Center the button horizontally */
}

.field button:hover {
  background-color: #0056b3;
}
.image img{
    position: relative;
height: 450px;
width: 600px;
margin-left: 50px;
border-radius: 10px;
}

</style>
<body>
<jsp:include page="HeaderBlack.jsp"/>   
<div class="main">
    <div class="form">
      <h2>Contact Us</h2>
      <form action="#" method="POST">
        <div class="field">
          <label for="name">Name:</label>
          <input type="text" id="name" name="name" required>
        </div>
        <div class="field">
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required>
        </div>
        <div class="field">
          <label for="message">Message:</label>
          <textarea id="message" name="message" required></textarea>
        </div>
        <div class="field">
          <button type="submit">Submit</button>
        </div>
      </form>
    </div>
  </div>
       <jsp:include page="footer.jsp"/>    
</body>
</html>