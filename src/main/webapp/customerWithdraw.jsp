<%@page import="com.jsp.dto.Customer"%>
<%@page import="com.jsp.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Withdrawal</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #80ffff;
	margin: 0;
	padding: 0;
}

.navbar {
	background-color: #333;
	color: #fff;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
}

.bank-name {
	font-size: 24px;
	font-weight: bold;
}

.button {
	text-decoration: none;
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-top: 20px;
}

h1 {
	color: #333;
}

form {
	margin-top: 20px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 10px;
}

input[type="text"], input[type="password"], input[type="number"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 20px;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
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
	Customer customer = customerService.getCustomerById(cust_Id);
	%>
	<div class="navbar">
		<span class="bank-name"> BOB Bank </span> <a
			href="customerHomePage.jsp" class="button">Customer Home Page</a>
	</div>
	<div class="container">
		<h1>Withdraw Money</h1>

		<form action="withdrawalMoney" method="post">
			<label for="id">Customer ID:</label> 
			<input type="text" name="c_id" value="<%=customer.getC_id()%>" required><br><br>
			<label for="username">Username:</label> 
			<input type="text" name="c_username" required><br> <br> 
			<label for="password">Password:</label> 
			<input type="password" name="c_password" required><br> <br> 
			<label for="withdrawAmount">Withdraw Amount:</label> 
			<input type="number" name="c_withdrawAmount" required><br> <br> 
			<input type="submit" value="Withdraw">
		</form>

	</div>
</body>
</html>
