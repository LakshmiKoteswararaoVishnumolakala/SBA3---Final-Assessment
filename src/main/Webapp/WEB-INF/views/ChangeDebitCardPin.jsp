<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Debit Card Pin</title>
</head>
<style>
    body
    {
            font-family: inherit;
            font-weight: 750;
            background: lightgrey;  
    }
    h3
    {
       color: blue;
    }
    #wrapper
    {
        width= 40%;
        margin: 5%;
    }
    a:hover
    {
        color: red;
        background-color: aqua;
    }
    img
    {
        align-self: center;
    }
    .row:hover
    {
        color: white;
        background-color: purple;
    }
    img{
        border: solid;
        border-color: purple;
        margin: .5%;
    }
</style>
<body>
<jsp:include page="header.jsp"/>
<h2 align="center"> Change Debit Card Pin</h2>			
<hr/>				
		
		
		
		<form >
		<table>
		<tr>
			<td><label>Enter Current Debit Card Number</label></td>
			<td><input type="text" name ="CurrentDebitCardPin"/></td>
		</tr>
		<tr>
			<td><label>Enter New Debit Card Number</label></td>
			<td><input type="text" name ="NewDebitCardPin"/></td>
		</tr>
		<tr>
		<td>	
		<input type="submit" value ="Show Details"/>	
		</td>
		</tr>	
		</table>
		</form>
		
			
	<hr/>
	<a href=DebitCard>Return to DebitCard</a>
	<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>