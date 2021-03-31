<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>

<style>
body {
        background-image: url("MyCss/Image/Login.jpg ");
} 
 
</style>
	<title>Login Form</title>
	 <link rel="stylesheet" type="text/css" href="MyCss/CSS/css/bootstrap.css"> 
</head>
<body>
<form action="login" method="POST" >
	<center>
	<table>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<b><font color="yellow"><h2>Login Form</h2></font></b>
				<tr>
				<td><h3><font color="lime">Username:&nbsp;&nbsp;&nbsp;&nbsp;</td></font></h3> <td><input type="text" name="user"  placeholder="Enter Your Username"></td>
			</tr>
			<tr>
				<td><h3><font color="lime">Password:&nbsp;&nbsp;&nbsp;&nbsp;</td></font></h3> <td><input type="text" name="pass"  placeholder="Enter Your Password"></td>
			</tr>
			<tr>
				&nbsp;&nbsp;&nbsp;&nbsp;<td><input type="submit" value="Submit" class="btn btn-success"></td>
				<td><input type="button" value="Cancel" class="btn btn-danger"></td>
				
			</tr>

			

			</div>

		</div>
	</div>

</table>
</center>
</form>

</body>
</html>