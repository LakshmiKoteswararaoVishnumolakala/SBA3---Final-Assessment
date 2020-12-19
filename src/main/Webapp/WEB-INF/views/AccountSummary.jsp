<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Account Summary</title>
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
     .error
    {
    	color:red;    
    }
</style>

<body>
<jsp:include page="header.jsp"/>
<h2 align="center"> Account Management</h2>
<hr/>
	<a href="${pageContext.request.contextPath}/customer/HomePage">Home</a>
<hr/>
  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
<hr/>
<spring:form action="" method="post" modelAttribute="accountManagement">
	 <div id="wrapper">
		   <h3> your Account Number: ${accountManagement.getAccountNo()} </h3>
		   <br>
		<div><spring:label path="AccountType">Select Account Type:</spring:label></div>
		<div><spring:select path="AccountType">		 
			  <spring:option value="Savings" label="Savings Bank"/>		
			  <spring:option value="RD" label="Recurring Deposit"/>
			  <spring:option value="FD" label="Fixed Deposit"/>		
			  <spring:option value="Current" label="Current Account"/>
			  </spring:select>
		</div>
		<br>
		<h4> Balance: ${accountManagement.getBalance()} </h4>
	</div>
</spring:form>
 <hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>
