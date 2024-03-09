<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign In</title>
<%-- <script src="https://cdn.tailwindcss.com"></script> --%>
<link rel="shortcut icon" href="project1logo.ico" type="image/x-icon">
<link rel="stylesheet" href="output.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap"
	rel="stylesheet">
<style>
.custom {
	position: absolute;
	/* top: 50%; */
	left: 50%;
	transform: translate(-50%, -50%);
	border-bottom: 4px solid pink /* width: 120px; */
}

.borders {
	border-bottom: 1px solid grey;
}
</style>
</head>

<body class="bg-gray-100 overflow-scroll font-[Rubik]">

	<div
		class="xl:flex justify-center mt-[100px] lg:flex justify-center md: flex justify-center">
		<img src="project1logo.png" alt="" srcset=""
			class=" w-[170px] mt-[30px]">
	</div>
	<div
		class="
    custom drop-shadow-xl
     xl:drop-shadow-2xl h-[400px] w-[400px] mt-[230px] bg-white 
     rounded-xl lg: drop-shadow-md h-[400px] w-[350px] mt-[230px] 
     md: h-[330px] ">
		<div class="h-[5rem] borders">
			<h1 class="font-bold text-[28px] text-center mt-[10px] ">Sign
				In</h1>
			<p class="text-center text-gray-500  ">It's quick and
				easy.</p>
		</div>
		<form action="signinprocess.jsp" method="post">
			<input type="text" name="fullname" placeholder="Enter Full Name"
				class="
          mt-[20px]
          xl:border-2 p-2  w-[368px] m-3 rounded-lg  
            lg: w-[330px] border-2 mt-1 mb-1" required>
			<input type="text" name="email" placeholder="Email"
				class="
          mt-[10px]
          xl:border-2 p-2  w-[368px] m-3 rounded-lg  
            lg: w-[330px] border-2 mt-1 mb-1" required>
			<input type="password" name="password" placeholder="Enter Password"
				class="
           mt-[10px] 
          xl:border-2 p-2  w-[368px] m-3 rounded-lg  
          lg: w-[330px] border-2 mt-1 mb-1" required>

			<button type="submit"
				class="mt-[30px] xl: border w-[50%] mt-[10px] bg-[] font-semibold rounded-lg ml-[100px] mt-7 py-2   focus:outline-none focus:ring focus:ring-pink-300
                lg: mt-[15px] py-1 w-[40%] text-[16px]">Sign
				In</button>
			<div class="text-center mt-3   text-blue-500">
				<a href="forgetpassword.html">Forget Password </a> | <a
					href="signup.jsp">Sign Up</a>
			</div>
		</form>
	</div>

</body>

</html>