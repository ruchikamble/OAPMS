<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">

<style>
	.image
	{
		background-image: url("../resources/Images/Login.jpg");
		padding: 40vh 20vw;
		padding-top : 15vh;
		padding-left : 30vw;
		
		background-size: cover;
		
	}
	body
	{
	overflow-x : hidden;
	}
</style>
</head>
<body>
<div class="image">
<br/>
<h4 class="text-danger">${requestScope.message}</h4>
	
  <h3 style="font-size: 30px; color: white; font-weight: bold;">Login Here</h3>
  <br/>
  <div class="container">
  	<div class="col-md-4">
  		<form action="login"
  		 method="post">
  			<div class="form-group" >
  				<label style="color: white;font-size: 20px;"><span class="text-danger">*</span>Username</label>
  				<input id="user-name" type="text"  class="form-control" placeholder="username" name="username">
  				<!-- <div id="user-name-error" class="text-danger">Username is mandatory</div> -->
  			</div>
  			<div class="form-group">
  				<label style="color: white;font-size: 20px;"><span class="text-danger">*</span>Password</label>
  				<input id="pass-word" type="password"  class="form-control" placeholder="password" name="password">
  				<!-- <div id="pass-word-error" class="text-danger">Password is mandatory</div> -->
  			</div>
  			<div class="form-group">
  				<input type="submit" onclick="validateUsername()"  class="btn btn-success" style="width: 100px; height: 40px" value="Login">
  				<input type="reset" class="btn btn-danger" style="width: 100px; height: 40px" value="Clear">
  			</div>
  		</form>
  	</div>
  </div>
  
  <script >

  function validateUsername() {
	 // window.alert("validate");
	  console.log("asdd");
      var usernameError = document.getElementById('user-name').value;
      console.log(usernameError);

     var divFirstNameError = document.getElementById('user-name-error');

     var passwordError = document.getElementById('pass-word').value;
     console.log(passwordError);
     
     var divLastNameError = document.getElementById('pass-word-error');
      
     divFirstNameError.style.display = "block";
      
      if (usernameError.length == 0 && passwordError.length == 0) {
          // empty
         window.alert("Username and password is mandatory");
         divFirstNameError.style.display = "block";
         
      } 
       elseif(password.length < 6)
      {
          window.alert("Password should be of 8 characters");
      } 
    }

  
  </script>
  </div>
 </body>
</html>