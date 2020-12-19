<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Raise A Problem Ticket</title>
</head>
<body>
			
		<form action="RaiseAProblemTicket.jsp" method="post">		
		<table>
		<tr>
			<td><label>Problem Ticket Number</label></td>
			<td><input type="text" name ="Customer ID" value = " "/></td>
		</tr>
		<tr>
			<td><label for="Request Type">Request Type</label></td>
				<td><select name="Request Type">
						<option value="Debit Card Lost">Debit Card Lost</option>
						<option value="Credit Card Lost">Credit Card Lost</option>
						<option value="Other">Other</option>
						
				</select></td> 
		</tr>
		<tr>
			<td><label>Other Comments</label></td>
			<td><input type="text" name ="Other Comments"/></td>
		</tr>
		<tr>
		<td>	
		<input type="submit" value ="Submit"/>	
		</td>
		</tr>
		</table>
	</form>
	
		<hr/>
			
			<a href=DebitCard>DebitCard</a>
	
</body>
</html>