<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();
	String username = null;
	if (cookies != null) {
	    for (Cookie cookie : cookies) {
	        if (cookie.getName().equals("user")) {
	            //decodedValue = URLDecoder.decode(cookie.getValue(), "UTF-8");
	            username = URLDecoder.decode(cookie.getValue(), "UTF-8");
	            break;
	        }
	    }
	}
	if (username == null) {
	    // User is not logged in, proceed to sign page
	    response.sendRedirect("signin.jsp");
	} 
	else{
		response.sendRedirect("profiles.jsp");
		out.println(username);
	}
	%>
</body>
</html>