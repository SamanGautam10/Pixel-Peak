<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import="util.StringUtils" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management</title>
</head>

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

<link rel="stylesheet" href="../stylesheets/dashboard.css">
<link href='https://fonts.googleapis.com/css?family=Varela Round' rel='stylesheet'>

<sql:setDataSource var="dbConnection" driver="com.mysql.cj.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/pixelpeak" user="root" password=""/>

<sql:query var="registers" dataSource="${dbConnection}">
	SELECT id, UserName, Email, Gender, Phone FROM register	
</sql:query>


<body>
<!-- main navigation bar -->
   <jsp:include page="adminheader.jsp" />

    <!-- Table to add and remove products -->
    <c:choose>
    <c:when test="${empty registers.rows}">
        <div class="management">
            <h1 class="heading-one">No User found</h1>
        </div>
    </c:when>
    <c:otherwise>
        <!-- Table to display products -->
        <div class="management">
            <h1 class="heading-one">View Your User</h1>
            <table class="user-table">
                <div class="management-row">
                    <tr>
                        <th>SN</th>
                        <th>User Name</th>
                        <th>Email</th>
                        <th>Gender</th>
                        <th>Phone</th>
                    </tr>
                </div>     
                <c:forEach var="register" items="${registers.rows}">
                    <div class="management-row">
                        <tr>
                            <td>${register.id}</td>
                            <td>${register.UserName}</td>
                            <td>${register.Email}</td>
                            <td>${register.Gender}</td>
                            <td>${register.Phone}</td> 
                        </tr>
                    </div>
                </c:forEach>
            </table>
        </div>
    </c:otherwise>
</c:choose>
</body>
</html>