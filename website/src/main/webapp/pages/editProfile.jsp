<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="util.StringUtils" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Profile</title>
</head>
<body>
    <h1>Edit Profile</h1>
    <form action="../UpdateProfileServlet" method="post">
        <input type="hidden" name="userId" value="${param.userId}">
        <label>User Name:</label>
        <input type="text" name="userName" value="${param.userName}">
        <br>
        <label>Email:</label>
        <input type="text" name="email" value="${param.email}">
        <br>
        <label>Gender:</label>
        <input type="text" name="gender" value="${param.gender}">
        <br>
        <label>Phone:</label>
        <input type="text" name="phone" value="${param.phone}">
        <br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
