<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddBeneficiary</title>
</head>
<style type="text/css">
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
<h2 align="center">Manage Beneficiaries</h2> 
<hr/>
	<a href="${pageContext.request.contextPath}/customer/HomePage">Home</a>
<hr/>
  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
<hr/>
<spring:form action ="${pageContext.request.contextPath}/customer/saveBenDetails" method="post" modelAttribute="beneficiary"> 
 <div id="wrapper">
 		<div>
	 		<div><spring:label path="benAccountNo">Beneficiary Account Number:</spring:label></div>
			<div><spring:input path="benAccountNo" type ="text"/>
				<spring:errors path="benAccountNo" cssClass="error"/>	
			</div>
		</div>		
		<br/>
		<div>
		<div><spring:label path="benAccountName"> Beneficiary Name(as per Bank records):</spring:label></div>
			<div><spring:input path="benAccountName" type ="text" />
				<spring:errors path="benAccountName" cssClass="error"/>
			</div>
		</div>
		<br/>
		<div>
		<div><spring:label path="benIFSCcode"> IFSC Code: </spring:label></div>
			<div><spring:input path="benIFSCcode" type ="text" />
			<spring:errors path="benIFSCcode" cssClass="error"/>
			</div>
		</div>
		<br/>
		<div><spring:label path="benBankName">Select Bank Name:</spring:label></div>
		<div><spring:select path="benBankName">
			 <spring:options items="${beneficiary.getBankNames()}"/>		
			<%--  
			  <spring:option value="HDFC" label="HDFC Bank"/>		
			  <spring:option value="Axis" label="Axis Bank"/>
			  <spring:option value="ICICI" label="ICICI Bank"/>		
			  <spring:option value="SBI"label="State Bank of India"/>	
			  <spring:option value="AB"label="AndhraBank"/>	
			--%>
			</spring:select>
		</div>
		<br/>
		<div><spring:label path="benBranchCity">Select Branch City:</spring:label></div>
		<div><spring:select path="benBranchCity">
		<spring:options items="${beneficiary.getBranchCities()}"/>
			<%-- 
				<spring:option value="HYD">Hyderabad</spring:option>				
			  	<spring:option value="BAN">Bangalore</spring:option>
			  	<spring:option value="CHN">Chennai</spring:option>		
			  	<spring:option value="NDL">New Delhi</spring:option>	
			--%>
			</spring:select>	
		</div>	
		<br/>
		<div><spring:label path="benBranchName">Select Branch Name:</spring:label></div>
		<div><spring:select path="benBranchName">
			<spring:options items="${beneficiary.getBranchNames()}"/>	
			<%-- 	 	
			  <spring:option value="Kondapur">Kondapur</spring:option>		
			  <spring:option value="Gachicbowli">Gachicbowli</spring:option>
			  <spring:option value="Madhapur">Madhapur</spring:option>		
			  <spring:option value="Ameerpet">Ameerpet</spring:option>
		 	--%>
			</spring:select>	
		</div>
		<br/>		
	
		<br/>
		<div><spring:label path="benEmail">Enter Email ID</spring:label></div>
		<div><spring:input path="benEmail" type ="text"/>
			<spring:errors path="benEmail" cssClass="error"/>	
		</div>
		<br/>
		<div><spring:label path="benContact">Enter Mobile #</spring:label></div>
		<div><spring:input path="benContact" type ="text"/>
			 <spring:errors path="benContact" cssClass="error"/>
		</div>	
		<br/>		
		<div> 
			<input type ="Submit" value="Add">
		</div>
		<br/>	
</div>		
</spring:form>

<jsp:include page="footer.jsp"/>
</body>
</html>