<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../resources/css/bootstrap.css" rel="stylesheet">
<link href="../resources/css/bootstrap-theme.css" rel="stylesheet">
<style>
	h3{ text-align: center;}
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
<h3 style="font-weight: bold; text-align:center;">Company Details</h3>
<br/>
<br/>
 <a href="register" class="btn btn-primary" style="text-transform: uppercase; font-weight: bold;  margin-right: 3px; width: 200px">Student Registration</a>
  <a href="company" class="btn btn-default" style="text-transform: uppercase; font-weight: bold;  margin-left: 3px; margin-right: 3px;width: 200px">Company Registration</a>
  <a href="slist" class="btn btn-primary" style="text-transform: uppercase; font-weight: bold;  margin-left: 3px; margin-right: 3px;width: 200px">Students List</a>
  <a href="clist" class="btn btn-default"   style="text-transform: uppercase; font-weight: bold;  margin-left: 3px; margin-right: 3px;width: 200px">Company List</a>
  <a href="logout" class="btn btn-primary" style="text-transform: uppercase; font-weight: bold; margin-left: 3px; margin-right: 3px;width: 200px">Logout</a>
<br/>

<br/>
<br/>
		
	<div class="col-md-5">
		<form action="company" method="post">
		<div class="form-group">
		<label>Company Name</label>
		<input type="text" class="form-control" name="company_name">
		</div>
		<div class="form-group">
		<label>SSC Criteria</label>
		<input type="number" class="form-control" name="ssc">
		</div>
		<div class="form-group">
		<label>HSC Criteria</label>
		<input type="number" class="form-control" name="hsc">
		</div>
		<div class="form-group">
		<label>Graduation Criteria</label>
		<input type="number" class="form-control" name="graduation">
		</div>
		<div class="form-group">
		<label>Date of Recruitment</label>
		<input type="text" class="form-control" name="dateOfRec">
		</div>
		<div class="form-group">
		<label>Number of Recruitment</label>
		<input type="text" class="form-control" name="noOfRec">
		</div>
		<div class="form-group">
		<label>Technology</label>
		<input type="text" class="form-control" name="technology">
		</div>
		<div>
		<label>Course</label>
		<input type="text" class="form-control" name="course">
		</div>
		<div class="form-group">
		<label>Website</label>
		<input type="text" class="form-control" name="website">
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-success" value="Submit">
			<input type="reset" class="btn btn-danger" value="Clear">
		</div>
		
		</form>
		</div>
	</div>
	</div>
</body>
</html>