<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../resources/css/bootstrap.css" rel="stylesheet">
<link href="../resources/css/bootstrap-theme.css" rel="stylesheet">
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
	<h3 style="font-weight: bold; text-align:center;">ShortListed Students</h3>
	<br/>
<br/>
 <a href="register" class="btn btn-primary">Student Registration</a>
  <a href="company" class="btn btn-primary">Company Registration</a>
  <a href="slist" class="btn btn-primary">Students List</a>
  <a href="clist" class="btn btn-primary">Company List</a>
  <a href="logout" class="btn btn-primary">Logout</a>
<br/>

<br/>
<br/>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Serial No.</th>
				<th>Registration No.</th>
				<th>Name</th>
				<th>Course</th>
				<th>SSC</th>
				<th>HSC</th>
				<th>Graduation</th>
				<th>Email Id</th>
				
				
			</tr>
		</thead>
		<tbody>
		<c:forEach var="sstudent" items="${sstudentlist}">
		<tr>
			<td><c:out value="${sstudent.getSerialNo()}"></c:out></td>
			<td><c:out value="${sstudent.getUsername()}"></c:out></td>
			<td><c:out value="${sstudent.getName()}"></c:out></td>	
			<td><c:out value="${sstudent.getCourse()}"></c:out></td>	
			<td><c:out value="${sstudent.getTenthper()}"></c:out></td>	
			<td><c:out value="${sstudent.getTwlper()}"></c:out></td>	
			<td><c:out value="${sstudent.getAgg()}"></c:out></td>	
			<td><c:out value="${sstudent.getEmailId()}"></c:out></td>	
			
		</tr>
		</c:forEach>
			
		</tbody>
	</table>
		</div>
		</div>
</body>
</html>