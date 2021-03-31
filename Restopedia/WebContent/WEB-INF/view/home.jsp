<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<title>RestoPediaHome</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
-->


 <link rel="stylesheet" type="text/css" href="MyCss/CSS/css/bootstrap.css">
 
 
 <script
	src="MyCss/JS/js/jquery-2.1.3.js"></script>

 <script
	src="MyCss/JS/js/bootstrap.min.js"></script>

<style>


.top-bar
{

background-color: #009999;
color:snow;
font-size: 18px
padding:3px;

}

.header
{
	background-color: #009999;
	font-size: 30px;
	color:snow;
	font-family: verdana;
}
</style>



</head>


<body style="background-color: #005856";>
<!-- Top-bar -->
	<div class="container-fluid top-bar">
		<div class="row">
			<div class="col-md-4">
				<p class="text-left">Email:vijaytripathi553@gmail.com</p>
				
			</div>
			<div class="col-md-4">
				<p class="text-center">Contact: +91-7517013695</p>
			</div>
			
			<div class="col-md-4">
					    <input type="hidden" value= 00 id="datehidden" name="date">
						<p class="text-right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date:<label id="date"></label></p>
							<script>
							date = new Date();
							 year = date.getFullYear();
							 month = date.getMonth() + 1;
							 day = date.getDate();
							 document.getElementById("date").innerHTML= "&nbsp;"+ day + "/" + month + "/" + year;
							 document.getElementById("datehidden").value=  day + "/" + month + "/" + year;
							 minutes= date.getMinutes();
							 hours= date.getHours();
							 hours=hours%12;
							 ampm= date.getHours() >= 12?'PM':'AM';
							 document.getElementById("timehidden").value=  hours + ":" + minutes + "  " + ampm;
							 document.getElementById("time").innerHTML= "&nbsp;"+ hours + ":" + minutes + "  " + ampm;
							</script>
				</div>		
						
		</div>
	</div>
	<br>
<!-- Header -->
	<div class="container-fluid">
			<div class="col-md-12">
			
				<div class="header">
				<img src="MyCss/Image/Logo.jpg">&nbsp;
				RESTOPEDIA(Restaurant Master Software)
				
					 <hr>
	
	</div>
	</div>
	</div>
	
	



	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			
		<!-- Example single danger button -->
 <div class="btn-group">
  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Main Function
  </button>
  <div class="dropdown-menu">
  
  <a class="dropdown-item" href="#/home">Employee Master</a></li>
	<a class="dropdown-item" href="#">Menu Master</a></li>
	<a class="dropdown-item" href="#">Transaction Master</a></li>
	<a class="dropdown-item" href="#">Report</a></li>
  </div>
</div>


<div class="btn-group">
  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" 
  aria-expanded="false">
Order Management
  </button>
  <div class="dropdown-menu">
 <a class="dropdown-item"  href="${pageContext.request.contextPath}/om"  />Order</a>
  </div>
</div>	



<div class="btn-group">
  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" 
  aria-expanded="false">
Menu Management
  </button>
  <div class="dropdown-menu">
     <a class="dropdown-item"  href="${pageContext.request.contextPath}/list" />Menu</a><br><br>

  </div>
</div>
			
			
			
			
			
			 <div class="btn-group">
  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Contact
  </button>
  <div class="dropdown-menu">
  
	<a class="dropdown-item" href="${pageContext.request.contextPath}/contact" />Contact</a></li>
  </div>
</div>
			
<!-- 			 <div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
					Main Function <span class="caret"></span>
				</button>
				<ul class="dropdown-menu dropdown-menu-left" role="menu">
					<li><a href="#/home">Employee Master</a></li>
					<li><a href="#">Menu Master</a></li>
					<li><a href="#">Transaction Master</a></li>
					<li><a href="#">Report</a></li>
				</ul>

				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
					Order Master <span class="caret"></span>
				</button>
				<ul class="dropdown-menu dropdown-menu-left" role="menu">
					<li><a href="#/home">KOT</a></li>
					<li><a href="#">Cash counter</a></li>
					<li><a href="#">Transactionr</a></li>
					<li><a href="#">Bill</a></li>
				</ul>
 -->
				<ul class="nav navbar-nav navbar-right">
					<li><a href="./">
					<span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container"></div> 
</body>
</html>