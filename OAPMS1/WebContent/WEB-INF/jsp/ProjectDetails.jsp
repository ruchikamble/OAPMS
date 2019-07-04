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

<h3 style="font-weight: bold; text-align:center;text-transform: uppercase;">Project  Details</h3>
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
		<form action="project" method="post">
		<div class="form-group" >
			<label>Registration No : </label>
			<input disabled="disabled" style="color: black;" value="<c:out value="${studentDetails.getUsername()}"/>" >
		</div>
		<div class="form-group">
		<label>Qualification</label>
		<select name="qualification" style="color: black;">
			<option value="te">Third Year</option>
			<option value="fe">Final Year</option>
			<option value="cdac">Cdac</option>
		</select>
		</div>
		<div class="form-group">
		<label>Project Title</label>
		<input type="text" class="form-control" name="projectTitle">
		</div>
		<div class="form-group">
		<label>Platform</label>
		<input type="text" class="form-control" name="platform">
		</div>
		<div class="form-group">
		<label>Duration in Months</label>
		<input type="number" class="form-control" name="duration">
		</div>
		<div class="form-group">
		<label>Project Description</label>
		<input type="text" class="form-control" name="description">
		</div>
		
		<div class="form-group">
			<input type="submit" class="btn btn-success" value="Submit">
			<input type="reset" class="btn btn-danger" value="Clear">
		</div>
		
		</form>
		</div>
		<table class="table table-bordered">
		<thead>
			<tr>
				<th>Id</th>
				<th>Qualification</th>
				<th>Project Title</th>
				<th>Platform</th>
				<th>Duration</th>
				<th>Description</th>
				
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${projectDetails.getProjectId()}</td>
				<td>${projectDetails.getQualification()}</td>
				
				<td>${projectDetails.getProjectTitle()}</td>
				<td>${projectDetails.getPlatform()}</td>
				<td>${projectDetails.getDuration()}</td>
				<td>${projectDetails.getDescription()}</td>
				
			</tr>
		</tbody>
	</table>
	<br/>
	<div>
	<a class="btn btn-primary"  href="logout" style=" text-transform: uppercase; font-weight: bold;margin-left: 3px; margin-right: 3px;">Logout</a>
	</div> 
	</div>
	</div>
</body>
</html>