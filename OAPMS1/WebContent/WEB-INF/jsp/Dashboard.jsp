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
		padding: 5vh 0;
		
	}
	</style>
</head>
<body>
  <div class="background">
<br/>
<br/>
<div class="container">
	<h3 style="text-transform: uppercase; font-weight: bold; text-align:center;">Admin Dashboard</h3>
	
	<br/>
<br/>
<div>
 <a href="register" class="btn btn-primary" style="width: 200px; text-transform: uppercase; font-weight: bold;">Student Registration</a>
 </div>
 <br/>
 <br/>
 <div>
  <a href="company" class="btn btn-default" style="width: 200px; text-transform: uppercase; font-weight: bold;">Company Registration</a>
  </div>
 <br/>
  <br/>
  <div>
  <a href="slist" class="btn btn-primary" style="width: 200px; text-transform: uppercase; font-weight: bold;">Students List</a>
  </div>
 <br/>
  <br/>
  <div>
  <a href="clist" class="btn btn-default" style="width: 200px;">Company List</a>
  </div>
 <br/>
  <br/>
  <div>
  <a href="logout" class="btn btn-primary" style="width: 200px;">Logout</a>
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