<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Registration Page</title>
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background: url('de80ca4922b016784c86f80ee5c8966f.gif') no-repeat center center fixed;
    background-size: cover;
    font-family: Arial, sans-serif;
  }

  form {
    border-style:double;
    background-color: #008ae6; 
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 10px;
    max-width: 400px;
    text-align: center;
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
    background-color: #0059b3; 
  }
  
</style>
</head>
<body>
  <form action="adminRegister" method="post">
    <table>
      <tr>
        <td colspan="2">
          <h1>Admin Registration</h1>
        </td>
      </tr>
      <tr>
        <td>Username</td>
        <td><input type="text" name="a_username" required></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="password" name="a_password" required></td>
      </tr>
      <tr>
        <td colspan="2">
          <input class="button" type="submit" value="Register">
        </td>
      </tr>
    </table>
  </form>
</body>
</html>
