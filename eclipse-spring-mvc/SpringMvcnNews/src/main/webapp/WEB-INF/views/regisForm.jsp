<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>

</head>
<body>


<%@include file="./header.jsp"%>



<section class="vh-100 gradient-custom" >
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5  d-flex justify-content-center" >Registration Form</h3>
            <form action="ingectUsersNow" method="post">

              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                        <label class="form-label"  for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" class="form-control form-control-lg" />
              
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                  <label class="form-label" for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" class="form-control form-control-lg" />
                    
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                   <label for="Address" class="form-label">Address</label>
                    <input type="text" class="form-control form-control-lg" name="address" id="address" />
                   
                  </div>
                  
                  

                </div>
                
                
                
                
                
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                   <label class="form-label" for="postCode">Post-Code</label>
                    <input type="text" id="postCode" name="postCode" class="form-control form-control-lg" />
                   
                  </div>

                </div>
                
                
                
                
                
                
               
               
              </div>
              

              <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                  <label class="form-label" for="emailAddress">Email</label>
                  
                    <input type="text" id="email" name="email" class="form-control form-control-lg" />
                    
                  </div>

                </div>
                
                
                
                 <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                   <label for="phoneNumber" class="form-label">Phone/Mobile-Number</label>
                    <input pattern="[7890][0-9]{10}" type="text"  class="form-control form-control-lg" name="phoneNumber" id="phoneNumber" />
                   
                  </div>


                </div>
                
                
                
                
                
                 <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                   <label class="form-label" for="passowrd">Password</label>
                    <input type="tel" id="usersPassword" name="usersPassword" class="form-control form-control-lg" />
                   
                  </div>

                </div>
                
                 <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                   <label class="form-label" for="re-passowrd">Password</label>
                    <input type="tel" id="re-passowrd" name="re-passowrd" class="form-control form-control-lg" />
                   
                  </div>

                </div>
              </div>

         
              <div class="mt-2 pt-2 d-flex justify-content-center">
              
                  <button type="submit" value="Submit" class="btn btn-primary">Submit</button>

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