<%@ page import="java.sql.*" %>
<%@ page import="java.net.URLDecoder, java.util.*"%>

<html>
<head>
    <title>Users</title>
    <link rel="shortcut icon" href="../projectlogo.ico" type="image/x-icon">
    <link rel="stylesheet" href="output.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap"
	rel="stylesheet">

</head>
<body class="font-[Rubik]">
            <h1 class="text-2xl font-bold mb-4 text-center mt-10">Users</h1>
	<%
        
        String imageFormat = "image/jpg";
		// Create a list to store the encoded image strings
		List<String> encodedImageStrings = new ArrayList<>();
        try {
            // Register the driver
            Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "");
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM signup");
            %>
                <div class="container">
                <table class=" bg-white rounded my-6">
                <thead>
        <tr class="border-b">
            <th class="px-2 py-2">
                Image
            </th>
            <th class="px-2 py-2">
                First Name
            </th>
            <th class="px-2 py-2">
                Surname
            </th>
            <th class="px-2 py-2">
                Email
            </th>
            <th class="px-2 py-2">
                Password
            </th>
            <th class="px-2 py-2">
                DOB
            </th>
            <th class="px-2 py-2">
                Gender
            </th>
            <th class="px-2 py-2">
                City
            </th>
            <th class="px-2 py-2">
                Occupation
            </th>
            <th class="px-2 py-2">
                Hobbies
            </th>
            <th class="px-2 py-2">
                Religion
            </th>
            <th class="px-2 py-2">
                Cast
            </th>
            <th class="px-2 py-2">
                Actions
            </th>
        </tr>
        </thead>
            <%      
                
            while(rs.next()) {
                int id = rs.getInt("id");
                String firstname = rs.getString("firstname");
                String surname = rs.getString("surname");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String dob = rs.getString("dob");
                String gender = rs.getString("gender");
                String city = rs.getString("city");
                String occupation = rs.getString("occupation");
                String hobbies = rs.getString("hobbies");
                String relegion = rs.getString("relegion");
                String cast = rs.getString("cast");
                byte image[] = rs.getBytes("imagepath");
				String encodedImageString = Base64.getEncoder().encodeToString(image);
                %>

        
        <tbody>
        <tr class="border-b hover:bg-gray-100 space-y-3">
            <td class="px-4 py-2">
                <img alt="Image"
					src="data:image/<%=imageFormat%>;base64,<%=encodedImageString%>"
					class="h-12 w-12 rounded-full object-cover">
            </td>
            <td class="px-4 py-2"><input type="text" value = "<%=firstname%>" id="fname_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="text" value = "<%=surname%>" id="lname_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="email" value = "<%=email%>" id="email_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="password" value = "<%=password%>" id="password_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="text" value = "<%=dob%>" id="dob_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="text" value = "<%=gender%>" id="gender_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="text" value = "<%=city%>" id="city_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="text" value = "<%=occupation%>" id="occupation_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="text" value = "<%=hobbies%>" id="hobbies_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="text" value = "<%=relegion%>" id="relegion_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="text" value = "<%=cast%>" id="cast_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2">
            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 m-1 rounded" type="submit" onclick="updateUser(<%= id %>)">Update</button>

            <button class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 m-1 mt-1 rounded" type="submit" onclick="deleteUser(<%= id %>)">Delete</button>
            

            </td>
        </tr>
        <script>
    function deleteUser(id) {
        window.location.href = "deleteuser.jsp?id=" + id;
    }

    function updateUser(id) {
        // Get the new values from input fields
        var newFirstname = document.getElementById('fname_' + id).value;
        var newSurname = document.getElementById('lname_' + id).value;
        var newEmail = document.getElementById('email_' + id).value;
        var newPassword = document.getElementById('password_' + id).value;
        var newdob = document.getElementById('dob_' + id).value;
        var newgender = document.getElementById('gender_' + id).value;
        var newcity = document.getElementById('city_' + id).value;
        var newoccupation = document.getElementById('occupation_' + id).value;
        var newhobbies = document.getElementById('hobbies_' + id).value;
        var newrelegion = document.getElementById('relegion_' + id).value;
        var newcast = document.getElementById('cast_' + id).value;
        // Add more fields as needed

        // Encode the values for URL
        var encodedFirstname = encodeURIComponent(newFirstname);
        var encodedSurname = encodeURIComponent(newSurname);
        var encodedEmail = encodeURIComponent(newEmail);
        var encodedPassword = encodeURIComponent(newPassword);
        var encodedDob = encodeURIComponent(newdob);
        var encodedGender = encodeURIComponent(newgender);
        var encodedCity = encodeURIComponent(newcity);
        var encodedOccupation = encodeURIComponent(newoccupation);
        var encodedHobbies = encodeURIComponent(newhobbies);
        var encodedRelegion = encodeURIComponent(newrelegion);
        var encodedCast = encodeURIComponent(newcast);

        // Construct the update URL
        var updateUrl = "updateuser.jsp?id=" + id + "&firstname=" + encodedFirstname + "&surname=" + encodedSurname + "&email=" + encodedEmail + "&password=" + encodedPassword + "&dob=" + encodedDob + "&gender=" + encodedGender + "&city=" + encodedCity + "&occupation=" + encodedOccupation + "&hobbies=" + encodedHobbies + "&relegion=" + encodedRelegion + "&cast=" + encodedCast;

        // Redirect to the update URL
        window.location.href = updateUrl;
    }
</script>


        <%
            }
            %>
        </tbody>
            
    </table>
</div>
                <%
            
        } catch (Exception e) {
            out.println("<p>" + e.getMessage() + "</p>");
        }
        %>
</body>
</html>