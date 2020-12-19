<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Credit Card Transaction Summary</title>
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
<jsp:include page="header.jsp"/>
<h2 align="center"> Credit Card Transaction Summary</h2>
<hr/>
<body>
<form >	
 <div id="wrapper">	

		<table>
		<tr>
			<td><label>Enter CustomerID</label></td>
			<td><input type="text" name ="Customer ID"/></td>
		</tr>

		<tr>
				<td><label for="Transaction Type">Transaction Type</label></td>
				<td><select name="Transaction Type">
						<option value="Debit">Debit</option>
						<option value="Credit">Credit</option>
						<option value="Both">Both</option>
						
				</select></td> 
			</tr>
		<tr>		
			

		</table>	
		<h3 align="left"> Transaction Summary</h3>		
		<h4> TransactionRefNumber: ${CrTransactionSummary.getCrTransactionRefNumber()} </h4>
		<h4> TransactionDate: ${CrTransactionSummary.getCrTransactionDate()}</h4>
		<h4> TransactionDescription: ${CrTransactionSummary.getCrTransactionDescription()}</h4>
		<h4> TransactionAmount: ${CrTransactionSummary.getCrTransactionAmount()}</h4>
		<h4> TransactionType: ${CrTransactionSummary.getCrTransactionType()}</h4>	
		<hr/>
		<a href=CreditCard>Go to Credit Card page</a>
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