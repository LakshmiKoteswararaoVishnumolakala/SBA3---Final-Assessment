<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Home Page</title>
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
<hr/>
	<jsp:include page="header.jsp"/>
		<%-- To access info about logged in user --%>
	<%-- info about logged in user is maintained in object principal --%>
	<h2 align="center">Welcome: <security:authentication property="principal.username"/></h2>
	<h2 align="center"><security:authentication property="principal.authorities"/></h2>
<hr/>	
<spring:form action="${pageContext.request.contextPath}/logout" method="POST">
	<input type="submit" value="Logout">
 <div id="wrapper">
 <security:authorize access="hasRole('customer')">
	  <a href="${pageContext.request.contextPath}/customer/AccountManagement">Account Summary</a>
	  <br></br>
	  <a href="${pageContext.request.contextPath}/customer/FundsTransfer">Funds Transfer</a>  
	  <br></br>
	  <a href="${pageContext.request.contextPath}/customer/LoanManagement">Loans</a>
	  <br></br>
	  <a href="${pageContext.request.contextPath}/customer/Cards">Cards</a>
	  <br></br>
	  <a href="${pageContext.request.contextPath}/customer/Utilities">Pay Utility Bills</a>
	  <br></br>
	  	  <a href="${pageContext.request.contextPath}/customer/UpdatePassword">Update Password</a>
	  <br></br>
	   <a href="${pageContext.request.contextPath}/customer/UpdateContactDetails">Update Contact Details</a>
	  <br></br>
 </security:authorize>
 
  <security:authorize access="hasRole('accountant')">
  	  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
  </security:authorize>
   <security:authorize access="hasRole('banker')">
  	  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
  </security:authorize>
  	  <br></br>  	
 </div>
 </spring:form>
 <hr/>
<jsp:include page="footer.jsp"/>
 </body>
</html>