<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    color: #333;
  }
  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
  }
  h1 {
    text-align: center;
    margin-bottom: 20px;
    color: white;
  }
  .contact-form {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  .form-group {
    margin-bottom: 20px;
  }
  .form-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
  }
  .form-group input, .form-group textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  .form-group textarea {
    height: 150px;
  }
  .form-group button {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  .form-group button:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<jsp:include page="header.jsp" />

<div class="container">
  <h1>Contact Us</h1>
  <div class="contact-form">
    <form action="#" method="post">
      <div class="form-group">
        <label for="name">Your Name:</label>
        <input type="text" id="name" name="name" required>
      </div>
      <div class="form-group">
        <label for="email">Your Email:</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="form-group">
        <label for="message">Your Message:</label>
        <textarea id="message" name="message" required></textarea>
      </div>
      <div class="form-group">
        <button type="submit">Send Message</button>
      </div>
    </form>
  </div>
</div>

</body>
</html>
