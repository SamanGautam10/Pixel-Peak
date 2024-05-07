
.0<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    * {
        margin : 0;
        padding: 0;
        font-family: sans-serif;
        box-sizing: border-box;
    }
    body{
        background-color: black;
    }
    .navbar{
    width: 100%;
    padding: 30px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    user-select: none;
    }
    .logo{
    width: 160px;
    margin-top: -10px;
    cursor: pointer;
}
.navbar ul li{
    list-style: none;
    display: inline-block;
    margin: 20px;
}
.navbar ul li a{
    
    text-decoration: none;
    text-transform: uppercase;
    color: white;
    font-weight: 600;
    padding: 15px;
    /* margin-left: 20px; */
}
.navbar li a:hover{
    border-bottom: 3px solid green;
}
.navbar a:hover{
    color: rgb(255, 255, 255);
}
    </style>
<body>
    
    <div class="navbar">
        <img class="logo" src="../images/icon.png">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Products</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Profile</a></li>
        </ul>
    </div>
</body>
</html>