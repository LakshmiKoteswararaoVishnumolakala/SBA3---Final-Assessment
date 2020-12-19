<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

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
<h2 align="center"> Debit Card Transaction Summary</h2>
<hr/>
<form action="DebitCardTransactionSummary" method="post">	
 <div id="wrapper">	
 	<table>		
		<tr>	
			<td><label>Debit Card Number</label></td>
			<td><input type="text" name ="DebitCardNumber"></td>
		</tr>
		<tr>
			<td><label>Debit Card Type</label></td>
			<td><input type="text" name ="DebitCardType"></td>
		</tr>
		<tr>
			<td><label>Customer Name</label></td>
			<td><input type="text" name ="CustName"></td>
		</tr>
		<tr>
		<td>	
		<input type="submit" value ="Show Details"/>	
		</td>
		</tr>
	</table>
	<h3 align="left"> Transaction Summary</h3>		
	<h4> TransactionRefNumber: ${cardsManagement.getTransactionRefNumber()} </h4>
	<h4> TransactionDate: ${TransactionSummary.getTransactionDate()}</h4>
	<h4> TransactionDescription: ${TransactionSummary.getTransactionDescription()}</h4>
	<h4> TransactionAmount: ${TransactionSummary.getTransactionAmount()}</h4>
	<h4> TransactionType: ${TransactionSummary.getTransactionType()}</h4>
	<hr/>
	<a href=DebitCard>Go to Debit Card page</a>
	<br><br/>
	<a href=Cards>Go To Cards</a>	
    <br><br/>
    <a href=HomePage>Go To Home Page</a>
	<br><br/>
 </div>		
</form>
<hr/>
<jsp:include page="footer.jsp"/>
</body>

</html>