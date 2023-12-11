<%@page import="com.jsp.service.BankManagerService"%>
<%@page import="com.jsp.dto.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View UnApproved Customer</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #80ffff;
	margin: 0;
	padding: 0;
}

.container {
	width: 80%;
	margin: 0 auto;
	padding: 20px;
	background-color: #ffffff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	text-align: center;
}

/* Style the table */
table {
	width: 100%;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ccc;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #333;
	color: #fff;
}

/* Style alternating rows for better readability */
tr:nth-child(even) {
	background-color: #f2f2f2;
}

/* Style the table header and data cells */
th, td {
	padding: 10px;
}

/* Add some hover effect to the table rows */
tr:hover {
	background-color: #ddd;
}
/* CSS for the navigation bar */
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
h1{
text-align: center;
}

</style>
</head>
<body>
	<%
	HttpSession bank_manager_httpSession = request.getSession();
	String b_id = (String) bank_manager_httpSession.getAttribute("managersessionid");
	String b_username = (String) bank_manager_httpSession.getAttribute("managerusername");
	String b_password = (String) bank_manager_httpSession.getAttribute("managerpassword");
	int managerId = Integer.parseInt(b_id);

	BankManagerService bankManagerService = new BankManagerService();
	List<Customer> customers = bankManagerService.viewAllUnApprovedBankCustomer();
	%>
	<div id="navbar">
		<div id="logo">
			<img src="logo.png" alt="logo">
		</div>
		<div id="name">BOB Bank</div>
		<div id="content">
		 <a href="bank_manager_home.jsp" class="button">BankManager Home Page</a>
		</div>
</div>
	<h1>List Of UnApproved Customers</h1>


	<%
	if (customers != null) {
	%>

	<table border="2px" cellspacing="0" cellpadding="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>User-Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>Password</th>
			<th>Gender</th>
			<th>Birth Date</th>
			<th>Mobile No</th>
			<th>Account Balance</th>
			<th>Delete</th>
		</tr>

		<%
		for (Customer c : customers) {
		%>
		<tr>
			<td><%=c.getC_id()%></td>
			<td><%=c.getC_name()%></td>
			<td><%=c.getC_username()%></td>
			<td><%=c.getC_email()%></td>
			<td><%=c.getC_address()%></td>
			<td><%=c.getC_password()%></td>
			<td><%=c.getC_gender()%></td>
			<td><%=c.getC_birthdate()%></td>
			<td><%=c.getC_mobno()%></td>
			<td><%=c.getAccount_balance()%></td>
			<td><a href="deleteCustomer.jsp?id=<%=c.getC_id()%>">Delete</a></td>

		</tr>
		<%
		}
		%>
	</table>
	<%
	} else {
	%>
	<p>No Data</p>
	<%
	}
	%>
</body>
</html>