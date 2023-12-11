<%@page import="com.jsp.dto.Customer"%>
<%@page import="com.jsp.service.CustomerService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Account Details</title>
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
.customer-home-button {
	text-decoration: none;
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.customer-home-button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<%
	HttpSession httpSession = request.getSession();
	String cid = (String) httpSession.getAttribute("sessionid");
	String cusername = (String) httpSession.getAttribute("sessionname");
	String spassword = (String) httpSession.getAttribute("sessionpassword");
	int cust_Id = Integer.parseInt(cid);

	CustomerService customerService = new CustomerService();
	Customer e = customerService.getCustomerById(cust_Id);
	%>
	<div id="navbar">
		<div id="logo">
			<img src="logo.png" alt="logo">
		</div>
		<div id="name">BOB Bank</div>
		<div id="content">
		  <a href="customerHomePage.jsp" class="button">Customer Home Page</a>
		</div>
</div>
	<div class="container">
	
		<h1>Account Details</h1>
		<table border="1" cellspacing="0" cellpadding="1">
			<tr>
				<th>Customer ID</th>
				<th>Customer Name</th>
				<th>Username</th>
				<th>Email</th>
				<th>Address</th>
				<th>Gender</th>
				<th>Birthdate</th>
				<th>Mobile Number</th>
				<th>Status</th>
				<th>Account Balance</th>
			</tr>
			<tr>
				<td><%=e.getC_id()%></td>
				<td><%=e.getC_name()%></td>
				<td><%=e.getC_username()%></td>
				<td><%=e.getC_email()%></td>
				<td><%=e.getC_address()%></td>
				<td><%=e.getC_gender()%></td>
				<td><%=e.getC_birthdate()%></td>
				<td><%=e.getC_mobno()%></td>
				<td><%=e.getC_status()%></td>
				<td><%=e.getAccount_balance()%></td>

			</tr>
		</table>
	</div>
</body>
</html>
