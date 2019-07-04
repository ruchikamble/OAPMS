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
		padding: 5vh 0;
		padding-bottom: 40vh;
	}
	</style> 
</head>
<body>
<div class="background">
<br/>
<br/>
<div class="container">
	<h3 style="font-weight: bold; text-align:center;">Company Status</h3>
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
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>SSC Criteria</th>
				<th>HSC Criteria</th>
				<th>Graduation Criteria</th>
				<th>Date of Recruitment</th>
				<th>No. of Recruitment</th>
				<th>Technology</th>
			    <th>Course Name</th>
			    <th>Website</th>
			    <th>#</th>
				
			</tr>
		</thead>
		<tbody>
		<c:forEach var="company" items="${companyList}">
		<tr>
			<td><c:out value="${company.getCompany_Id()}"></c:out></td>
			<td><c:out value="${company.getCompany_name()}"></c:out></td>
			<td><c:out value="${company.getSsc()}"></c:out></td>	
			<td><c:out value="${company.getHsc()}"></c:out></td>	
			<td><c:out value="${company.getGraduation()}"></c:out></td>	
			<td><c:out value="${company.getDateOfRec()}"></c:out></td>	
			<td><c:out value="${company.getNoOfRec()}"></c:out></td>	
			<td><c:out value="${company.getTechnology()}"></c:out></td>	
			<td><c:out value="${company.getCourse()}"></c:out></td>	
			<td><c:out value="${company.getWebsite()}"></c:out></td>	
			<td>
				<form action="shortList" method="post">
				   <input style="display: none" value="${company.getCompany_name()}" name="company_name">
					<input style="display: none" value="${company.getSsc()}" name="ssc">
					<input style="display: none" value="${company.getHsc()}" name="hsc">
					<input style="display: none" value="${company.getGraduation()}" name="graduation">
					<input style="display: none" value="${company.getDateOfRec()}" name="dateOfRec">
					<input style="display: none" value="${company.getTechnology()}" name="technology">
					<input style="display: none" value="${company.getCourse()}" name="course">
					<input type="submit" class="btn btn-primary" value="ShortList Students">
				</form>
			</td>	
					
		</tr>
		</c:forEach>
			
		</tbody>
	</table>
		</div>
		</div>
</body>
</html>