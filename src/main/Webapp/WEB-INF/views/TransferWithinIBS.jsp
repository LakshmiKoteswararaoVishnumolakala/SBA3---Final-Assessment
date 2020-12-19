<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Funds Transfer with in Bank</title>
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
<h2 align="center">Fund Transfer with in the bank</h2> 
<hr/>
	<a href="${pageContext.request.contextPath}/customer/HomePage">Home</a>
<hr/>
  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
<hr/>
<spring:form action="${pageContext.request.contextPath}/customer/transferInIBS" method="post" modelAttribute="paymentsAndFundTransfer"> 
 <div id="wrapper">
	
		    <spring:label path="accountNumber">Select From Account:</spring:label>
			<spring:select path="accountNumber">
			<spring:option value="1" label="Select Account..."/>
			<spring:option value="2" label="My Account"/>				
			</spring:select>	
			<br/>
			<spring:label path="payee">Select Added Payee:</spring:label>
			<spring:select path="payee">	
			  <spring:option value="payee1" label="Payee 1"/>	
			  <spring:option value="payee2" label="Payee 2"/>
			  <spring:option value="payee3" label="Payee 3"/>	  		
			</spring:select>
			
		   <br>
           <br>
			 	Select Transfer Type:   
		        IMPS <spring:radiobutton path="transferType" value="IMPS"/>  
		        NEFT <spring:radiobutton path="transferType" value="NEFT"/>  
		        RTGS <spring:radiobutton path="transferType" value="RTGS"/> 
            <br>
           
		<br/>
			<spring:label path="amount"> Enter Amount </spring:label>	
			<spring:input path="amount" type ="text"/>
		<br/>
		    <spring:label path="remarks">Remarks</spring:label>
			<spring:input path="remarks" type ="text" placeholder="enter remarks.."/>
		<br/>
			<input type ="submit" value ="Submit"/>
		<br/>
</div>
</spring:form>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>