<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String bride = request.getParameter("bride");
		String groom = request.getParameter("groom");
		String date = request.getParameter("date");
		String rating = request.getParameter("rating");
		String webrating = request.getParameter("webrating");
		String message = request.getParameter("message");
		
		try{
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "");
			PreparedStatement st = cn.prepareStatement("insert into feedback (bridename, groomname, weddingdate, rating, ourwebsite, message) values (?, ?, ?, ?, ?, ?)");
			
			st.setString(1, bride);
			st.setString(2, groom);
			st.setString(3, date);
			st.setString(4, rating);
			st.setString(5, webrating);
			st.setString(6, message);
			st.executeUpdate();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
</body>
</html>