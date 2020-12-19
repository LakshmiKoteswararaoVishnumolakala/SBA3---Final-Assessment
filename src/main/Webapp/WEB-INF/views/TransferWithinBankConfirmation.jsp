<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Transfer in IBS Confirmation</title>
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
<h2 align="center">Fund Transfer Successful.</h2> 
<hr/>
	<a href="${pageContext.request.contextPath}/customer/HomePage">Home</a>
<hr/>
  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
<hr/>
<spring:form>
	 <div id="wrapper">
		<h3> Your fund has been transfered successfully.  </h3>
		<h4> Beneficiary Name: ${paymentsAndFundTransfer.getPayee()} </h4>
		<h4> Amount : ${paymentsAndFundTransfer.getAmount()} </h4>
		<h4> TransactionId:${paymentsAndFundTransfer.getTransactionId()}</h4>
	</div>
</spring:form>
<hr/>
<jsp:include page="footer.jsp"/>

</body>
</html>