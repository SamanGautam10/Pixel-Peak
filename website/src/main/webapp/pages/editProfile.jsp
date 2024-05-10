<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Profile</h1>
        <form action="../UpdateProfileServlet" method="post">
            <input type="hidden" name="userId" value="${param.userId}">
            <label for="userName">User Name:</label>
            <input type="text" id="userName" name="userName" value="${param.userName}" required>
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" value="${param.email}" required>
            <label for="gender">Gender:</label>
            <input type="text" id="gender" name="gender" value="${param.gender}">
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" value="${param.phone}">
            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>
