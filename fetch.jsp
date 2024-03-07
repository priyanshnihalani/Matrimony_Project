<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Display Images</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<%
    // Define the image format
    String imageFormat = "image/jpg";
    
    // Create a list to store the encoded image strings
    List<String> encodedImageStrings = new ArrayList<>();
    
    try {
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "");
        Statement stmt = cn.createStatement();
        String query = "SELECT imagepath FROM image"; // Fetch all images
        ResultSet rs = stmt.executeQuery(query);
        
        // Loop through the result set to fetch all images
        while(rs.next()) {
            byte image[] = rs.getBytes("imagepath");
            String encodedImageString = Base64.getEncoder().encodeToString(image); 

            encodedImageStrings.add(encodedImageString); // Add each encoded image string to the list
        }
        
    } catch (Exception e) {
        e.printStackTrace(); // Print any errors
    }
    %>
    	<div class="flex w-[100%] flex-wrap justify-center">
    <% 
    // Display each image on the web page
    for (String encodedImageString : encodedImageStrings) {
%>
    <img alt="Image" src="data:image/<%= imageFormat %>;base64,<%= encodedImageString %>" width="400" height="400" class="m-3 border-2">
<%
    }
%>
	</div>
</body>
</html>
