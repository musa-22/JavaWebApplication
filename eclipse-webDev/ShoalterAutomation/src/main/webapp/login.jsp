


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fontsd/icomoon/style.css">

<link rel="stylesheet" href="cssd/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="cssd/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="cssd/style.css">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">

<title>Login #4</title>
</head>
<body>

	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<div class="d-md-flex half">
		<div class="bg" style="background-image: url('imagesd/bg_1.jpg');"></div>
		<div class="contents">

			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-12">
						<div class="form-block mx-auto">
							<div class="text-center mb-5">
								<h3>
									Login Page
								</h3>
								<!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
							</div>
							<form action="LoginToPage" method="post">

								<div class="form-group first">
									<label for="username">Email</label> <input type="text"
										name="email" class="form-control"
										placeholder="your-email@gmail.com" id="username"
										required="required">
								</div>


								<div class="form-group last mb-3">
									<label for="password">Password</label> <input type="password"
										name="pass" class="form-control" placeholder="Your Password"
										id="password" required="required">
								</div>

								<div class="d-sm-flex mb-5 align-items-center">

									<input type="checkbox" checked="checked" />
									<div class="control__indicator"></div>


									</label> <span class="ml-auto"><a href="regist.jsp"
										class="forgot-pass">To Register Please click here </a></span>
								</div>

								<input type="submit" value="Log In"
									class="btn btn-block btn-primary">

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>



	<script src="jsd/jquery-3.3.1.min.js"></script>
	<script src="jsd/popper.min.js"></script>
	<script src="jsd/bootstrap.min.js"></script>
	<script src="jsd/main.js"></script>


	<script type="text/javascript">
	
	
		var status = document.getElementById("status").value;

		if (status == "falied") {
			swal("Please check ", "your email or your password ?", "falied")
		}
		else if (status == "incorrectEmail") {
			swal("Please check ", "your email or your password ?", "falied")
		}
		else if (status == "incorrectPassword") {
			swal("Please check ", "your email or your password ?", "falied")
		}
		
		
		
	</script>





</body>
</html>