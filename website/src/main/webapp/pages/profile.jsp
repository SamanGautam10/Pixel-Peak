<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
</head>

<link rel="stylesheet" href="../stylesheets/dashboard.css">
<link href='https://fonts.googleapis.com/css?family=Varela Round' rel='stylesheet'>

<sql:setDataSource var="dbConnection" driver="com.mysql.cj.jdbc.Driver" 
url="jdbc:mysql://localhost:3306/pixelpeak" user="root" password=""/>

<sql:query var="register" dataSource="${dbConnection}">
    SELECT id, UserName, Email, Gender, Phone FROM register
</sql:query>

<style>
    body{
        overflow: hidden;
        overflow-x:hidden ;
        background-color: rgb(149, 150, 150);
    }
    .userpic{
        background-color: rgb(129, 128, 127);
        border-radius: 200px;
    height:120px;
    width: 120px;
left: 75px;
position: relative;
    }
    .link  a{
        left: 60px;
        position: relative;
        margin-top: 5%;
        display: flex;
        margin-bottom: 30px;
        text-decoration: none;
        color: black;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 23px;
    }
    link{
        position:relative ;
        top: 30px;
    }
    .main{
        display: inline-block;
        padding: 5px;
        background-color: rgb(209, 202, 202);
        width:20%  ;
        height: 425px;
    }
    .userpic{
            background-image: url();
            margin-top: 10px;
    }
    .main button
    {
        position: relative;
        background-color: rgb(193, 61, 61);
        border-radius: 30px;
        border:1px solid black;
       height: 40px;
       width: 90px;
     left: 60px;
     font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size: 15px;
padding: 5px;
color: white;
cursor: pointer;

    }
    .info button{
        background-color: rgb(62, 62, 62);
        border-radius: 120px;
        height: 40px;
        border: 1px  solid  black;
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        font-size: 15px;
padding: 5px;
color: white;
align-items: center;
cursor: pointer;
position: relative;
left: 500px;
    }
    .info button:hover{
       background-color: rgb(105, 105, 105);
       transition: 0.5s;
       
    }
    .info{
        position: relative;
        display: inline-block;
        height: 425px;
        width: 78%;
        padding: 5px;
        background-color: rgb(216, 214, 214);
      top: 33px;
    }
    .text{
        margin: 30px;
    }
    
    .text p{
        position: relative;
        font-size: 20px;
    }
</style>

<body>
   <br><br><br><br>
    <div class="main">
     <div class="userpic">
     </div>
     <div class="link">
        <ul>
            <br>
    <a href="">Home</a>
    <a href="">Product</a>
    <a href="">AboutUs</a>
   <Button type="submit">Logout</Button>
        </ul>
     </div>
    </div>
    <div class="info">
<div class="text">
    <p style="border-bottom: 2px solid black;width: 120px;">
        About You:
        <c:choose>
        <c:when test="${empty register.rows}">
            <p>No user found.</p>
        </c:when>
        <c:otherwise>
            <c:forEach var="user" items="${register.rows}">
    </p>
    <br><br>
    <P> UserName : ${user.userName}</P>
    <hr>
    <P> Gender : ${user.gender}</P>
    <hr>
    <P> Phone:${user.phone}</P>
    <hr>
    <P> Email:${user.email}</P>
    
    <a href="editProfile.jsp?userId=${user.id}&userName=${user.userName}&phone=${user.phone}&email=${user.email}&gender=${user.gender}">
    	<button>Edit Profile</button> 
	</a>
    </c:forEach>
        </c:otherwise>
    </c:choose>
    </div>
	
</div>
</body>
</html>
