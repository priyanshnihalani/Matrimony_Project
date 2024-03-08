<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.time.*"%>
<!DOCTYPE html>
<html>
<head>

<link rel="shortcut icon" href="project1logo.ico" type="image/x-icon">
<link rel="stylesheet" href="output.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Profiles</title>
<style>
</style>
</head>
<body class="font-[Rubik]">
	<%
		StringBuilder concatenatedValues = new StringBuilder();
		Cookie[] cookies = request.getCookies();
		String username = null;
		String gender = null;
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user")) {
					//decodedValue = URLDecoder.decode(cookie.getValue(), "UTF-8");
					username = URLDecoder.decode(cookie.getValue(), "UTF-8");
				}
				else if(cookie.getName().equals("gender")){
					gender = URLDecoder.decode(cookie.getValue(), "UTF-8");
				}
			}
		}
		String imageFormat = "image/jpg";

		// Create a list to store the encoded image strings
		List<String> encodedImageStrings = new ArrayList<>();
		Connection cn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "");
			st = cn.createStatement();
			String query = "";
			if(gender.equals("male")){
				query = "select imagepath, firstname, surname, dob, city, occupation, hobbies, relegion, cast from signup where gender = 'female'";
			}
			else if(gender.equals("female")){
				query = "select imagepath, firstname, surname, dob, city, occupation, hobbies, relegion, cast from signup where gender = 'male'";
			}
			rs = st.executeQuery(query);
			//if()
			
	%>

	<h1 class="text-center font-bold text-[28px] mt-10 ">
		<span class="text-[pink]">Welcome, </span><span class="text-gray-300"><%=username%>
		</span>
	</h1>
	<div
		class="flex bg-blue-000 space-x-6 mt-[50px] p-5 justify-center flex-wrap overflow-y-scroll">
		<%
			while (rs.next()) {
					byte image[] = rs.getBytes("imagepath");
					String encodedImageString = Base64.getEncoder().encodeToString(image);
		%>

		<div
			class="bg-white p-6 rounded-lg w-[300px] shadow-md mb-10 transition-transform duration-300  hover:-translate-x-0 hover:-translate-y-4">
			<div class="flex justify-center">
				<img alt="Image"
					src="data:image/<%=imageFormat%>;base64,<%=encodedImageString%>"
					class="h-32 w-32 rounded-full object-cover">
			</div>
			<h2 class="text-center text-xl font-bold mb-2 mt-10 "><%=rs.getString("firstname") + " " + rs.getString("surname")%></h2>
			<div class="text-center">
				<%
					LocalDate currentDate = LocalDate.now();
							int currentYear = currentDate.getYear();
							int age = currentYear - Integer.parseInt(rs.getString("dob"));
				%>
				<p class="">
					<span class="font-bold">Age:</span>
					<%=age%></p>
				<p class="">
					<span class="font-bold">Occupation:</span>
					<%=rs.getString("occupation")%></p>
				<p class="">
					<span class="font-bold">City:</span>
					<%=rs.getString("city")%></p>
				<p class="">
					<span class="font-bold">Hobbies:</span>
					<%=rs.getString("hobbies")%></p>
				<p class="">
					<span class="font-bold">Religion:</span>
					<%=rs.getString("relegion")%></p>
				<p class="">
					<span class="font-bold">Cast:</span>
					<%=rs.getString("cast")%></p>
				<button
					class="mt-4  shadow-md  text-[pink] font-bold py-2 px-4 rounded">
					View Profile</button>
			</div>
		</div>

		<%
			}
		%>
	</div>
	<%
		} catch (Exception e) {
			out.print(e);
		}
	%>
</body>
</html>