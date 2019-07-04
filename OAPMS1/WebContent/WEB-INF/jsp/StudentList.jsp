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
		
		padding-bottom: 40vh;
	}
	</style>
</head>
<body>
<div class="background">
<br/>
<br/>

	<h3 style="font-weight: bold; text-align:center;">Student List</h3>
	
	<br/>
<br/>
 <a href="register" class="btn btn-primary" style="text-transform: uppercase; font-weight: bold;  margin-right: 3px; width: 200px">Student Registration</a>

 
  <a href="company" class="btn btn-default"  style="text-transform: uppercase; font-weight: bold;  margin-left: 3px; margin-right: 3px;width: 200px">Company Registration</a>
  
  <a href="slist" class="btn btn-primary"  style="text-transform: uppercase; font-weight: bold;  margin-left: 3px; margin-right: 3px;width: 200px">Students List</a>
  
  <a href="clist" class="btn btn-default"  style="text-transform: uppercase; font-weight: bold;  margin-left: 3px; margin-right: 3px;width: 200px">Company List</a>
  
  <a href="logout" class="btn btn-primary"  style="text-transform: uppercase; font-weight: bold;  margin-left: 3px; margin-right: 3px;width: 200px">Logout</a>
  <br/>
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
		<c:forEach var="student" items="${studentlist}">
		<tr>
			<td><c:out value="${student.getSerialNo()}"></c:out></td>
			<td><c:out value="${student.getUsername()}"></c:out></td>
			<td><c:out value="${student.getName()}"></c:out></td>	
			<td><c:out value="${student.getCourse()}"></c:out></td>	
			<td><c:out value="${student.getTenthper()}"></c:out></td>	
			<td><c:out value="${student.getTwlper()}"></c:out></td>	
			<td><c:out value="${student.getAgg()}"></c:out></td>	
			<td><c:out value="${student.getEmailId()}"></c:out></td>	
			<%-- <td>
				<form action="delete"
				method="post">
				<div class="form-group">
				<input type="number" style="none;" value="${student.getUsername()}" name="username">
				</div>
				<div>
				<input type="submit" class="btn btn-info" value="Change Status">
				</div>
				</form>
			</td> --%>
		</tr>
		</c:forEach>
			
		</tbody>
	</table>
		</div>
		
</body>
</html>