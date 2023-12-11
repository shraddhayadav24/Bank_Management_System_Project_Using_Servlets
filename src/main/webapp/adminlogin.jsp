<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>
<style>
body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-image: url('WhatBanking.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif;
}

.container {
    background-color: #f0f8ff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 10px;
    max-width: 400px;
    text-align: center;
    opacity: 0.9;
}

h1 {
    margin: 0;
    padding-bottom: 20px;
}

table {
    width: 100%;
}

td {
    padding: 10px;
}

label {
    display: block;
    text-align: right;
    padding-right: 10px;
}

.button {
    padding: 10px 20px;
    font-size: 18px;
    background-color: #00cc00;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.button:hover {
    background-color: #0059b3;
}

.button:active {
    background-color: #3e8e41;
    box-shadow: 0 5px #666;
    transform: translateY(4px);
}

.create-account {
    width: 110px;
    height: 20px;
    font-size: 15px;
}

</style>
</head>
<body>
    <div class="container">
        <form action="adminlogin" method="post">
            <h1>Admin Login</h1>
            <table>
                <tr>
                    <td><label for="a_id">Admin ID:</label></td>
                    <td><input type="number" id="a_id" name="a_id" required></td>
                </tr>
                <tr>
                    <td><label for="a_username">Username:</label></td>
                    <td><input type="text" id="a_username" name="a_username" required></td>
                </tr>
                <tr>
                    <td><label for="a_password">Password:</label></td>
                    <td><input type="password" id="a_password" name="a_password" required></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input class="button" type="submit" value="Login" name="login">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <a href="adminregister.jsp" style="text-decoration: none;">
                            <div class="button create-account">Create Account</div>
                        </a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>

