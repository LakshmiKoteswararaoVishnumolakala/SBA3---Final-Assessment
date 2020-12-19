<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
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
<h2 align="center"> Password Reset Confirmation</h2>
<hr/>
<a href="${pageContext.request.contextPath}/custom-login">Go to Login Page</a>
<hr/>
<spring:form>
 	<div id="wrapper">
		<h4>Your Password has been changed successfully. </h4>
		<h4> Your  new Password is : ${user.getPassword()} </h4>
		<hr/>

	</div>
</spring:form>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>