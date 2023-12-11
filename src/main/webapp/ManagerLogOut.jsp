<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
	<%
	HttpSession bank_manager_httpSession = request.getSession(false); // Pass false to prevent creating a new session if none exists
	if (bank_manager_httpSession != null) {
		// Invalidate the session to log the user out
		bank_manager_httpSession.invalidate();
		// Redirect to the login page or any other destination
		response.sendRedirect("Home.jsp");
	}
	else{
		response.sendRedirect("bank_manager_home.jsp");
	}
	%>
</body>
</html>

