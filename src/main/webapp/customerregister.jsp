<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Registration Page</title>
<style>
body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background: url('money-saving.jpg') no-repeat center center fixed;
    background-size: cover;
    font-family: Arial, sans-serif;
}

  form {
  	border-style:double;
    background-color: #5D3FD3; 
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 10px;
    max-width: 400px;
    text-align: center;
    opacity: 1;
   	color:white;
   	opacity: 0.9;
  }

  table {
    width: 100%;
  }

  td {
    padding: 10px;
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
    background-color: #40ff00; 
  }

</style>
</head>
<body>
<form action="CustomerRegister" method="post">
    <table border="1" cellpadding="10">
        <tr>
            <td colspan="2" align="center">
                <h1>Customer Registration Form</h1>
            </td>
        </tr>
        <tr>
            <td>Customer Name</td>
            <td><input type="text" name="c_name" required></td>
        </tr>
        <tr>
            <td>Birth Date</td>
            <td><input type="date" name="c_bdate" required></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <input type="radio" id="male" name="c_gender" value="Male" required> Male
                <input type="radio" id="female" name="c_gender" value="Female" required> Female
            </td>
        </tr>
        <tr>
            <td>Mobile Number</td>
            <td><input type="number" name="c_number" required></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><input type="text" name="c_address" required></td>
        </tr>
        <tr>
            <td>Username</td>
            <td><input type="text" name="c_username" required></td>
        </tr>
        <tr>
            <td>Email Id</td>
            <td><input type="email" name="c_email" required></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="c_password" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input class="button" type="submit" value="Register">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
