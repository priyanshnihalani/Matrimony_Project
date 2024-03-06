<%@page import="java.sql.*" %>
<html>
    <head></head>
    <body>
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String message = request.getParameter("message");
            try {
                Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "");
                PreparedStatement ps;
                ps = cn.prepareStatement("insert into contact (name, email, message) values(?,?,?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, message);
                ps.executeUpdate();
                response.sendRedirect("index.jsp");
            }
            catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>