<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../resources/css/bootstrap.css" rel="stylesheet">
<link href="../resources/css/bootstrap-theme.css" rel="stylesheet">
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

<h3 style="font-weight: bold; text-align:center;text-transform: uppercase;">Personal  Details</h3>
<br/>
<br/>

  <a class="btn btn-primary" href="personaldetails" style="width: 200px; text-transform: uppercase; font-weight: bold; margin-right: 3px;">Personal Details</a>
 <a class="btn btn-default" href="address" style="width: 200px; text-transform: uppercase; font-weight: bold;margin-left: 3px; margin-right: 3px;">Address Details</a> 
 <a class="btn btn-primary" href="academic" style="width: 200px; text-transform: uppercase; font-weight: bold;margin-left: 3px; margin-right: 3px;">Academic Details-10th</a>
 
 <a class="btn btn-default"  href="hsc" style="width: 200px; text-transform: uppercase; font-weight: bold;margin-left: 3px; margin-right: 3px;">Academic Details-12th</a>
<a  class="btn btn-primary" href="graduation" style="width: 200px; text-transform: uppercase; font-weight: bold;margin-left: 3px; margin-right: 3px;">Graduation Details</a>
<a  class="btn btn-default" href="project" style="width: 200px; text-transform: uppercase; font-weight: bold;margin-left: 3px; margin-right: 3px;">Project Details</a>


<br/>

<br/>
<br/>
<div class="container">
		<div class="col-md-5">
	<form action="personaldetails" method="post">
		<div class="form-group">
			<label>Registration No : </label>
			<input disabled="disabled" style="color: black;" value="<c:out value="${studentDetails.getUsername()}"/>" >
		</div>
		<div class="form-group">
			<label>Name : </label>
			<input disabled="disabled" style="color: black;" value="<c:out value="${studentDetails.getFirstName()}" ></c:out>"/>
			<input disabled="disabled" style="color: black;" value="<c:out value="${studentDetails.getLastName()}" ></c:out>"/>
		</div>
		<div class="form-group">
			<label>Course : </label>
			<select name="course" style="color: black;">
				<option value="Dac">DAC</option>
				<option value="Dmc">DMC</option>
				<option value="Desd">DESD</option>
				<option value="BigData">BIG DATA</option>
			</select>
		</div>
		<div class="form-group">
			<label>Gender : </label>
			<input type="radio" name="gender" value="male" style="color: black;">Male
			<input type="radio" name="gender" value="female" style="color: black;">Female
			<input type="radio" name="gender" value="other"style="color: black;">Other
		</div>
		<div class="form-group">
		<label>Date Of Birth : </label>
		<input type="text" class="form-control" name="dob" >
		</div>
		<div class="form-group">
		<label>Email Id : </label>
		<input disabled="disabled" style="color: black;" value="<c:out value="${studentDetails.getEmailId()}" ></c:out>"/>
		</div>
		<div class="form-group">
			<label>Mobile No.</label>
			<input type="number" class="form-control" name="mobNo">
		</div>
		<div class="form-group">
			<label>Nationality</label>
			<input type="text" class="form-control" name="nationality">
		</div>
		<div class="form-group">
			<label>AadharCard No. / Pancard No./ Passport : </label>
			<input type="text" class="form-control" name="IdNo">
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-success" value="Submit">
			<input type="reset" class="btn btn-danger" value="Clear">
		</div>
		
	</form>
	
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Id</th>
				<th>Course</th>
				<th>Gender</th>
				<th>DOB</th>
				<th>Mobile No.</th>
				<th>Nationality</th>
				<th>Id Proof</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${personal.getPersonalId()}</td>
				<td>${personal.getCourse()}</td>
				<td>${personal.getGender()}</td>
				<td>${personal.getDob()}</td>
				<td>${personal.getMobNo()}</td>
				<td>${personal.getNationality()}</td>
				<td>${personal.getIdNo()}</td>
			</tr>
		</tbody>
	</table>
	<br/>
	<div>
	<a class="btn btn-primary"  href="logout" style=" text-transform: uppercase; font-weight: bold;margin-left: 3px; margin-right: 3px;">Logout</a>
	</div>
	</div>
	</div>
	</div>
</body>
</html>