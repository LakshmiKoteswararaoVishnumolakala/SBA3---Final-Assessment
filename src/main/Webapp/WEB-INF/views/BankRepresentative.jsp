<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Bank Representative</title>
</head>
<body>
			

		<form action="BankRepresentative" method="post">

		<table>
		<tr>
			<td><label>Enter CustomerID</label></td>
			<td><input type="text" name ="CustomerID"/></td>
		</tr>		
		<tr>
		<td>	
		<input type="submit" value ="Show Details"/>	
		</td>
		</tr>
			
		</table>
				
		<h2 align="center">Customer Information</h2>
		
<h4> CreditCardLastStatementBalance: ${CreditCard.getCreditCardLastStatementBalance()} </h4>
<h4> CreditCardMinAmtDue: ${CreditCard.getCreditCardMinAmtDue()}</h4>
    <br>
	<label>Other Amount</label>
	<input type="text" name ="OtherAmount"/>
	<br>
	<label>Proceed to Payment</label>
	<input type="text" name ="Proceed to Payment"/>

	</form>
	
		
			<label>Credit Card</label>

			<a href=CreditCard>Credit Card</a>

</body>
</html>