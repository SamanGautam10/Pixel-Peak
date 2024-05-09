<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
</head>

<link rel="stylesheet" href="../stylesheets/dashboard.css">
<link href='https://fonts.googleapis.com/css?family=Varela Round' rel='stylesheet'>

<sql:setDataSource var="dbConnection" driver="com.mysql.cj.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/pixelpeak" user="root" password=""/>

<sql:query var="userCount" dataSource="${dbConnection}">
	SELECT COUNT(*) AS count FROM register
</sql:query>

<c:set var="count" value="${userCount.rows[0].count}" />

<body>
<!-- main navigation bar -->
    <jsp:include page="adminheader.jsp" />


    <!-- Stats of the company -->
    <div class="welcome-back">
        <p class="span-welcome">Welcome Back, Admin</p>
    </div>

    <!-- card for stats -->
    <div class="card-row">
        <div class="column-card">
            <div class="card">
                <img src="../resources/growth.png" alt="" >
                <p>No. of Sales: </p>
            </div>
        </div> 

        <div class="column-card">
            <div class="card">
                <img src="../resources/growth.png" alt="" >
                <p>Overall Profit: </p>
            </div>
        </div>

        <div class="column-card">
            <div class="card">
                <img src="../resources/user-icon.png" alt="" >
                <p>Total Users: ${count}</p>
            </div>
        </div>

        <div class="column-card">
            <div class="card">
                <img src="../resources/total-order.png" alt="" >
                <p>Total Orders: </p>
            </div>
        </div>
    </div>
</body>
</html>