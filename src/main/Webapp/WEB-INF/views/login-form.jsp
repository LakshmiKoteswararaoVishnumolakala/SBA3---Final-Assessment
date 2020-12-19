<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IBS Login Page</title>
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
<h2 align="center">Login Page</h2>
<hr/>
<%-- if url contains a 'error' param --%>
<core:if test="${param.error != null }">
	<h3 class="error">Invalid Credentials!!</h3>
</core:if>
<br/>
<spring:form action="${pageContext.request.contextPath}/validate" method="POST" modelAttribute="user">
		<div id="wrapper">
			<div><label>Enter Customer ID:</label></div>
			<div><input type ="text" name="username"/></div>
			<br/>	
				<div><label>Enter Password:</label></div>
				<div><input type ="password" name="password"/></div>	
			<br/>
				<label for="BankRelationship">Select Relationship with Bank:</label>
				<select name="BankRelationship" id="BankRelationship">
				  <option value="Customer">Customer</option>		
				  <option value="Accounts Executive">Accounts Executive</option>
				  <option value="Bank Representative">Bank Representative</option>			
				</select>	
			<br/>					
				<input type ="submit" value ="Login"/>	
			<br/>	
		</div>
</spring:form>
<hr/>
<core:if test="${param.logout != null }">
	<h3>You have been successfully logged out!</h3>
</core:if>
<a href="${pageContext.request.contextPath}/ForgotPassword">Forgot Password</a>
<hr/>
<a href = "${pageContext.request.contextPath}/UserRegistration">New User Registration</a>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>