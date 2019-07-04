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
<header>
<div class="header-overlay">

<div class="background">

<br/>
<br/>
<h3 style="font-weight: bold; text-align: center; text-transform: uppercase;">Address Details</h3>
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
<div class="container">
	<br/>
	<div class="col-md-5">
		<form action="address" method="post">
		<div class="form-group" >
			<label>Registration No : </label>
			<input disabled="disabled" style="color: black;"  value="<c:out value="${studentDetails.getUsername()}"/>" >
		</div>
		<div class="form-group">
		<label>Address Line 1</label>
		<input type="text" class="form-control" name="address1">
		</div>
		<div class="form-group">
		<label>Address Line 2</label>
		<input type="text" class="form-control" name="address2">
		</div>
		<div class="form-group">
		<label>City</label>
		<input type="text" class="form-control" name="city">
		</div>
		<div class="form-group">
		<label>State</label>
		<input type="text" class="form-control" name="state">
		</div>
		<div class="form-group">
		<label>Country</label>
		<input type="text" class="form-control" name="country">
		</div>
		<div class="form-group">
		<label>Pin code</label>
		<input type="text" class="form-control" name="pincode">
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
				<th>Address</th>
				<th>City</th>
				<th>State</th>
				<th>Country</th>
				<th>Pincode</th>
				
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${addressDetails.getAddressId()}</td>
				<td>${addressDetails.getAddress1()} ${addressDetails.getAddress2()}</td>
				
				<td>${addressDetails.getCity()}</td>
				<td>${addressDetails.getState()}</td>
				<td>${addressDetails.getCountry()}</td>
				<td>${addresscDetails.getPincode()}</td>
				
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
	</header>
</body>
</html>