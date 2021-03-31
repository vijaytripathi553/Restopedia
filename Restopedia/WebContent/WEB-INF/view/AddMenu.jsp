
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ include file="home.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Save Customer</title>
	<link 	type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath }/MyCss/CSS/style.css">
			
			
			
			<link 	type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath }/MyCss/CSS/cs/add-customer-style.css">
</head>
<body>
<center>

	<div id="wrapper">
		<div id="header">
		</div>
	</div>
	
	<div id="container">
		
<b><font color="lime"><h2><u>Add New Menu Item</u></h2></font></b>
		</div>
		<form:form action="addNewMenu" modelAttribute="MENU1" method="POST">
		
			<!-- need to associate this data with customer id -->
			<form:hidden path="mid"></form:hidden>
					
			
			<table  >
				<tbody>
					<tr>
						<td><label><h4><font color="snow"<b>Name:</h4></b></font></label></td>
						<td><form:input path="mname" placeholder="Enter Menu Name"></form:input></td>
					</tr>
						
					<tr>
						<td><label><h4><font color="snow">Price:</h4></font></label></td>
						<td><form:input path="mprice" placeholder="Enter Menu Price"></form:input></td>
					</tr>
					
					
					<tr>
						<td><label><h4><font color="snow">Quantity:</font></label></td>
						<td> <form:select path="mquantity">
		<form:option value="1" label="1"></form:option>
		<form:option value="2" label="2"></form:option>
		<form:option value="3" label="3"></form:option>
		<form:option value="4" label="4"></form:option>
		<form:option value="5" label="5"></form:option>
		</form:select></td>
					</tr>
					
					
					<tr>
						<td><label><h4><font color="snow">Unit:</font></label></td>
						<td><form:input path="munit" placeholder="Enter Menu Unit"></form:input></td>
					</tr>
					
					
					<tr>
						<td><label><h4><font color="snow">Tax:</font></label></td>
						<td><form:input path="mtax" placeholder="Enter Menu Tax"></form:input></td>
					</tr>
					
					
					
					
					
					<tr>
						<td><label></label></td>
						<!--  <td><input type="submit" value="Save" class="save"/></td>-->
						<td><input type="submit" value="Save" class="btn btn-success"></td>
					</tr>																			
				</tbody>
			</table>
			
		</form:form>
		
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath }/list">Back to Menu</a>
		</p>
</center>
</body>
</html>