<%@page import="com.jsp.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Approve Customers</title>
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
<body>
<div id="navbar">
		<div id="logo">
			<img src="logo.png" alt="logo">
		</div>
		<div id="name">BOB Bank</div>
		<div id="content">
		 <a href="Home.jsp"
			class="button">Home Page</a>
		</div>
</div>

	<h1>List of Customers</h1>

	<% CustomerService customerService = new CustomerService();
List<Customer> customers = customerService.getAll();%>

	<table border="2px" cellspacing="0" cellpadding="1">
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
			<th>Approve</th>
			<th>UnApprove</th>
		</tr>
		<%for(Customer c : customers) { %>
		<tr>
			<td><%=c.getC_id()%></td>
			<td><%=c.getC_name()%></td>
			<td><%=c.getC_username()%></td>
			<td><%=c.getC_email()%></td>
			<td><%=c.getC_address()%></td>
			<td><%=c.getC_gender()%></td>
			<td><%=c.getC_birthdate()%></td>
			<td><%=c.getC_mobno()%></td>
			<td><%=c.getC_status()%></td>
			<td><%=c.getAccount_balance()%></td>
			<td><a href="approveCustomerButton.jsp" ?id=<%=c.getC_id()%>">Approve</a></td>
			<td><a href="unapproveCustomerButton.jsp" ?id=<%=c.getC_id()%>">UnApprove</a></td>
		</tr>

		<%} %>
	</table>
</body>
</html>