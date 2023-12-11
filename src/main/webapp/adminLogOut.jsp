<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	HttpSession a_httpsession = request.getSession(false); 
	if (a_httpsession != null) {
		// Invalidate the session to log the user out
		a_httpsession.invalidate();
		// Redirect to the login page or any other destination
		response.sendRedirect("Home.jsp");
	}
	else{
		response.sendRedirect("adminHomePage.jsp");
	}
	%>


</body>
</html>