<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
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
<h2 align="center">Login</h2>
<hr/>
	
	<spring:form action ="${pageContext.request.contextPath}/HomePage" method="post" modelAttribute="user"> 
		<div id="wrapper">
			<div><spring:label path="CustomerID">Enter Customer ID:</spring:label></div>
			<div><spring:input path="CustomerID" type ="text"/>
				<spring:errors path="CustomerID" cssClass="error"/>	
			</div>
		<br/>	
			<div><spring:label path="password">Enter Password:</spring:label></div>
			<div><spring:input path="password" type ="text"/>
				<spring:errors path="password" cssClass="error"/>
			</div>	
		<br/>			
		<div><spring:label path="BankRelationship">Select Relationship with Bank:</spring:label></div>
		<div><spring:select path="BankRelationship">
			<spring:options items="${user.getBankRelationships()}"/>
			</spring:select>	
		</div>
		<br/>			
			<input type ="submit" value ="Login"/>	
		<br/>	
		</div>
	</spring:form>
<hr/>
<a href="${pageContext.request.contextPath}/ForgotPassword">Forgot Password</a>
<hr/>
<a href = "${pageContext.request.contextPath}/UserRegistration">New User Registration</a>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>