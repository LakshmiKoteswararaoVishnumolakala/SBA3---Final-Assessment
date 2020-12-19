<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Credit Card</title>
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
        width= 5%;
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
<h2 align="center"> Credit Card Management</h2>
<hr/>
<form>
 <div id="wrapper">

		<table>
		<tr>
			<td><label>Enter Credit Card Number</label></td>
			<td><input type="text" name ="Credit Card Number"/></td>
		</tr>
		<tr>
		<td>	
		<input type="submit" value ="Show Details"/>	
		</td>
		</tr>	

		</table>				
		<h3 align="left">Credit Card Information:</h3>
		<h4> CreditCardNumber: ${CreditCard.getCreditCardNumber()} </h4>
		<h4> CreditCardType: ${CreditCard.getCreditCardType()}</h4>
		<h4> CreditCardBalance: ${CreditCard.getCreditcardBalance()}</h4>
		<h4> CreditCardStatus: ${CreditCard.getCreditCardStatus()}</h4>	
		<hr/>
		
			<a href=CreditCardTransactionSummary>Request Transaction Summary</a>
				<br><br/>
			
			<a href=CreditCardPayment>Pay Credit Card bill</a>
		<br><br/>
			<hr/>	
		<a href=Cards>Go To Cards</a>	
	    <br><br/>
	    <a href=HomePage>Go To Home Page</a>
		<br><br/>
		<a href=AccountManagement>Account Management</a>
		<br><br/>
 </div>
</form>
<hr/>
<jsp:include page="footer.jsp"/>

   </body>
</html>