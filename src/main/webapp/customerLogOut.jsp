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
	HttpSession httpsession = request.getSession(false); // Pass false to prevent creating a new session if none exists
	if (httpsession != null) {
		// Invalidate the session to log the user out
		httpsession.invalidate();
		// Redirect to the login page or any other destination
		response.sendRedirect("customerlogin.jsp");
	}
	else{
		response.sendRedirect("customeHomePage.jsp");
	}
	%>
</body>
</html>
