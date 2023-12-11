<%@page import="com.jsp.dto.Customer"%>
<%@page import="com.jsp.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deposit</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: url('WDeposit.jpeg') no-repeat center center fixed;
    background-size: cover;
}
.navbar {
    background-color: #4d4d4d;
    color: #fff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
}

.bank-name {
	color:white;
    font-size: 24px;
    font-weight: bold;
}

  .button {
    padding: 10px 20px;
    font-size: 18px;
    background-color: #0059b3; 
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
    transition: background-color 0.3s;
  }
  
  .button:hover {
    background-color: #00cc00; 
  }

.container {
    background-color: #99bbff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    padding: 30px;
    border-radius: 10px;
    width: 300px;
    text-align: center;
    opacity: 0.9;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}


h1 {
	font-weight:bold;
    color: #333;
}

form {
    margin-top: 20px;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
}

input[type="text"],
input[type="number"] {
    width: 90%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
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
    <span class="bank-name">BOB Bank</span>
    <a href="customerHomePage.jsp" class="button">Customer Home Page</a>
</div>
<div class="container">
    <h1>DEPOSIT</h1><br>
    <form action="depositMoney" method="post">
        <div class="form-group">
            <label for="accountId">Account ID:</label><br>
            <input type="text" name="c_accountId" value="<%=customer.getC_id()%>" readonly>
        </div>
        <div class="form-group">
            <label for="depositAmount">Deposit Amount:</label><br>
            <input type="number" name="c_depositAmount" required>
        </div>
        <button type="submit" class="button">Deposit</button>
    </form>
</div>
</body>
</html>
