<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Index</title>
<link rel="shortcut icon" href="projectlogo.ico" type="image/x-icon">
<link rel="stylesheet" href="output.css">
  <%-- <script src="https://cdn.tailwindcss.com"></script> --%>
<link rel="stylesheet" href="font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap"
	rel="stylesheet">
<style>
nav {
	/* background: lightseagreen; */
	transition: top 0.8s;
}

.img {
	background: url("image1.jpg");
	background-size: cover;
	border-radius: 7px;
}

.img1 {
	background: url("image2.jpg");
	background-size: cover;
	border-radius: 7px;
}

.testimonial::-webkit-scrollbar {
	display: none;
}

section {
	margin-bottom: 30px;
}
</style>
</head>

<body class="font-[Rubik]">


	<%
		//String decodedValue = "";
		Cookie[] cookies = request.getCookies();
		String username = null;
		String gender = null;
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user")) {
					username = URLDecoder.decode(cookie.getValue(), "UTF-8");
					break;
				}
			}
		}
	%>

	<script>
    		window.onload = function(){
    			if (<%=username%> == null) {
    				let disp = document.getElementById("profile");
    				disp.style.display="none";
    			}
    		}
    			
    	</script>
	<section id="home">
		<header class="h-[150px]">
			<nav>
				<ul class="xl:flex xl:h-[100px] xl:space-x-12 xl:text-[18px] xl:none xl:mt-9 lg:flex lg:space-x-8 lg:text-[14px] xl:items-center 
				lg:items-center md:items-center lg:justify-center lg:h-[100px] md:flex md:space-x-4 md:text-[13px] md:h-[240px] md:justify-center ">
					<!-- Removed align-middle -->
					<li class="md:w-[120px] md:absolute md:top-0 md:mt-[30px] xl:w-[220px] xl:relative xl:mr-[180px] xl:ml-[120px] lg:ml-[50px] lg:mr-[80px] lg:relative"><img
						src="project1logo.png" alt="" class="xl:w-[200px] lg:w-[180px] "></li>
					<li class="hover:text-[pink] cursor-pointer"><a href="#home">HOME</a></li>
					<li class="hover:text-[pink] cursor-pointer"><a href="#whyus">WHY
							US</a></li>
					<li class="hover:text-[pink] cursor-pointer"><a
						href="#aboutus">ABOUT US</a></li>
					<li class="hover:text-[pink] cursor-pointer"><a
						href="#testimonials">TESTIMONIALS</a></li>
					<li class="hover:text-[pink] cursor-pointer"><a
						href="#contactus">CONTACT US</a></li>
					<li class="hover:text-[pink] cursor-pointer border-2 p-3 profile"
						id="profile">PROFILE
						<div
							class="absolute xl:right-0 lg:right-[140px] mt-4 w-40 bg-white border rounded-md shadow-lg invisible">
							<div class="py-2">
								<!-- User Name -->
								<p class="block px-4 py-2 text-[pink] text-sm font-semibold"><%=username%></p>
								<!-- Logout Button -->
								<form action="logout.jsp" method="post">
									<input type="submit" value="LOGOUT"
										class="block w-full text-left px-4 py-2 text-gray-800 hover:bg-gray-200 focus:outline-none cursor-pointer">
								</form>
								<p class="block w-full text-left px-4 py-2 text-gray-800 hover:bg-gray-200 focus:outline-none cursor-pointer"><a href="feedback.jsp">FEEDBACK</a></p>
							</div>
						</div>
					</li>
				</ul>
				</div>

			</nav>
		</header>
	</section>
	<main>
	<div class="flex xl:p-0 lg:p-0 md:pt-6">
		<div class="img xl:h-[430px] xl:w-[35%] bg-slate-500 xl:mt-[70px] xl:ml-[180px] xl:flex lg:flex lg:h-[350px] lg:w-[35%] lg:mt-[100px] lg:ml-[150px] md:w-[40%] md:h-[250px] md:ml-[100px] "></div>
		<div class="xl:mt-[130px] lg:mt-[130px] xl:ml-8 lg:ml-8 md:mt-[50px] md:ml-8 w-[50%]">
			<p class="xl:text-[20px] text-[gray] xl:mt-[30px] lg:text-[16px] md:text-[12px] ">The Best for Bride
				and Groom</p>
			<p class="xl:text-[60px] mt-0 text-[pink] lg:text-[40px] md:text-[25px]">Trusted and Efficient
				Matrimonial Bureaus</p>
			<form action="profileprocess.jsp" method="post">
				<input type="submit" value="Find Your Match"
					class=" cursor-pointer border-[2px] border-[slate-500]  mt-2 text-[black] md:text-[12px] md:px-[11px] md:py-[11px]
					xl:py-[12px]  xl:px-[15px] lg:py-[12px] lg:px-[15px] xl:text-[18px] lg:text-[15px]">
			</form>
		</div>
	</div>
	<section id="whyus">
		<div class="w-full xl:justify-center mt-[120px] text-[22px] ">
			<h1 class="text-center relative top-10">WHY US?</h1>
			<div class="flex xl:space-x-6 justify-center mt-10 flex-wrap">
				<div class="card w-[300px] mt-[30px]">
					<p class="text-[18px] font-bold text-[pink] text-center">Database
						of Millions of User</p>
					<p class="text-[16px] text-[gray] mt-6 w-[250px] mx-auto ">We
						have a wide choice from all the communities and a large NRI
						database so you can find your life partner with the assistance of
						the world's largest matchmaking service.</p>
				</div>
				<div class="card w-[300px] mt-[30px]  ">
					<p class="text-[18px] font-bold text-[pink] text-center">Strict
						Profile Screening System</p>
					<p class="text-[16px] text-[gray] mt-6 w-[250px] mx-auto ">Our
						CRM team is committed to ensure that every profile put up in our
						database is screened to ensure you continue to have a smooth
						partner search experience.</p>
				</div>
				<div class="card w-[300px] mt-[30px]  ">
					<p class="text-[18px] font-bold text-[pink] text-center">State
						of Art Search Technology</p>
					<p class="text-[16px] text-[gray] mt-6 w-[250px] mx-auto ">Our
						customization, filtering, and blocking systems strive to build
						technology that will only bring you matches that are relevant to
						you.</p>
				</div>
				<div class="card w-[300px] mt-[30px]  ">
					<p class="text-[18px] font-bold text-[pink] text-center">Total
						Privacy Control</p>
					<p class="text-[16px] text-[gray] mt-6 w-[250px] mx-auto ">Safety
						and privacy, of the member is top priority. Being a certified
						matchmaking portal we let you decide who to give your contact
						information to.</p>
				</div>
			</div>
		</div>
	</section>
	<section id="aboutus">
		<div class="w-full justify-center mt-[120px] text-[22px] ">
			<h1 class="text-center relative top-7 ">ABOUT US</h1>
			<div class="flex">
				<div class="w-[42%] xl:mt-[150px] xl:ml-[150px] lg:mt-[100px] lg:ml-[90px] p-2 lg:text-[18px] md:text-[14px] md:ml-[50px] md:mt-[70px]">
					<span class="text-[pink] xl:text-[28px] lg:text-[24px] md:text-[18px]">Welcome to our
						matrimony website, where hearts unite and stories begin. </span> We are
					dedicated to fostering meaningful connections and helping
					individuals find their perfect match. With a commitment to
					authenticity and trust, we provide a safe and welcoming platform
					for those seeking companionship and lifelong happiness. Our
					comprehensive approach combines modern technology with traditional
					values to facilitate genuine relationships built on compatibility,
					understanding, and mutual respect. Whether you're embarking on this
					journey for the first time or giving love another chance, we are
					here to support you every step of the way. Join us and embark on
					the beautiful adventure of finding love and companionship that
					lasts a lifetime.
				</div>
				<div class="img1 xl:w-[30%] xl:h-[450px] xl:mt-[100px] xl:ml-[150px] lg:ml-[100px] lg:w-[35%] lg:h-[350px] lg:mt-[150px] md:w-[40%] md:h-[250px] md:mt-[120px] md:ml-[50px]"></div>
			</div>
		</div>
		</div>
	</section>
	<section id="testimonials">
		<div class="w-full mt-[100px] ">
			<h1 class="text-center text-[22px] relative top-5">TESTIMONIALS</h1>
			<div
				class="flex space-x-10 justify-center overflow-scroll testimonial w-[650px]  mx-auto">
				<div class="card w-full mt-[30px] text-center">
					<p
						class="text-[20px] text-[gray] mt-6 w-[600px] text-center m-auto">"I
						found my perfect match thanks to this matrimony platform. Highly
						recommended!"</p>
					<p class="text-[12px] font-bold text-[pink] mt-4 ml-2 text-center">John
						Doe</p>
				</div>
				<div class="card w-full mt-[30px]  text-center  ">
					<p
						class="text-[20px] text-[gray] mt-6 w-[600px] text-center m-auto">"I
						had given my bio data in this bureau and in a very short span my
						marriage was fixed due to their efforts and determination."</p>
					<p class="text-[12px] font-bold text-[pink] mt-4 ml-2 text-center">Pankaj
						Sharma</p>
				</div>
				<div class="card w-full mt-[30px]  text-center   ">
					<p
						class="text-[20px] text-[gray] mt-6 w-[600px] text-center m-auto">"They
						have a very nice and professional team. Very happy to be in touch
						with them. Best matrimonial bureau."</p>
					<p class="text-[12px] font-bold text-[pink] mt-4 ml-2 text-center">Payal
						Shah</p>
				</div>
				<div class="card w-full mt-[30px]  text-center ">
					<p
						class="text-[20px] text-[gray] mt-6 w-[600px] text-center m-auto">"hey
						are very secured regarding the data and are highly conservative
						for sharing bio data's to any random family.Would recommend this
						matrimonial centre to others."</p>
					<p class="text-[12px] font-bold text-[pink] mt-4 ml-2 text-center">Neha
						Mishra</p>
				</div>
				<div class="card w-full mt-[30px] text-center ">
					<p
						class="text-[20px] text-[gray] mt-6 w-[600px] text-center m-auto">"I
						found my perfect match thanks to this matrimony platform. Highly
						recommended!"</p>
					<p class="text-[12px] font-bold text-[pink] mt-4 ml-2 text-center">Anup
						Singh</p>
				</div>
				<!-- <div class="card w-full mt-[30px] bg-gray-600 text-center "></div> -->
			</div>
		</div>
	</section>
	<section id="contactus">
		<div class="w-full justify-center mt-[100px] text-[22px] mb-[100px] ">
			<h1 class="text-center relative top-7 ">CONTACT US</h1>
			<div class="flex">
				<div class="xl:w-[30%] lg:w-[30%] md:w-[40%] mt-[70px] xl:ml-[260px] p-2 bg-gray-000 lg:ml-[160px] md:ml-[80px]">
					<div class="flex space-x-6">
						<div class="bg-gray-500 mt-12 h-0 text-[50px] text-[pink]">
							<i class="fa fa-location-arrow ml-4"></i>
						</div>
						<div>
							<p class="xl:text-[17px] lg:text-[15px] md:text-[13px] mt-[60px]">OUR OFFICE ADDERSS</p>
							<p class="xl:text-[12px] lg:text-[12px] md:text-[10px] text-gray-600 mt-2 md:mt-1">Malad-West, Mumbai,
								40004</p>
						</div>
					</div>
					<div class="flex space-x-6">
						<div class="bg-gray-500  mt-8 h-0 text-[40px]  text-[pink]">
							<i class="fa fa-envelope ml-4"></i>
						</div>
						<div>
							<p class="xl:text-[17px] lg:text-[15px] md:text-[13px] md:mt-[40px] mt-[60px]">GENERAL ENQUIRES</p>
							<p class="xl:text-[12px] lg:text-[12px] md:text-[10px] text-gray-600 mt-2 md:mt-1">sampel@gmail.com</p>
						</div>
					</div>
					<div class="flex space-x-6">
						<div class="bg-gray-500  mt-10 h-0 text-[40px]  text-[pink]">
							<i class="fa fa-phone ml-4"></i>
						</div>
						<div>
							<p class="xl:text-[17px] lg:text-[15px] md:text-[13px] md:mt-[40px] mt-[60px]">CALL US</p>
							<p class="xl:text-[12px] lg:text-[12px] md:text-[10px] text-gray-600 mt-2 md:mt-1">+91-1234567890</p>
						</div>
					</div>
					<div class="flex space-x-6">
						<div class="bg-gray-500  mt-8 h-0 text-[45px]  text-[pink]">
							<i class="fa fa-clock-o ml-4"></i>
						</div>
						<div>
							<p class="xl:text-[17px] lg:text-[15px] md:text-[13px] md:mt-[40px] mt-[60px]">OUR TIMINGS</p>
							<p class="xl:text-[12px] lg:text-[12px] md:text-[10px] text-gray-600 mt-2 md:mt-1">MON - SAT : 10:00
								AM - 07:00 PM</p>
						</div>
					</div>
				</div>
				<div class="xl:w-[30%] h-[450px] mt-[100px] xl:ml-[150px] lg:ml-[100px] md:ml-[30px] bg-gray-000 md:w-[40%] ">
					<form action="contactus.jsp" method="POST">
						<div class="mb-4">
							<label for="name" class="block text-gray-700 text-[18px] mb-2">Your
								Name:</label> <input type="text" id="name" name="name"
								class="form-input w-full px-4 py-2 rounded-md border border-gray-300 focus:border-pink-500 focus:outline-none"
								required>
						</div>
						<div class="mb-4">
							<label for="email" class="block text-gray-700 text-[18px] mb-2">Your
								Email:</label> <input type="email" id="email" name="email"
								class="form-input w-full px-4 py-2 rounded-md border border-gray-300 focus:border-pink-500 focus:outline-none"
								required>
						</div>
						<div class="mb-4">
							<label for="message" class="block text-gray-700 text-[18px] mb-2">Message:</label>
							<textarea id="message" name="message"
								class="form-textarea w-full px-4 py-2 rounded-md border border-gray-300 focus:border-pink-500 focus: outline-none h-32"
								required></textarea>
						</div>
						<div class="text-center">
							<button type="submit"
								class="bg-[pink] hover:bg-pink-600 text-white py-2 px-6 rounded-xl focus:outline-none focus:ring-2 focus:ring-pink-400 focus:ring-opacity-75">Send
								Message</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		</div>
	</section>
	</main>
	<footer>
		<div class="bg-[pink]">
			<p class="text-center p-2">&copy; Copyrights 2024.Vivah
				Matrimonials.All Rights Reserved.</p>
		</div>
	</footer>
	<script>
        // Smooth scroll function
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();

                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
    </script>
	<script>
        // JavaScript to toggle visibility of dropdown content on hover
        const profileTab = document.querySelector('.profile');
    
        profileTab.addEventListener('mouseenter', () => {
            const dropdown = profileTab.querySelector('.absolute');
            dropdown.classList.remove('invisible');
        });
    
        profileTab.addEventListener('mouseleave', () => {
            const dropdown = profileTab.querySelector('.absolute');
            dropdown.classList.add('invisible');
        });
    </script>
</body>

</html>
