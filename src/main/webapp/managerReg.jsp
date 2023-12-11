<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Registration</title>
</head>
<body>
<style>
  body {/* 
    display: flex; */
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-image: url('RegisterManager.png') ; 
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center; 
    font-family: Arial, sans-serif;
}
.navbar {
	color: #fff;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
	font-weight: bold;
}
.container {
    background-color: #f0f8ff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 10px;
    max-width: 400px;
    text-align: center;
    opacity: 0.9;
    margin-left: 65%;
    margin-top: 200px;
}

h1 {
    margin: 0;
    padding-bottom: 20px;
}

table {
	
    width: 100%;
}

td {
    padding: 10px;
}

label {
    display: block;
    text-align: right;
    padding-right: 10px;
}

.button {
    padding: 10px 20px;
    font-size: 18px;
    background-color: #00cc00;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.button:hover {
    background-color: #0059b3;
}

.button:active {
    background-color: #3e8e41;
    box-shadow: 0 5px #666;
    transform: translateY(4px);
}

.create-account {
    width: 110px;
    height: 20px;
    font-size: 15px;
}
a{
text-decoration: none;
}
</style>
</head>
<body>
	<div class="navbar">
		<span class="bank-name">BOB BANK </span> 
		<a href="Home.jsp" class="button">BOB Home Page</a>
	</div>
<div class="container">
	<form action="SignUp" method="post">
		<table>
			<tr>
				<td colspan="2" align="center">
					<h1>Manager Registration</h1>
				</td>
			</tr>
			<tr>
				<td>Manager name</td>
				<td><input type="text" name="m_name" required></td>

			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="m_username" required></td>

			</tr>
			<tr>
				<td>Email Id</td>
				<td><input type="email" name="m_email" required></td>

			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="m_password" required></td>

			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" class="button create-account" 	value="Register"
					style="width: 150px; height: 40px; font-size: 15px; background-color: #00cc00; color: white; cursor: pointer;">
				</td>
			</tr>

		</table>
	</form>
</div>
</body>
</html>