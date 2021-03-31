<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="home.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Order Management</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/MyCss/CSS/css/style.css" />
	
	
	
	
	<script language="javascript">
		function Calculate()
		{
			
			var h = document.getElementById('height').value;
			var l = document.getElementById('price1').value;
			//var l=parseFloat(l);
			var result = h * l;
			
			//result=parseFloat(result);
			
			
		document.getElementById('lblRes').innerHTML = result;
		}
	</script>
	
	
	
	<!--  
	<script >

function calculatePrice(myform)
{
//Get selected data  
var elt = document.getElementById("memoryItem");
var memory = elt.options[elt.selectedIndex].value;

//convert data to integers
memory = parseInt(memory);

  
//calculate total value  
var total = memory; 
  
//print value to  PicExtPrice 
document.getElementById("PicExtPri;e").value=total;
}
	</script>
	
	
	
-->	
	

</head>
    <body onLoad="focusOnSearchBox();">
           <font color="snow" ><h2 align="center"><u><b>Order Management</b></u></h2></font>
           
           
    <script>
    function focusOnSearchBox()
    {
    	document.getElementById("focus1").focus();
    }
    
    </script>       
    
    
    
    
    <SCRIPT language="javascript">
function addRow(tableID) {
    var table = document.getElementById(tableID);

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    var counts = rowCount - 1;

    var cell1 = row.insertCell(0);
    var feed = document.createElement("input");
    feed.type = "text";
    feed.name = "feedOrderDetail[" + counts + "].feed.id";
    cell1.appendChild(feed);

    var cell2 = row.insertCell(1);
    var unitPrice = document.createElement("input");
    unitPrice.type = "text";
    unitPrice.name = "feedOrderDetail[" + counts + "].unitPrice";
    cell2.appendChild(unitPrice);

    var cell3 = row.insertCell(2);
    var quantity = document.createElement("input");
    quantity.type = "text";
    quantity.name = "feedOrderDetail[" + counts + "].quantity";
    cell3.appendChild(quantity);

}
</SCRIPT>
      
<!-- add a search box -->
<form:form action="search" method="POST" name="myform">
<font color="lime"><h4>Search Menu:</h4></font> <input type="text" name="theSearchName" id="focus1" />

<input type="submit" value="Search" class="add-button" />
</form:form>
   
            <br>
            <table align="center" bgcolor="snow" border="" height="2S00px" width="60%">
                <tr>
                    <th>Menu Id</th>
                    <th>Menu Name</th>
                    <th>Menu Cost</th>
                    <th> Quantity</th>
                    <th>Order Quantity</th>
                    <th>Menu Unit</th>
                    <th>Menu Tax</th>
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
					
				
				

					<tr>
					    <td> ${theMenu1.mid} </td>
						<td> ${theMenu1.mname} </td>
						<td><p id="price1" onchange="Calculate()"> ${theMenu1.mprice}</p> </td>
						<td> ${theMenu1.mquantity} </td>    
                  	<td><input type="number" name="height" id="height" onchange="Calculate()"></td>
										



						<td> ${theMenu1.munit} </td>
						<td> ${theMenu1.mtax} </td>
						
						
				
                <td>
                 ${theMenu1.mprice*theMenu1.mquantity}
		
			Total:&nbsp;&nbsp;
			<label id="lblRes"> <!-- a Label to locate result in it -->
			 100
		
			</label>
			
                 </td>
                 
                 
    
                 
                

						
						<td>
				
						<!-- Creating a update link 
						<a href="${updateLink}">Update</a>
						
						-->
						
						<!--  Creating a Delete link  -->
						<a href="${deleteLink}"
						onclick=" if(!(confirm('Do you really want to delete the record? '))) return false">Delete</a>
		
						
						
						</td>
						
						
						
					</tr>
				
				</c:forEach>
						
			</table>
                
                
                                
                
                
            
            
    </body>

</html>