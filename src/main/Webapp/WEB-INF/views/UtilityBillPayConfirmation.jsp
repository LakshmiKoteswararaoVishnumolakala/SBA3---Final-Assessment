<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Utility Bill Pay Confirmation</title>
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
<h2 align="center" style="color : green">Bill Payment Successful...</h2> 
<spring:form>
<hr/>
	<a href="${pageContext.request.contextPath}/customer/HomePage">Home</a>
<hr/>
  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
<hr/>
 <div id="wrapper">
	<h3> Your payment has been process and may take upto 2-3 days to be reflected.</h3>
	<h4> Biller: ${utilityPayment.getBiller()} </h4>
	<h4> Biller Nickname: ${utilityPayment.getBillerTypeNickname()} </h4>
	<h4> Amount Paid : ${utilityPayment.getAmount()} </h4>
	<h4> Payment type: ${utilityPayment.getPaymentMethod()} </h4>
	<h4> Remark: ${utilityPayment.getRemarks()}</h4>
</div>
</spring:form>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>