<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Beneficiary Registration Confirmation</title>
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
<h2 align="center">Beneficiary Registration Successful</h2>
<hr/>
	<a href="${pageContext.request.contextPath}/customer/HomePage">Home</a>
<hr/>
  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
<hr/>
<spring:form>
	<div id="wrapper">
		 <hr/>
				<a href="${pageContext.request.contextPath}/ListOfBeneficiaries">View List of Beneficiaries</a>
		<hr/>
		
		<h3> Following beneficiary details are added successfully.</h3>
		
		<h4> Beneficiary Account No : 	${beneficiary.benAccountNo} </h4>
		<h4> Beneficiary Account Name : ${beneficiary.getBenAccountName()}</h4>
		<h4> IFSC code  :				${beneficiary.getBenIFSCcode()}</h4>
		<h4> Bank Name  :				${beneficiary.getBenBankName()}</h4>
		<h4> Branch Name :				${beneficiary.getBenBranchName()}</h4>
		<h4> Branch City :				${beneficiary.getBenBranchCity()}</h4>
		<h4> Email ID :					${beneficiary.getBenEmail()}</h4>
		<h4> Beneficiary Contact :		${beneficiary.getBenContact()}</h4>	
	</div>
</spring:form>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>