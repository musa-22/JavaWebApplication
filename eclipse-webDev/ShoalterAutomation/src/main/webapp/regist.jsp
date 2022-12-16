<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
    
    
    
</head>
<body>

   <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="post" action="registData" id="signup-form" class="signup-form">
                        <h2 class="form-title">Create account</h2>
                        
                        <div class="form-group">
                            <input type="text" class="form-input" name="nameF" id="name" placeholder="Your First Name" required="required"/>
                        </div>
                        
                        
                        <div class="form-group">
                            <input type="text" class="form-input" name="nameL" id="name" placeholder="Your Family Name" required="required" />
                        </div>
                        
                        
                        
                        <div class="form-group">
                            <input type="email" class="form-input" name="email" id="email" placeholder="Your Email" required="required"/>
                        </div>
                       
                       
                        <div class="form-group">
                            <input type="text" class="form-input" name="Address" id="name" placeholder="Your Current Address" required="required"/>
                        </div>
                       
                       
                        <div class="form-group">
                            <input type="password" class="form-input" name="password" id="password" placeholder="Password" required="required"/>
                            <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                        
                        <div class="form-group">
                        
                            <input type="password" class="form-input"  name="Apassword" id="Apassword" placeholder="Re-Enter-Password" required="required"/>
                            <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                        
                        
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>
                        </div>
                    </form>
                    <p class="loginhere">
                        Have already an account ? <a href="login.jsp" class="loginhere-link">Login here</a>
                    </p>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    
   
    <script type="text/javascript">
    
   var status = document.getElementById("status").value;
   if (status =="success") {
	swal("your account ","has been created succefully","success")
}
   if (status =="typeValidFirstName") {
		swal("your account ","plese type First Name ","error")
	}
   
   if (status =="typeValidLastName") {
		swal("your account ","plese type Enter Family Name","error")
	}
   
   if (status =="typeEmail") {
		swal("your account "," please type valid email ","error")
	}
   
   if (status =="typeYourAddresse") {
		swal("your account ","please type valid address","error")
	}
   
   if (status =="typeYourPassowrd") {
		swal("your account ","Please Enter Passowrd","error")
	}
   
   if (status =="passowrdnotMatch") {
		swal("your account ","Password do not match","error")
	}
    </script>
    
   
    
    
    
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>