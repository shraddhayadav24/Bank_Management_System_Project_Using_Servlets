<%@page import="com.jsp.service.CustomerService"%>
<%@page import="com.jsp.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Home Page</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
body {
	font-family: Arial, sans-serif;
	background-image:url("interior-bank-office.jpg");
	background-size: cover;
	background-repeat: no-repeat;
 	background-position: center; 
 	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#navbar{
   width: 100%;
   height: 70px;
   background-color: #404040;
   color:white;
   display: flex;
   box-sizing: boder-box;
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

#button-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }
#buttons {
	height:20%;
	margin-top: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
	padding-left: 20px;
	
}

.button {
            background-color: #ffcc00;
            color: #2d2d2d;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            margin: 10px 0;
            text-decoration: none;
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
            display: flex;
            align-items: center;
            justify-content: center;
        }

.button:hover {
	background-color: #2d2d2d;
	color: #ffcc00;
}

/* .menu-container {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            margin-right: 20px;
        }

        .menu-links {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
        }

        .menu-links li {
            margin-left: 20px;
        }

        .menu-links a {
            text-decoration: none;
            color: #2d2d2d;
        }

        .menu-links a:hover {
            color: #ffcc00;
        } */
         .buttons i {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <% HttpSession httpSession = request.getSession();
        String cid = (String) httpSession.getAttribute("sessionid");
        String cusername = (String) httpSession.getAttribute("sessionname");
        String spassword = (String) httpSession.getAttribute("sessionpassword");
        int cust_Id = Integer.parseInt(cid);
        CustomerService customerService = new CustomerService();
        Customer customer = customerService.getCustomerById(cust_Id);
        String cust_name = customer.getC_name();
    %>
    <form action="Home" method="post">
        <div id="navbar">
            <div id="logo">
                <img src="logo.png" alt="logo">
            </div>
            <div id="name">BOB Bank</div>
            <div id="name"><%= cust_name %></div>
            <div id="content">
                <a href="Home.jsp" class="button"> Home Page </a>
            </div>
        </div>
        <div id="buttons">
            <a href="CustomerAccountDetails.jsp" class="button">
                <i class="fa fa-user" aria-hidden="true"></i>&nbsp Account Details
            </a>
            <a href="customerdeposit.jsp" class="button">
                <i class="fa fa-inr" aria-hidden="true"></i>&nbsp Deposit
            </a>
            <a href="customerWithdraw.jsp" class="button">
 				<i class="fas fa-money-bill-wave"></i>&nbsp Withdrawal
			</a>

            <a href="customerTransferFunds.jsp" class="button">
                <i class="fa fa-exchange" aria-hidden="true"></i>&nbsp Transfer Funds
            </a>
            <a href="customerLogOut.jsp" class="button">
                <i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp Log Out
            </a>
        </div>
    </form>
</body>
</html>
