<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url(../images/flat-lay-desk-concept-with-copyspace.jpg);
        }
        .form {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            position: absolute;
            top: 50%;
            left: 50%;  
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.4);
            display: none;
        }
        .form2{
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.4);
        }
        input[type="text"], input[type   ="password"], input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4a4949;
            color: #ffffff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #000000;
        }
        a {
            text-decoration: none;
            color: rgb(255, 0, 0);
        }
        a:hover {
            color: #30b11d;      
        }
    </style>
</head>
<body>
    <div class="conatiner">
        <form action="../register" method="post">
            <div class="form2">
                <p style="color: brown; font-weight: 400px; font-size: 20px; border-bottom: 2px solid red; width: 120px">Registration :</p>
                <br>
                <label >User Name:</label>
                <input type="text" id="username" name="UserName" required>
                <br> <br>
                <label>Email:</label>
                <input type="text" id="email" name="Email" required>
                <br><br>
                <label >Gender:</label><input type="radio"  value='male' name="Gender" > <label >Male</label>&nbsp;&nbsp;
                <input type="radio" value='female' name='Gender' ><label >Female</label>
                <br><br>
                <label >Phone:</label>
                <input type="text" id="email" name="Phone" required>
                <br><br>
                <label >Password</label>
                <input type="password" id="email" name="Password" required>
                <br><br>
                <input type="submit" value="Submit">
                <p>Already a Memeber ? &nbsp;<a href="login.jsp">Login Here</a></p>
            </div>
        </form>
    </div>
    
    
</body>
</html>
