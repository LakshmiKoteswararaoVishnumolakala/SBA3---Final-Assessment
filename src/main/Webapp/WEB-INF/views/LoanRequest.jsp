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
		
		<label> Loan Interest:</label>
		<input type="text" name="name" value="${loanmngmnt.interestrate}" />
		<br><br/>
		<label> Loan Tenure:</label>
		<input type="text" name="name" value="Tenure" />
		<br><br/>
	
		<input type="submit" name="Submit"/>
		<br><br/>
		
</div>

<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>