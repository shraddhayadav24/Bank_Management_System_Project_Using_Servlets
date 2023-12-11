<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
			background: url('W digital-rupee.jpg') no-repeat center center fixed;
    		background-size: cover;
        }

        #navbar{
   width: 100%;
   height: 70px;
   background-color: #404040;
   color:white;
   display: flex;
   box-sizing: boder-box;
}

*{
    margin: 0;
    padding: 0;
    background-size: cover;
  	background-position: center;
  	background-attachment: fixed;
}

a {
	color:white;
    padding: 5px 20px;
    text-decoration: none;
}

#logo{
    width: 30%;
    height:70px;
    background-color: #404040;
    color: white;
    display: flex;
}

#name{
    width: 30%;
    height: 70px;
    background-color: #404040;
    color:white;
    font-size: 50px;
    font-family: 'Franklin Gothic Medium';
    display: flex;
}

#content{
    color: white;
    width: 50%;
    height: 70px;
    background-color: #404040;
    display: flex;
    justify-content: space-around;
    align-items: center;
}

        .bank-name {
            font-size: 24px;
            font-weight: bold;
        }
        .container {
        	border-color:#bfbfbf;
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #bfbfbf;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.6);
            margin-top: 20px;
            opacity:0.9;
            align-content: center;
            margin-left: 60px;
            margin-top: 80px;
        }

        h1 {
            color: #0080ff;
        }

        form {
        	
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

   label {
   	display: block;
   	font-weight: bold;
   }

   input[type="text"],
   input[type="password"],
   input[type="number"] {
   	width: 90%;
	padding: 10px;
    border-radius: 5px;
   }
  .button {
    padding: 10px 20px;
    font-size: 18px;
    background-color: #0059b3; 
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
    transition: background-color 0.3s;
  }
  
  .button:hover {
    background-color: #00cc00; 
  }
    </style>
</head>
<body>


<div id="navbar">
		<div id="logo">
			<img src="logo.png" alt="logo">
		</div>
		<div id="name">BOB Bank</div>
		<div id="content">
		   <a href="Home.jsp" class="button">BOB Home Page</a>
		</div>
		
</div>

<div class="container">
    <h1>User Login Page</h1>
    <form action="CustomerSignUp" method="post">
        <div class="form-group">
            <label for="c_id">Customer ID</label><br>
            <input type="number" name="c_id" required>
        </div>
        <div class="form-group">
            <label for="c_username">Username</label><br>
            <input type="text" name="c_username" required>
        </div>
        <div class="form-group">
            <label for="c_password">Password</label><br>
            <input type="password" name="c_password" required>
        </div>
        <div class="form-group">
            <input type="submit" class="button" value="Login">
        </div>
    </form>
</div>
</body>
</html>
