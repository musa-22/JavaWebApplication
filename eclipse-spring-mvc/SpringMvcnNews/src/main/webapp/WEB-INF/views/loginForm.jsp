<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Page</title>
</head>
<body>
<%@include file="./header.jsp"%>



<section class="vh-100 gradient-custom" >
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5  d-flex justify-content-center" >Login </h3>
            <form action="" method="POST">

              <div class="row  d-flex justify-content-center">
                <div class="col-md-6 mb-4">

                  <div class="form-outline ">
                        <label class="form-label"  for="firstName">Email</label>
                    <input type="email" id="email" name="email" class="form-control form-control-lg" placeholder="Enter Your email" />
              
                  </div>

                
                
                
                </div>
                
               
              </div>

              <div class="row  d-flex justify-content-center">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                  <label class="form-label" for="emailAddress">Password</label>
                  
                    <input type="password" id="password" class="form-control form-control-lg" placeholder="Enter Your Password"/>
                    
                  </div>

                </div>
                </div> 
              

         
              <div class="mt-2 pt-2 d-flex justify-content-center">
              
               
             <button type="submit" value="Submit" class="btn btn-primary">Login</button>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>







</body>
</html>