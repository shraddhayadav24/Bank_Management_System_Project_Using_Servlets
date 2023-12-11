<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete customer</title>
</head>
<style>
body{
    background-color: #80ffff;
    margin:0;
    padding:0;
    font-family: Arial, sans-serif;
    }
#navbar {
	width: 100%;
  	height: 70px;
   	background-color: #404040;
	color: #fff;
	display: flex;
	justify-content: space-between;
	align-items: center;
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
    align-items:center;
    font-family: 'Franklin Gothic Medium';
    display: flex;
}
#content{
    color: white;
    width: 30%;
    height: 70px;
    background-color: #404040;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.container {
	width: 70%;
	margin: 0 auto;
	padding: 20px;
	background-color: #ffffff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
	text-align: center;
}

table, th, td {
	border: 1px solid #ccc;
}

th, td {
	padding: 10px;
	text-align: center;
}

th {
	background-color: #333;
	color: #fff;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

h1{
	text-align: center;
}

.button {
	text-decoration: none;
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.button:hover {
	background-color: #2d2d2d;
    color: #ffcc00;
}

form {
	text-align: center; 
}

form input[type="submit"] {
    margin: 0 auto;
    display: block;
}

</style>
<body>
<div id="navbar">
		<div id="logo">
			<img src="logo.png" alt="logo">
		</div>
		<div id="name">BOB Bank</div>
		<div id="content">
		 <a href="allManagers.jsp" class="button">All Manager's</a>
		</div>
</div>
<div class="container">
	<h1>Are you sure you want to delete this manager?</h1>
	<form action="delCustomer" method="post">
		ID: <input type="number" name="id" 	value="<%= request.getParameter("id") %>" readonly><br><br>
			<input class="button" type="submit" name="Delete" value="Delete">
	</form>
</div>
</body>
</html>