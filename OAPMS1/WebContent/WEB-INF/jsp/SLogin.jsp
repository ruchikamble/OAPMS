<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">

<title>Insert title here</title>
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
		
	
	<h3 style="font-size: 30px; color: white; font-weight: bold;">Login Here</h3>
	<br/>
  <div class="container">
  	<div class="col-md-4">
  		<form action="slogin"
  		 method="post">
  			<div class="form-group">
  				<label style="color: white; font-size: 20px;"><span class="text-danger">*</span>Username</label>
  				<input type="number" class="form-control" id="user-name" placeholder="username" name="username">
  			</div>
  			<div class="form-group">
  				<label style="color: white;font-size: 20px;"><span class="text-danger">*</span>Password</label>
  				<input type="password" class="form-control"id="pass-word" placeholder="password" name="password">
  			</div>
  			<div class="form-group">
  				<input type="submit" class="btn btn-success " style="width: 100px; height: 40px" value="Login">
  				<input type="reset" class="btn btn-danger "style="width: 100px; height: 40px" value="Clear">
  			</div>
  		</form>
  	</div>
  </div>
 <h4 class="text-danger">${requestScope.message}</h4>
  <script >

  function validateUsername() {
      var username = document.getElementById('user-name').value;
      console.log(inputFirstName);

    var password = document.getElementById('pass-word').value;
     console.log(lastName);
     
        if (username.length == 0 && password.length == 0) {
          // empty
          window.alert("Username and password is mandatory");
         
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