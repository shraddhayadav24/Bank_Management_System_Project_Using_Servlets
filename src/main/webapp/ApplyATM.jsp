<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
        <h1>ATM Request</h1>
        <form action="AccountRequest" method="post">
            <div class="form-group">
                <label for="managerId">Manager_id:</label>
                <input type="number" name="m_id" required>
            </div>
            <div class="form-group">
                <label for="managerName">Manager Username:</label>
                <input type="text" name="m_username" required>
            </div>
            <div class="form-group">
                <label for="managerPass">Manager Password:</label>
                <input type="text" name="m_pass" required>
            </div>
            <div class="form-group">
                <label for="managerEmail">Manager Email:</label>
                <input type="text" name="m_email" required>
            </div>
            <div class="form-group">
                <label for="managerStatus">Manager Status:</label>
                <input type="text" name="m_status" required>
            </div>
            <button type="submit">ATM Request </button>
        </form>
    </div>
</body>
</html>