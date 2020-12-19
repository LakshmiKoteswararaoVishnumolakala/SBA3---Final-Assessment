<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Debit Card </title>
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
        width= 20%;
        margin: 3%;
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
<h2 align="center"> Debit Card Management</h2>
<hr/>
<form>
 <div id="wrapper">
	<a href=DebitCardTransactionSummary>Request Transaction Summary</a>
	<br><br/>
	<a href=RaiseAProblemTicket>Raise a Problem Ticket</a>
	<br><br/>
	<a href=ChangeDebitCardPin>Change Pin Number</a>
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