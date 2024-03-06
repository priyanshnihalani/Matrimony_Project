<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<%-- <script src="https://cdn.tailwindcss.com"></script> --%>
<link rel="shortcut icon" href="project1logo.ico" type="image/x-icon">
<link rel="stylesheet" href="custom.css">
<link rel="stylesheet" href="output.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<div
		class="xl:flex justify-center mt-[10px] lg:flex justify-center md: flex justify-center">
		<img src="project1logo.png" alt="" srcset=""
			class=" w-[170px] mt-[30px]">
	</div>
	<div
		class="
    custom drop-shadow-xl
     xl:drop-shadow-2xl h-[570px] w-[400px] mt-[310px] bg-white 
     rounded-xl lg: drop-shadow-md h-[500px] w-[350px] mt-[310px] 
     md: h-[500px] ">
		<div class="h-[5rem] borders">
			<h1 class="font-bold text-[28px] text-center mt-[10px] font-serif ">Create
				a new Account</h1>
			<p class="text-center text-gray-500 font-serif">It's quick and
				easy.</p>
			<div class="w-full  flex absolute top-[50px]">
				<input type="radio" name="scroll" id="check1" checked class="hidden">
				<label for="check1" id="checks1" class=""><i
					class="fa fa-circle-thin rounded-full ml-5 mt-2 icon-with-border animate-spin"></i></label><br />
				<input type="radio" name="scroll" id="check2" class="hidden">
				<label for="check2" id="checks2"><i
					class="fa fa-circle-thin rounded-full mt-2 ml-2 animate-spin"></i></label><br />
			</div>

		</div>
		<form action="http://localhost:8080/Matrimony/signupprocess" method="post" enctype="multipart/form-data">
			 <form action="SignUp" method="post" enctype="mutipart/form-data">
			<div class="flex overflow-scroll hide" id="parent">

				<div class="min-w-full ">
					<div class="row">
						<div class="small-12 medium-2 large-2 columns">
							<div class="circle">
								<img class="profile-pic"
									src="https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg">

							</div>
							<div class="p-image">
								<i class="fa fa-camera upload-button"></i> <input
									class="file-upload" type="file" accept="image/*" name="file" />
							</div>
						</div>
					</div>
					<input type="text" name="firstname" placeholder="First name"
						class="xl: font-serif border-2 p-2 flex-1 w-[190px] m-3 -mt-[10px
          ] mr-1 rounded-lg
            lg: w-[160px] mt-1 mb-1"
						required> <input type="text" name="surname"
						placeholder="Surname"
						class="border-2 p-2  w-[170px] m-0 rounded-lg font-serif
            lg: w-[160px]"
						required> <input type="email" name="email"
						placeholder="E-mail"
						class="
          mt-[10px]
          xl:border-2 p-2  w-[368px] m-3 rounded-lg font-serif
            lg: w-[330px] border-2 mt-1 mb-1"
						required> <input type="password" name="password"
						placeholder="Enter Password"
						class="
           mt-[10px] 
          xl:border-2 p-2  w-[368px] m-3 rounded-lg font-serif
          lg: w-[330px] border-2 mt-1 mb-1"
						required>

					<p
						class="font-serif mt-[10px] xl:ml-3 mt-3 mb-1 text-[14px] lg: mt-2 ml-3">Data
						of Birth</p>
					<select name="date" id=""
						class="xl: border-2  ml-3 w-[120px] p-1 rounded-lg font-serif lg: w-[100px]">
						<option value="">1</option>
						<option value="">2</option>
						<option value="">3</option>
						<option value="">4</option>
						<option value="">5</option>
						<option value="">6</option>
						<option value="">7</option>
						<option value="">8</option>
						<option value="">9</option>
						<option value="">10</option>
						<option value="">11</option>
						<option value="">12</option>
						<option value="">13</option>
						<option value="">14</option>
						<option value="">15</option>
						<option value="">16</option>
						<option value="">17</option>
						<option value="">18</option>
						<option value="">19</option>
						<option value="">20</option>
						<option value="">21</option>
						<option value="">22</option>
						<option value="">23</option>
						<option value="">24</option>
						<option value="">25</option>
						<option value="">26</option>
						<option value="">27</option>
						<option value="">28</option>
						<option value="">29</option>
						<option value="">30</option>
						<option value="">31</option>
					</select> <select name="month" id=""
						class="xl: border-2  ml-1 w-[120px] p-1 rounded-lg font-serif lg: w-[105px]">
						<option value="">January</option>
						<option value="">February</option>
						<option value="">March</option>
						<option value="">April</option>
						<option value="">May</option>
						<option value="">June</option>
						<option value="">July</option>
						<option value="">August</option>
						<option value="">September</option>
						<option value="">October</option>
						<option value="">November</option>
						<option value="">December</option>
					</select> <select name="year" id=""
						class="xl: border-2  ml-1 w-[120px] p-1 rounded-lg font-serif lg: w-[105px]">
						<option value="2024">2024</option>
						<option value="2023">2023</option>
						<option value="2022">2022</option>
						<option value="2021">2021</option>
						<option value="2020">2020</option>
						<option value=2019>2019</option>
						<option value=2018>2018</option>
						<option value=2017>2017</option>
						<option value=2016>2016</option>
						<option value=2015>2015</option>
						<option value=2014>2014</option>
						<option value=2013>2013</option>
						<option value=2012>2012</option>
						<option value=2011>2011</option>
						<option value=2010>2010</option>
						<option value=2009>2009</option>
						<option value=2008>2008</option>
						<option value=2007>2007</option>
						<option value=2006>2006</option>
						<option value=2005>2005</option>
						<option value=2004>2004</option>
						<option value=2003>2003</option>
						<option value=2002>2002</option>
						<option value=2001>2001</option>
						<option value=2000>2000</option>
					</select>

					<p
						class="
          font-serif mt-[15px]
          xl: ml-3 mt-0 text-[14px] lg: mb-[10px]">Gender</p>
					<div class="flex">
						<div
							class="w-[130px] xl: ml-3 -mt-[8px] p-2   border-2 border w-[120px] rounded-lg male font-serif lg: w-[120px] text-[15px] h-[35px] pl-4">
							Male <input type="radio" name="gender" id="" value="male"
								class="m-0 p-0">
						</div>
						<div
							class="w-[130px] xl: ml-3 -mt-[8px] p-2  border-2 border w-[120px] rounded-lg female font-serif lg: w-[120px] text-[15px] h-[35px] pl-4">
							Female<input type="radio" name="gender" id="" value="female"
								required>
						</div>
					</div>

				</div>

				<div class=" min-w-full font-serif">
					<input type="text" placeholder="City, State" name="city"
						class="
          mt-[15px] 
         xl:border-2 p-2  w-[368px] m-3 rounded-lg font-serif
         lg: w-[330px] border-2 mt-1 mb-1"
						required> <input type="text" name="occupation"
						placeholder="Occupation"
						class="
         mt-[13px] 
        xl:border-2 p-2  w-[368px] m-3 rounded-lg font-serif
        lg: w-[330px] border-2 mt-1 mb-1" 
						required> <input type="text" name="hobbies"
						placeholder="Hobbies"
						class=" mt-[10px]
            xl:border-2 p-2  w-[368px] m-3 mt-5 rounded-lg font-serif
              lg: w-[330px] border-2 mt-[20px] mb-1"
						required> <select name="religion"
						class=" mt-[10px]
              xl:border-2 p-2  w-[368px] m-3 mt-5 rounded-lg font-serif
                lg: w-[330px] border-2 mt-[10px] mb-1"
						required>

						<option>Select Your Religion</option>
						<option value="hindu">Hindu</option>
						<option value="sikh">Sikh</option>
						<option value="jain">Jain</option>
						<option value="parsi">Parsi</option>
						<option value="christan">Christan</option>
						<option value="muslim">Muslim</option>

					</select> <input type="text" name="cast" placeholder="Cast"
						class=" mt-[10px]
          xl:border-2 p-2  w-[368px] m-3 mt-5 rounded-lg font-serif
            lg: w-[330px] border-2 mt-[10px] mb-1"
						required> 

					<input type="submit" value="Sign Up"
						class="mt-[30px] xl: border w-[50%] font-semibold rounded-lg ml-[100px] mt-7 py-2 font-serif focus:outline-none focus:ring focus: ring-pink-300 cursor-pointer
            lg: mt-[15px] py-1 w-[40%] text-[16px]">
					<div
						class="mt-[30px] xl: mt-[10px] text-center font-semibold text-blue-600 font-serif lg: mt-[15px] text-[14px]">
						<a href="signin.jsp">Already have account?</a>
					</div>
		</form>
	</div>
	</div>
	</div>

	<script>
		const checkbox1 = document.getElementById('check1');
		const checkbox2 = document.getElementById('check2');
		const scroll = document.getElementById('parent');

		checkbox2.addEventListener('change', function() {
			if (this.checked) {
				scroll.scrollTo({
					left : scroll.scrollWidth,
					behavior : 'smooth' // Use smooth behavior for a smooth transition
				});
			}

		});
		checkbox1.addEventListener('change', function() {
			if (this.checked) {

				scroll.scrollTo({
					left : 0,
					behavior : 'smooth' // Use smooth behavior for a smooth transition
				});
			}
		});
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script>
		$(document).ready(function() {

			var readURL = function(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();

					reader.onload = function(e) {
						$('.profile-pic').attr('src', e.target.result);
					}

					reader.readAsDataURL(input.files[0]);
				}
			}

			$(".file-upload").on('change', function() {
				readURL(this);
			});

			$(".upload-button").on('click', function() {
				$(".file-upload").click();
			});
		});
	</script>

</body>
</html>