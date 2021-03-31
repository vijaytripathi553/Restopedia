<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="home.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>
	<title>Menu List</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/MyCss/CSS/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2><u><b>Menu Master</h2></u></b>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
		<!--  Adding Button  -->
		
		
	<font color="green"></font>	<input type="button" value="Add Menu" 
		onclick="window.location.href='showFormForAdd'; return false"
		class="add-button"  /></font>
		

		
		
		
			<!--  add our html table here -->
		
			<table>
				<tr>
				    <th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Unit</th>
					<th>Tax</th>
					<th>Total</th>
					<th>Action</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="theMenu1" items="${MENU1}">
				
				
				<!--  Updation part starts from here-->
				<!-- Construct the "update" link through customer id -->
				<c:url var="updateLink" value="/showFormForUpdate">
			 	     <c:param name="menuid" value="${theMenu1.mid}" />
					</c:url>
					<!-- Updation link ends here..... -->
					
					
					<!--  Deletion part starts from here-->
				<!-- Construct the "update" link through customer id -->
				<c:url var="deleteLink" value="/showFormForDelete">
			 	     <c:param name="cusid" value="${theMenu1.mid}" />
					</c:url>
					<!-- deletion link ends here..... -->
					
				
				

					<tr>
					    <td> ${theMenu1.mid} </td>
						<td> ${theMenu1.mname} </td>
						<td> ${theMenu1.mprice} </td>
						<td> ${theMenu1.mquantity} </td>
						<td> ${theMenu1.munit} </td>
						<td> ${theMenu1.mtax} </td>
						
				     	<td> ${theMenu1.mprice* theMenu1.mquantity}</td>

					
						
						
						
						
						
						<td>
						<!-- Creating a update link -->
						<a href="${updateLink}"><p class="btn btn-success">Update</p></a>
						
						<!--  Creating a Delete link  -->
						<a href="${deleteLink}"
						onclick=" if(!(confirm('Do you really want to delete the record? '))) return false"><p class="btn btn-danger">Delete</p></a>
		
						
						
						</td>
						
						
						
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	

</body>

</html>









