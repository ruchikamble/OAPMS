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

<h3 style="font-weight: bold; text-align:center;text-transform: uppercase;">Academic  Details</h3>
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
		<form action="academic" method="post">
		<div class="form-group" >
			<label>Registration No : </label>
			<input disabled="disabled" style="color: black;" value="<c:out value="${studentDetails.getUsername()}"/>" >
		</div>
		<div class="form-group">
		<label>Degree</label>
		<select name="degree" style="color: black;">
		<option value="ssc">SSC</option>
		<option value="hsc">HSC</option>
		</select>
		</div>
		<div class="form-group">
		<label>Institute</label>
		<input type="text" class="form-control" name="institute">
		</div>
		<div class="form-group">
		<label>Board</label>
		<input type="text" class="form-control" name="board">
		</div>
		<div class="form-group">
		<label>Grade/Division</label>
		<select name="grade" style="color: black;">
		<option style="color: black;" value="distinction">Distinction</option>
		<option style="color: black;" value="firstclass">First Class</option>
		<option style="color: black;" value="secondclass">Second Class</option>
		<option  style="color: black;"value="thirdclass">Third Class</option>
		</select>
		</div>
		<div class="form-group">
		<label>Year of Passing</label>
		<input type="number" class="form-control" name="yearOfPass">
		</div>
		<div class="form-group">
		<label>Obtained Marks</label>
		<input type="number" class="form-control" name="obtainedMarks">
		</div>
		<div class="form-group">
		<label>Total Marks</label>
		<input type="number" class="form-control" name="totalMarks">
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
				<th>Degree</th>
				<th>Institue</th>
				<th>Board</th>
				<th>Grade</th>
				<th>Obtained Marks</th>
				<th>Total Marks</th>
				<th>Percentage</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${academicDetails.getAcademicId()}</td>
				<td>${academicDetails.getDegree()}</td>
				<td>${academicDetails.getInstitute()}</td>
				<td>${academicDetails.getBoard()}</td>
				<td>${academicDetails.getGrade()}</td>
				<td>${academicDetails.getObtainedMarks()}</td>
				<td>${academicDetails.getTotalMarks()}</td>
				<td>${academicDetails.getPercentage()}</td>
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