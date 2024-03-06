<%@page import="java.sql.*" %>
<html>
<head><title>View All Employees</title></head>
<body>

<%
        String userId = request.getParameter("id");
     try {
            // Register the driver
            Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "");
            Statement stmt = cn.createStatement();
            stmt.executeUpdate("delete from signup where id = '"+userId+"' ");
            response.sendRedirect("users.jsp");
     }
     catch(Exception e){
        out.println(e);
     }
%>
</body>
</html>