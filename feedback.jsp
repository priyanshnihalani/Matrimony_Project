<!DOCTYPE html>
<html lang="en">

<body>
	<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Feedback</title>
<%-- <script src="https://cdn.tailwindcss.com"></script> --%>
<link rel="stylesheet" href="output.css">
<link rel="icon" type="image" href="project1logo.png">
<link rel="stylesheet"
	href="font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css">
<style>
.rating, .webrating {
	/* unicode-bidi: bidi-override; */
	direction: rtl;
	text-align: left;
}

.rating>label, .webrating>label {
	display: inline-block;
	padding: 5px;
	font-size: 25px;
	color: #ddd;
	cursor: pointer;
}

.rating>label:hover, .rating>label:hover ~label, .rating>input:checked
	~label {
	color: orange;
}

.webrating>label:hover, .webrating>label:hover ~label, .webrating>input:checked
	~label {
	color: orange;
}

.rating>input, .webrating>input {
	display: none;
}

.custom {
	position: absolute;
	left: 50%;
	transform: translate(-50%, -50%);
	border-bottom: 8px solid pink
}

.custom::-webkit-scrollbar {
	display: none;
}

.borders {
	border-bottom: 1px solid grey;
}

@
keyframes fadeDown { 0% {
	opacity: 0;
	transform: translateY(20px);
}

100%
{
opacity
:
 
1;
transform
:
 
translateY
(0px);

                
}
}
.animate-fade-down {
	animation-name: fadeDown;
	animation-duration: 1s;
	animation-timing-function: ease-in-out;
}
</style>
</head>

<body class="bg-gray-100 overflow-scroll">

	<div
		class=" animate-fade-down xl:flex justify-center mt-[50px] mb-[20px] lg:flex justify-center md: flex justify-center">
		<img src="project1logo.png" alt="" srcset=""
			class="w-[150px] ">
	</div>
	<div
		class="
        custom drop-shadow-xl
        xl:drop-shadow-2xl h-[570px] w-[600px] mt-[310px] bg-white 
        rounded -xl lg: drop-shadow-md h-[600px] w-[500px] mt-[310px] p-2 overflow-scroll
        md: h-[500px] ">
		<div class="h-[5.4rem] borders ">
			<h1 class="font-bold text-[28px] text-center mt-[10px] font-serif">You've
				got feedback to our Wedding Services? Tell Us!</h1>
		</div>
		<form action="feedbackresponse.jsp" method="post">

			<label for="bride"
				class="font-serif font-semibold text-[20px] m-2 mt-6 ml-8 ">Bride:
			</label> <input type="text" name="bride" id="bride" placeholder="First Name "
				class="border-2 p-2 m-2 mt-5 rounded-md animate-fade-down" required>
			<input type="text" id="bride" placeholder="Last Name "
				class="border-2 p-2 m-2 mt-5 rounded-md animate-fade-down" required>


			<label for="groom"
				class="font-serif font-semibold text-[20px] m-2 mt-3 ml-8 ">Groom:
			</label> <input type="text" name="groom" id="groom" placeholder="First Name "
				class="border-2 p-2 m-2 mt-2 ml-1 rounded-md animate-fade-down"
				required> <input type="text" id="bride"
				placeholder="Last Name "
				class="border-2 p-2 m-2 mt-2 rounded-md animate-fade-down" required>


			<div>
				<label for="date"
					class="font-serif font-semibold text-[20px] m-2 mt-3 ml-8 ">Your
					Wedding Date: </label> <input type="date" name="date" id="bride"
					class="border-2 p-2 rounded-md mt-2 animate-fade-down" required>
			</div>

			<div class="flex">
				<h1 class="font-serif font-semibold text-[20px] m-2 mt-5 ml-8">Overall
					Satisfaction:</h1>
				<div class="rating mt-3 text-2xl animate-fade-down">
					<input type="radio" id="star5" name="rating" value="5"> <label
						for="star5"><i class="fa fa-star"></i> </label> <input
						type="radio" id="star4" name="rating" value="4"> <label
						for="star4"><i class="fa fa-star"></i></label> <input type="radio"
						id="star3" name="rating" value="3"> <label for="star3"><i
						class="fa fa-star"></i></label> <input type="radio" id="star2"
						name="rating" value="2"> <label for="star2"><i
						class="fa fa-star"></i></label> <input type="radio" id="star1"
						name="rating" value="1"> <label for="star1"><i
						class="fa fa-star"></i></label>
				</div>
			</div>
			<div class="flex">
				<h1 class="font-serif font-semibold text-[20px] m-2 mt-5 ml-8">Our
					Website:</h1>
				<div class="webrating mt-3 text-2xl animate-fade-down">
					<input type="radio" id="star6" name="webrating" value="5">
					<label for="star6"><i class="fa fa-star"></i></label> <input
						type="radio" id="star7" name="webrating" value="4"> <label
						for="star7"><i class="fa fa-star"></i></label> <input type="radio"
						id="star8" name="webrating" value="3"> <label for="star8"><i
						class="fa fa-star"></i></label> <input type="radio" id="star9"
						name="webrating" value="2"> <label for="star9"><i
						class="fa fa-star"></i></label> <input type="radio" id="star10"
						name="webrating" value="1"> <label for="star10"><i
						class="fa fa-star"></i></label>
				</div>
			</div>
			<div class="pt-2">
				<label for="message"
					class="font-serif font-semibold text-[20px] ml-8">How we
					should improve?</label>
				<textarea name="message" placeholder="Write Something Here....."
					id="message" cols="50" rows="5"
					class="border-2 mt-[20px] ml-[30px] rounded-lg pl-2 pt-2 animate-fade-down"
					required></textarea>
			</div>
			<div class="flex justify-center py-3 animate-fade-down">
				<input type="submit" value="Submit"
					class="border-2 p-2 px-7 text-lg font-serif font-semibold rounded-lg flex mt-3 ">
			</div>
		</form>
	</div>
</body>

</html>
</body>

</html>