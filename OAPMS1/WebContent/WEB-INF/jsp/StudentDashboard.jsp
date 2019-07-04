<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<title>Insert title here</title>
<style>
div.container
	{
	  display: block;
	  text-align: centre;
	}
 .background
	{
		background-image: url("../resources/Images/crossed_stripes.png");
		color: white;
		
	}
	</style>
</head>
<body>


<div class="background">
<br/>
<br/>
<div class="container">
<h3 style="font-weight: bold; text-align:center;text-transform: uppercase;">Student Dashboard</h3>
<h3 style="color: white;">Welcome ${studentDetails.getFirstName()}</h3>
<br/>
<br/>
<div>
  <a class="btn btn-primary" href="personaldetails" style="width: 200px; text-transform: uppercase; font-weight: bold;">Personal Details</a>
  </div>
  <br/>
  <br/>
  
  <div>
 <a class="btn btn-default" href="address" style="width: 200px; text-transform: uppercase; font-weight: bold;">Address Details</a> 
  </div>
  <br/>
  <br/>
  
  <div>
 <a class="btn btn-primary" href="academic" style="width: 200px; text-transform: uppercase; font-weight: bold;">Academic Details-10th</a>
  </div>
  <br/>
  <br/>
  
  <div>
 <a class="btn btn-default"  href="hsc" style="width: 200px; text-transform: uppercase; font-weight: bold;">Academic Details-12th</a>
  </div>
  <br/>
  <br/>
  
  <div>
<a  class="btn btn-primary" href="graduation" style="width: 200px; text-transform: uppercase; font-weight: bold;">Graduation Details</a>
 </div>
  <br/>
  <br/>
  
  <div>
<a  class="btn btn-default" href="project" style=" width: 200px;text-transform: uppercase; font-weight: bold;">Project Details</a>
 </div>
  <br/>
  <br/>
   <div>
<a class="btn btn-primary"  href="cpassword" style="width: 200px; text-transform: uppercase; font-weight: bold;">Change Password</a>
 </div>
 <br/>
  <br/>
  <div>
<a class="btn btn-default"  href="logout" style="width: 200px; text-transform: uppercase; font-weight: bold;">Logout</a>
 </div>
  <br/>
  <br/>
<br/>

<br/>
<br/>
	
</div>
</div>

</body>
</html>