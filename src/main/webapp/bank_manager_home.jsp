<%@page import="com.jsp.dto.BankManager"%>
<%@page import="com.jsp.service.BankManagerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<style>
 html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: Arial, sans-serif;
            background-image: url("approved-rejected.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        #navbar {
            width: 100%;
            height: 80px;
            background-color: #404040;
            color: white;
            display: flex;
        }

        #logo {
            width: 30%;
            height: 70px;
            background-color: #404040;
            color: white;
            display: flex;
        }

        #name {
            width: 30%;
            height: 70px;
            background-color: #404040;
            color: white;
            font-size: 50px;
            font-family: 'Franklin Gothic Medium';
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #content {
            color: white;
            width: 40%;
            height: 70px;
            background-color: #404040;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        #buttons {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .button {
            background-color: #ffcc00;
            color: #2d2d2d;
            border: none;
            padding: 20px;
            border-radius: 4px;
            cursor: pointer;
            margin: 10px 0;
            text-decoration: none;
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .buttons i {
            margin-right: 10px;
        }

        .button:hover {
            background-color: #2d2d2d;
            color: #ffcc00;
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
	BankManager bankManager = bankManagerService.getBankManagerById(managerId);
	String bname = bankManager.getM_name();
	%>

	<form action="Home" method="post">
<div id="navbar">
		<div id="logo">
			<img src="logo.png" alt="logo">
		</div>
		<div id="name">BOB Bank</div>
		<div id="name"><%= bname %></div>
		<div id="content">
		 <a href="bank_manager_home.jsp"
			class="button">Home Page</a>
		</div>
		
</div>
		<div id="buttons">
			<a href="allCustomers.jsp" class="button"><i class="fas fa-user" ></i>&nbsp All Customers</a> <a
				href="viewApprovedCustomers.jsp" class="button"><i class="fas fa-check" ></i>&nbsp Approved Customers</a>
				 <a href="viewUnApprovedCustomers.jsp" class="button"><i class="fas fa-times" ></i>&nbsp UnApproved Customers</a> 
				<a href="Home.jsp" class="button"><i class="fas fa-sign-out-alt" ></i>&nbsp Log Out</a>
		</div>
	</form>
</body>
</html>
