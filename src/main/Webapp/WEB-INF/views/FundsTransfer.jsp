<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Funds Transfer</title>
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
<h2 align="center">Funds Transfer Page</h2>
<hr/>
<spring:form>
	 <div id="wrapper">
		  <a href="${pageContext.request.contextPath}/customer/HomePage">Home</a>
	      <br></br>
		  <a href="${pageContext.request.contextPath}/customer/TransferWithinIBS">Transfer with in the bank</a>
		  <br></br>
		  <a href="${pageContext.request.contextPath}/customer/TransferOutsideBank">Transfer outside of the bank</a>
		  <br></br>
		  <a href="${pageContext.request.contextPath}/customer/AddBeneficiary">Add Beneficiary</a>
		  <br></br>
		  <a href="${pageContext.request.contextPath}/customer/ListOfBeneficiaries">View List of Beneficiaries</a>  
		  <br></br>
	  	   <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
	  </div>
 </spring:form>
 <hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>