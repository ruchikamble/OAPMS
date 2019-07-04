<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
   
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sunbeam</title>
<link rel="shortcut icon" href="resources/Images/favicon.ico">
<script src="../resources/css/jquery-3.2.1.js"></script>
 <script src="../resources/css/bootstrap.js"></script>
 <link href="../resources/css/bootstrap.css" rel="stylesheet">
 <link href="../resources/css/bootstrap-theme.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style>
	h2{
	position: relative;
	padding: 8vh 10vw;
	text-align: center;
	color: white;
	font-size : 60px;
	font-family : cursive;
	font-weight : bold;
	background-image:url(" resources/Images/sunbeam.jpg");
	
	/* background: linear-gradient(10deg, #222931, red); */
	background-size: cover;
	}
	.logo{
	margin-top: -5vh;
	margin-left: -30vh;
	margin-bottom : 5vh;
	background-color: transparent;
	display: inline-block;
	position: absolute;
	}
	
	.carousel-caption{background-color:rgba(0,0,0,0.6);
	display : inline-block;
	text-align : left;
	font-weight : bold;
	left : 0;
	position : fixed;
	padding-top : 5px;
	font-size: 20px; }
	                   
	 .contacts
	 {
	  background-image :url(" resources/Images/contacts.jpg"); 
	   background-color: #1c5d85;
	   color: lightblue;
	 } 
	 .login
	 {
	   background-color: lightgray;
	 }                 
</style>	
</head>
<body>
	
	<div style="display:block; text-align: center;">
	
	
    <h2><div class="logo">
    	<img alt="" src="resources/Images/favicon.ico">
    </div>Sunbeam Institute Of Technology</h2>
   

	
    
   <br/>
    <br/>
    <div class="login">
   <br/>
   <br/>
   <br/>
    <form action="admin/login" method="get">
    	<input type="submit" class="btn btn-primary btn-lg" value="Login as Admin">
    </form>
     <br/>
   <br/>
    <form action="student/slogin" method="get">
    	<input type="submit" class="btn btn-primary btn-lg" value="Login as Student">
    </form>
    
    <br/>
     <br/>
   <br/>
   <br/>
   </div>
   </div>
   <br/>
    <br/>
  <!--  <div class="container">
   <div class="row">
   	<div class="col-md-6">
   		
   			<h3 class="text-primary">About Us</h3>
   			<p>At Sunbeam we believe retaining a competitive edge is imperative for any individual in today's professional world. Companies are restructuring their organizations & reengineering their business processes. Not only have the challenges become more demanding, but also the rewards of staying at the forefront seem to be promising.

In this scenario, technical & personal skills which provide effective solutions & time critical support are of principal significance for the long term growth of professionals. Sunbeam's expertise in effectively delivering training, solutions & services has made it a favored institution to many students & professionals focused on an aggressive career growth strategy.</p>
   		</div>
   	<div class="col-md-6">
   		<img alt="" src="resources/Images/aboutus.png">
   	</div>	
   	</div>
   </div>
   <br/> -->
   <header class="header"> 
   <div class="header-overlay">
  <div id="myCarousel" class="carousel fade-carousel slide" data-ride="carousel" data-interval ="3500" style="height:300px;">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		   
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner">
		    <div class="item active">
		      <img  style="height:300px;width:100%"  src="resources/Images/carosal1.jpg" alt="">
		      <div class="carousel-caption">
		      <h3 style="font-weight: bold; font-family: fantasy; font-size: 30;">About Us</h3>
		     <p>At Sunbeam we believe retaining a competitive edge is imperative for any individual in today's professional world. Companies are restructuring their organizations & reengineering their business processes. Not only have the challenges become more demanding, but also the rewards of staying at the forefront seem to be promising.

In this scenario, technical & personal skills which provide effective solutions & time critical support are of principal significance for the long term growth of professionals. Sunbeam's expertise in effectively delivering training, solutions & services has made it a favored institution to many students & professionals focused on an aggressive career growth strategy.</p>
		      </div>
		    </div>
		
		    <div class="item">
		      <img style="height:300px;width:100%" src="resources/Images/carosal2.jpg" alt="">
		      <div class="carousel-caption">
		      <h3 style="font-weight: bold; font-family: fantasy; font-size: 30;">About Us</h3>
		     <p>At Sunbeam we believe retaining a competitive edge is imperative for any individual in today's professional world. Companies are restructuring their organizations & reengineering their business processes. Not only have the challenges become more demanding, but also the rewards of staying at the forefront seem to be promising.

In this scenario, technical & personal skills which provide effective solutions & time critical support are of principal significance for the long term growth of professionals. Sunbeam's expertise in effectively delivering training, solutions & services has made it a favored institution to many students & professionals focused on an aggressive career growth strategy.</p>
		      </div>
		    </div>
		
		    <div class="item">
		      <img style="height:300px;width:100%" src="resources/Images/carosal3.jpg" alt="">
		      <div class="carousel-caption">
		      <h3 style="font-weight: bold; font-family: fantasy; font-size: 30;">About Us</h3>
		     <p>At Sunbeam we believe retaining a competitive edge is imperative for any individual in today's professional world. Companies are restructuring their organizations & reengineering their business processes. Not only have the challenges become more demanding, but also the rewards of staying at the forefront seem to be promising.

In this scenario, technical & personal skills which provide effective solutions & time critical support are of principal significance for the long term growth of professionals. Sunbeam's expertise in effectively delivering training, solutions & services has made it a favored institution to many students & professionals focused on an aggressive career growth strategy.</p>
		      </div>
		    </div>
		    
		   
		  </div>
		
		  <!-- Left and right controls -->
		  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		</div>
		</header>
		<br/>
		<br/>
		<br/>
		<br/>
		<h3 style="text-align: center;">Our Recruiters</h3>
		<br/>
		<br/>
		<br/>
		<br/>
		 <div id="myCarousel" class="carousel fade-carousel slide" data-ride="carousel" data-interval ="3500" style="height:300px; ">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		   
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner">
		    <div class="item active">
		      <img  src="resources/Images/trans1.png" alt="">
		     </div>
		
		    <div class="item">
		      <img style="height:450px;width:100%" src="resources/Images/" alt="">
		    
		    </div>
		
		    <div class="item">
		      <img style="height:450px;width:100%" src="resources/Images/" alt="">
		     </div>
		    
		   
		  </div>
		
		  <!-- Left and right controls -->
		  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
		<div class="contacts">
		<div class="container">
			<div class="row">
			<h3 style="font-size: 30px; font-weight: bold; font-family: fantasy; text-align: centre; color: white;">Contacts</h3>
				<div class="col-md-4">
				
				<br/>
				<h3 style="font-size: 18px;" ><span class="glyphicon glyphicon-map-maker"></span>PUNE CENTRE</h3>
				<br/>
				<p style="font-weight: bold;">SunBeam Institute of Information Technology, Pune</p>
				<br/>
				<p>'Sunbeam', Plot No.R/2, Market Yard Road, Behind Hotel Fulora, Gultekdi,    Pune - 411 037. MH-INDIA.</p>
				<br/>
				<div ><span class="glyphicon glyphicon-phone"></span> +91-20-65330101 / 65330202</div>
                     <div><span class="glyphicon glyphicon-envelope"></span> siit@sunbeaminfo.com</div>
				</div>
				<div class="col-md-4"></div>
				<div class="col-md-4">
				
				<br/>
				<h3 style="font-size: 18px;"><span class="glyphicon glyphicon-map-maker"></span>KARAD CENTRE</h3>
				<br/>
				<p style="font-weight: bold;">SunBeam Institute of Information Technology, Karad</p>
				<br/>
				<p>'Anuda Chambers', 203 Shaniwar Peth, Near Gujar Hospital, Karad - 415 110,     Dist. Satara, MH-INDIA.</p>
				<br/>
				<div ><span style="color: white;" class="glyphicon glyphicon-earphone"></span>  02164 - 225500 / 225800</div>
                     <div><span class="glyphicon glyphicon-envelope"></span> siitkarad@sunbeaminfo.com</div>
				</div>
				</div>
			</div>
		</div>
		
<br/>
<br/>

</body>
</html>