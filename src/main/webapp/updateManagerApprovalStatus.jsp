<%@page import="com.jsp.service.AdminService"%>
<%@page import="com.jsp.service.BankManagerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Managers</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #80ffff;
	margin: 0;
	padding: 0;
}
#formdiv{
	width: 80%;
	margin: 0 auto;
	padding: 20px;
	background-color: #ffffff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	text-align: center;
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

form {
	text-align: center; /* Center-align the form content */
}

/* Center the button horizontally within the form */
form input[type="submit"] {
    margin: 0 auto;
    display: block;
}
</style>
</head>
<body>

<% HttpSession a_httpSession=request.getSession();
String aid=(String) a_httpSession.getAttribute("sessionid");
int adm_id=Integer.parseInt(aid);
%>
<div id="navbar">
		<div id="logo">
			<img src="logo.png" alt="logo">
		</div>
		<div id="name">BOB Bank</div>
		<div id="content">
		 <a href="allManagers.jsp"
			class="button">All Manager's</a>
		</div>
</div>
<div id="formdiv">
<form action="updateManagerStatus">
AdminId: <input type = "number" name = "admin_id" value = "<%= adm_id %>"><br><br>
ManagerId: <input type = "number" name = "manager_id" value = "<%= request.getParameter("id") %>"><br><br>
Status:<br><br>
Approved: <input type="radio" id="yes" name="status" value="approved" required>
UnApproved: <input type="radio" id="no" name="status" value="unapproved" required>
<br><br>
<input class="button" type = "submit" value = "change">
</form>
</div>
</body>
</html>

