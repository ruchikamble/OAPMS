<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
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

<h3 style="font-weight: bold; text-align:center;text-transform: uppercase;">Graduation Details</h3>
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
	<div class="col-md-9">
		<form action="graduation" method="post">
		<div class="form-group" >
			<label>Registration No : </label>
			<input disabled="disabled" style="color: black;"  value="<c:out value="${studentDetails.getUsername()}"/>" >
		</div>
		<div class="form-group">
		<label>Degree</label>
		<select name="degree" style="color: black;">
		<option value="diploma">Diploma</option>
		<option value="graduation">Graduation</option>
		<option value="postgraduation">Post Graduation</option>
		</select>
		<label>Specialization</label>
		<select name="specialization" style="color: black;">
		<option value="6">Aerospace</option>
			<option value="7">Agricultural</option>
			<option value="8">Automobile</option>
			<option value="9">Biomedical</option>
			<option value="49">Biotechnology Engineering</option>
			<option value="10">Chemical Engineering</option>
			<option value="11">Civil</option>
			<option value="12">Computer Applications</option>
			<option value="13">Computer Engineering</option>
			<option value="14">Computer Science</option>
			<option value="15">Computer Science &amp; Engineering</option>
			<option value="70">Computer Science and Software Engineering</option>
			<option value="16">Computer Technology</option>
			<option value="17">Computers</option>
			<option value="18">Electrical</option>
			<option value="19">Electrical &amp; Electronics</option>
			<option value="20">Electronic and Computer Engineering</option>
			<option value="21">Electronics</option>
			<option value="22">Electronics &amp; Communication</option>
			<option value="23">Electronics &amp; Instrumentation</option>
			<option value="24">Electronics &amp; Telecommunication</option>
			<option value="25">Environmental</option>
			<option value="26">Industrial Electronics</option>
			<option value="69">Industrial Engineering</option>
			<option value="27">Information Systems</option>
			<option value="28">Information Technology</option>
			<option value="29">Instrumentation</option>
			<option value="67">Marine Engineering</option>
			<option value="5">Mechanical</option>
			<option value="30">Mechatronic</option>
			<option value="48">Printing Technology</option>
			<option value="31">Production</option>
			<option value="32">Software Engineering</option>
			<option value="33">Systems Science</option>
			<option value="34">Telecommunication</option>
			<option value="35">Textiles</option>
			<option value="36">Wireless Engineering</option>
		</select>
		</div>
		<div class="form-group">
		<label>Institute</label>
		<input type="text" class="form-control" name="institute">
		</div>
		<div class="form-group">
		<label>University</label>
		<input type="text" class="form-control" name="university">
		</div>
		<div class="form-group">
		<label>Grade/Division</label>
		<select name="grade" style="color: black;">
		<option value="distinction">Distinction</option>
		<option value="firstclass">First Class</option>
		<option value="secondclass">Second Class</option>
		<option value="thirdclass">Third Class</option>
		</select>
		</div>
		<div class="form-group">
		<label>Total Backlogs</label>
		<input type="number" class="form-control" name="totalBackLogs">
		</div>
		<div class="form-group">
		<label>No Of Attempts</label>
		<input type="number" class="form-control" name="noOfAttempts">
		</div>
		<div class="form-group">
		<label>Enter Marks</label>
		<table class="table table-bordered">
		<thead>
			<tr>
			<th>Exam Pattern</th>
			<th>Total Marks</th>
			<th>Obtained Marks</th>
			<th>Total Marks</th>
			<th>Obtained Marks</th>
			<th>Year</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
				<select  style="color: black;">
					<option >Semester</option>
					<option  id = "year" value="yearly">Yearly</option>
					
				</select>
				</td>
				<td>
					<input  class="form-control" type="number" placeholder="Semester1" name="sem1T">
				</td>
				<td>
					<input  type="number" class="form-control" placeholder="Semester1" name="sem1O">
				</td>
				<td>
					<input type="number" placeholder="Semester2" class="form-control" name="sem2T">
				</td>
				<td> 
					<input type="number" placeholder="Semester2" class="form-control" name="sem2O">
				</td>
				<td>First Year</td>
			</tr>
		<tr>
				<td>
				<select style="color: black;">
					<option value="sem">Semester</option>
					<option  value="yearly">Yearly</option>
				</select>
				</td>
				<td>
					<input class="form-control" type="number" placeholder="Semester3" name="sem3T">
				</td>
				<td>
					<input class="form-control" type="number" placeholder="Semester3" name="sem3O">
				</td>
				<td>
					<input type="number" class="form-control" placeholder="Semester4" name="sem4T">
				</td>
				<td>
					<input type="number" class="form-control" placeholder="Semester4" name="sem4O">
				</td>
				<td>Second Year</td>
			</tr>
			<tr>
				<td>
				<select style="color: black;">
					<option value="sem">Semester</option>
					<option id = "year" value="yearly">Yearly</option>
				</select>
				</td>
				<td><input  type="number" placeholder="Semester5" class="form-control" style="color: black;" name="sem5T">
				</td>
				<td>
					<input  type="number" placeholder="Semester5" class="form-control" name="sem5O">
				</td>
				<td>
					<input type="number" placeholder="Semester6" class="form-control"  name="sem6T">
				</td>
				<td>
					<input type="number" placeholder="Semester6" class="form-control" name="sem6O">
				</td>
				<td>Third Year</td>
			</tr>
			<tr>
				<td>
				<select  style="color: black;">
					<option value="sem">Semester</option>
					<option id = "year" value="yearly">Yearly</option>
				</select>
				</td>
				<td>
					<input  type="number" placeholder="Semester7" class="form-control" name="sem7T">
				</td>
				<td>
					<input  type="number" style="color: red;" placeholder="Semester7" class="form-control" name="sem7O">
				</td>
				<td>
					<input type="number" placeholder="Semester8" class="form-control" name="sem8T">
				</td>
				<td>
					<input type="number" placeholder="Semester8" class="form-control" name="sem8O">
				</td>
				<td>Final Year</td>
			</tr>
		</tbody>
        </table>
        
        </div>
        <div class="form-group">
		<label>Admission Year</label>
		<input type="number" class="form-control"  name="yearOfAd">
		</div>
		<div class="form-group">
		<label>Passing Year</label>
		<input type="number" class="form-control"  name="yearOfPass">
		</div>
		<div class="form-group">
		<label>University Degree %</label>
		<input type="number" class="form-control"  name="unDegPer">
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
				<th>Degree</th>
				<th>Institue</th>
				<th>University</th>
				<th>Grade</th>
				
				<th>Degree %</th>
				<th>Aggregate %</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${graduationDetails.getGraduationId()}</td>
				<td>${graduationDetails. getDegree()}</td>
				<td>${graduationDetails.getInstitute()}</td>
				<td>${graduationDetails.getUniversity()}</td>
				<td>${graduationDetails.getGrade()}</td>
				<td>${graduationDetails.getUnDegPer()}</td>
				<td>${graduationDetails.getAggregate()}</td>
				
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