<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String name = request.getParameter("fullname");
	
    // Initializing database connection and statement outside try block
    Connection cn = null;
    PreparedStatement st = null;

    try {
        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "");
        st = cn.prepareStatement("select * from signup where email = ? and password = ?");
        st.setString(1, email);
        st.setString(2, password);

        // Execute the PreparedStatement
        ResultSet rs = st.executeQuery();
        
        
        String encodedValue = URLEncoder.encode(name, "UTF-8");
        // Check if insertion was successfull
        if (rs.next()) {
            // Setting up cookie
            String gender = rs.getString("gender");
            Cookie genderCookie = new Cookie("gender", gender);
            genderCookie.setMaxAge(60 * 60 * 24 * 30); // 30 days
            response.addCookie(genderCookie);

            Cookie cookie = new Cookie("user", encodedValue);
            cookie.setMaxAge(60 * 60 * 24 * 30); // 30 days
            response.addCookie(cookie);
            // Redirect to home.jsp upon successful insertion
            response.sendRedirect("index.jsp");
        } else {
            // Handle case where no rows were affected
            String message = "Email or Password is incorrect";
        	//out.print("<p style='color:red'>Email or Password is incorrect</p>");
        	request.setAttribute("message", message);
			RequestDispatcher rd = request.getRequestDispatcher("signin.jsp");
			rd.include(request, response);
        }
    } catch(Exception e) {
        // Log the exception for debugging
        e.printStackTrace(); 
        
        // Forward to an error page or handle the error appropriately
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);  
    }
%>
</body>
</html>
