<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Feeback Responses</title>
    <link rel="shortcut icon" href="../projectlogo.ico" type="image/x-icon">
    <link rel="stylesheet" href="../output.css">
    <%-- <script src="https://cdn.tailwindcss.com"></script> --%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap"
	rel="stylesheet">

</head>
<body class="font-[Rubik]">
            <h1 class="text-2xl font-bold mb-4 text-center mt-10"><span class="text-[pink]">Received</span> <span class="text-gray-300">Feedbacks</span></h1>
	<%
        try {
            // Register the driver
            Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "");
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM feedback");
            %>

            <div class=" space-x-6 bg-white p-8 rounded-md flex flex-wrap justify-center ">
            <%
            while(rs.next()) {
                int id = rs.getInt("id");
                String bride = rs.getString("bridename");
                String groom = rs.getString("groomname");
                String date = rs.getDate("weddingdate").toString();
                String rating = rs.getString("rating");
                String webrating = rs.getString("ourwebsite");
                String message = rs.getString("message");
                %>

    <!-- Feedback Card -->
        <div class="bg-gray-50 rounded-md p-6 mb-4 shadow-md w-[400px]  mt-[30px]">
            <div class="mb-4">
                <h1 class="text-xl bg-[pink] pl-2 font-bold text-white"><%= id %></h1>
                <h2 class="text-lg font-semibold mt-2"><%= bride %> & <%= groom %></h2>
                <span class="text-gray-500">Date: <%= date %></span>
            </div>
            <div class="mb-4">
                <p><span class="font-semibold">Rating:</span> <%= rating%> / 5</p>
                <p><span class="font-semibold">Website Rating:</span> <%= webrating%> / 5</p>
            </div>
            <div>
                <p class=" font-semibold">Message:</p>
                <p class="text-gray-600">"<%= message %>"</p>
            </div>
        </div>
                <%

            }
            
        } catch (Exception e) {
            out.println("<p>" + e.getMessage() + "</p>");
        }
        %>
</body>
</html>