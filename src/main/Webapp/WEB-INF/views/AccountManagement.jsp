<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
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
<h2 align="center"> Account Management</h2>
<hr/>
 <div id="wrapper">
  	<a href="HomePage">Home</a>
      <br></br>
      <a href="OpenAccount" >Open Account</a>
      <a href="RecurringDeposit.jsp"> Recurring Deposit</a>
      <a href="FixedDeposit.jsp" >Fixed Deposit</a>
      <a href="SavingsAccount.jsp" >Savings Account</a>
       <a href="RequestStatement" >Request Statement</a>
      <br></br>
      <a href="DebitCard">Debit Card</a>
      <a href="CreditCard">Credit Card</a>           
      <br></br>
      <a href="AddIBSBeneficiary.jsp"></a>
      <a href="AddNonIBSBeneficiary.jsp" >Add non IBS Benificiary</a>
       <a href="View Or Delete List Of Beneficiaries.jsp" >View Or Delete List Of Beneficiaries</a>
       
       
      <br></br>
      <a href="OpenLoan.jsp"> Open a Loan</a>
      <a href="PayEMI.jsp" >Pay Loan EMI</a>
      <a href="GenerateStatement.jsp" >Generate Statement</a>
      <a href="PreClosureRequest.jsp" >Request Pre-Closure</a>
 <br></br>
 <a href="PayOrTransfer">Pay or Transfer</a>						
						
 <br></br>
  <a href="serviceprovider.jsp">Service Provider</a>
  <a href="FirstLogin">First Time User Change Password</a>
  
  <br></br>
    <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
  </div>
 <hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>
