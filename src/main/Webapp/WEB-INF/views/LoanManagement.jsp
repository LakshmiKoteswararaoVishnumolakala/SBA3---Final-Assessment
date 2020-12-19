<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Management Page</title>
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
<h2 align="center">Loan Management System</h2>
<hr/>
		<a href=CurrentLoan>View List of Current Loans Of User</a>
<hr/>
		<a href=HomePage>Go To Home Page</a>
<hr/>
<%-- SpEL will provide access over Model Object --%>
<%-- will use getter methods 
The param and paramValues objects give you access to the parameter values normally available through the request.getParameter and request.getParameterValues methods.
For example, to access a parameter named order, use the expression ${param.order} or ${param["order"]}.
--%>
<!-- <h3> Following Beneficiary details are added:</h3> -->


 <div id="wrapper">
		<label> Customer ID:</label>	
		<input type ="text" name="CustomerID"/>
		<br><br/>
		
		<label for="LoanCategory">Select Loan Type:</label>
		<select name="LoanCategory" id="LoanCategory">
		  <option value="HomeLoan">Home Loan</option>		
		  <option value="CarLoan">Car Loan</option>
		  <option value="EducationLoan">Education Loan</option>		
		  <option value="PersonalLoan">Personal Loan</option>		
		</select>	
		<br><br/>
		<label> Loan Amount:</label>	
		<input type ="text" name="LoanAmount"/>
		<br><br/>
		<label> Loan Status:</label>	
		<h4> Loan Status is is : ${user.getLoanStatus()} </h4>
		<br><br/>
		<label> Loan Start Date:</label>
		<input type="text" name="name" value="LoanStartDate" />
		<br><br/>
		<label> Loan Stop Date:</label>
		<input type="text" name="name" value="LoanStopDate" />
		<br><br/>
		<label> Collector ID: </label>	
		<input type ="text" name="CollectorID"/>
		<br><br/>
		<hr/>
		<a href=index>Loan Repayment Schedule</a>
		<br><br/>
		<hr/>
		<a href=index>Request New Loan</a>
		<br><br/>
		<hr/>
		<a href=index>Close Request</a>
		
</div>

<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>