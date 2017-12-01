<!DOCTYPE html>
<html>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body, h1 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%
}

.bgimg {
	background-image: url('<%=request.getContextPath()%>/images/loginback.JPG');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}
</style>
<body>

	<div
		class="bgimg w3-display-container w3-animate-opacity w3-text-white">
		<div class="w3-display-topleft w3-padding-large w3-xlarge">
			<img src="<%=request.getContextPath()%>/images/logo.JPG" width="100">
		</div>
		
		<div class="w3-display-middle w3-white w3-padding-zero" style="width:20% ">
			<form class="w3-container w3-card-5" method = "post" name = "login" action="loginPro">

				<p>
					<label>ID</label>
					<input class="w3-input"  name = "id" type="text" style="width: 90%" required>
					
				</p>
				<p>
					<label>Password</label>
					<input class="w3-input" name = "passwd" type="password" style="width: 90%" required>
					
				</p>

				<p>
					<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge w3-centered" type = "submit">
						Log in</button>
				</p>

			</form>
		</div>
		
		<div class="w3-display-bottomleft w3-padding-large">
			Powered by <a href="https://github.com/syeonni/" target="_blank">syeonni</a>
		</div>
	</div>

</body>
</html>
