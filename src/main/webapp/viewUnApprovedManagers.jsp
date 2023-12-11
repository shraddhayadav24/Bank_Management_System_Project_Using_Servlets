<%@page import="com.jsp.service.AdminService"%>
<%@page import="com.jsp.dto.BankManager"%>
<%@page import="com.jsp.service.BankManagerService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View UnApproved Manager</title>
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
<div id="navbar">
		<div id="logo">
			<img src="logo.png" alt="logo">
		</div>
		<div id="name">BOB Bank</div>
		<div id="content">
		 <a href="adminHomePage.jsp" class="button">Admin Home Page</a>
		</div>
</div>
	
	<%
	HttpSession a_httpSession = request.getSession();

	AdminService adminService = new AdminService();
	List<BankManager> managers = adminService.viewAllUnApprovedBankManager();
	%>
	<h1>List Of UnApproved Managers</h1>
	<%
	if (managers != null) {
	%>

	<table border="2px" cellspacing="0" cellpadding="1">
		<tr>
			<th>ID</th>
			<th>User Name</th>
			<th>Email</th>
			<th>Password</th>
			<th>Remove Data</th>
		</tr>

		<%
		for (BankManager b : managers) {
		%>
		<tr>
			<td><%=b.getM_id()%></td>
			<td><%=b.getM_username()%></td>
			<td><%=b.getM_email()%></td>
			<td><%=b.getM_password()%></td>
			<td><a href="deleteManager.jsp?id=<%=b.getM_id()%>">Delete</a></td>

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