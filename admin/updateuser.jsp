<%@page import="java.sql.*" %>
<html>
<head><title>Update Employee</title></head>
<body>

<%
    String userId = request.getParameter("id");
    String firstname = request.getParameter("firstname");
    String surname = request.getParameter("surname");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String city = request.getParameter("city");
    String occupation = request.getParameter("occupation");
    String hobbies = request.getParameter("hobbies");
    String relegion = request.getParameter("relegion");
    String cast = request.getParameter("cast");

    try {
        // Register the driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish database connection
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "");

        // Prepare SQL update statement using PreparedStatement
        PreparedStatement pstmt = cn.prepareStatement("UPDATE signup SET firstname=?, surname=?, email=?, password=?, dob=?, gender=?, city=?, occupation=?, hobbies=?, relegion=?, cast=? WHERE id=?");

        // Set parameters for the PreparedStatement
        pstmt.setString(1, firstname);
        pstmt.setString(2, surname);
        pstmt.setString(3, email);
        pstmt.setString(4, password);
        pstmt.setString(5, dob);
        pstmt.setString(6, gender);
        pstmt.setString(7, city);
        pstmt.setString(8, occupation);
        pstmt.setString(9, hobbies);
        pstmt.setString(10, relegion);
        pstmt.setString(11, cast);
        pstmt.setString(12, userId);

        // Execute the update query
        int rowsAffected = pstmt.executeUpdate();

        // Close PreparedStatement and Connection
        pstmt.close();
        cn.close();

        // Redirect to the appropriate page after successful update
        if (rowsAffected > 0) {
            response.sendRedirect("users.jsp");
                // out.println(firstname);
        } else {
            out.println("Update failed: No rows affected.");
        }
    } catch (Exception e) {
        out.println(e);
    }
%>
</body>
</html>
