<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Utilities and Bill Payment</title>
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
    
    .content {
  padding: 0 18px;
  display: none;
  overflow: hidden;

}
</style>
<body>
<jsp:include page="header.jsp"/> 
<h2 align="center">Add and Pay Utilities</h2> 
<hr/>
	<a href="${pageContext.request.contextPath}/customer/HomePage">Home</a>
<hr/>
  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
<hr/>
       <spring:form action="${pageContext.request.contextPath}/customer/utilityPay" method="post" modelAttribute="utilityPayment"> 
       <div id="wrapper">
        <br/>
			<b>Welcome to Utilities Pay, a one stop solution for all your bill payment needs.</b>
    	<br>
        <div class="row">
		<button type="button" class="collapsible">+ Add Biller </button>	
		<div class="content"> 
		 <br>
		 	Select Bill:   
		        Electricity <spring:radiobutton path="biller" value="electricity"/>  
		        PhoneBill <spring:radiobutton path="biller" value="phoneBill"/>  
		        GasBill <spring:radiobutton path="biller" value="gasBill"/> 
		        internetBill <spring:radiobutton path="biller" value="internetBill"/>
        </div>
        </div> 
		<br/>
                 
           	<div><spring:label path="billerTypeNickname">Select a Nickname for your biller:</spring:label></div>
		<div>
			<spring:checkbox path="billerTypeNickname" value="power"/> power
			<br/>
			<spring:checkbox path="billerTypeNickname" value="phone"/> phone
			<br/>
			<spring:checkbox path="billerTypeNickname" value="gas"/> gas
			<br/>
			<spring:checkbox path="billerTypeNickname" value="internet"/> internet
			<br/>
		</div>
           
		<br>
            <div class="row">
			<spring:label path="paymentMethod">Select Pay Method:</spring:label>
			<spring:select path="paymentMethod">
			  <spring:option value="type 0" label="Select.."/>	
			  <spring:option value="type 1" label="Account"/>
			  <spring:option value="type 2" label="Wallet"/>
			  <spring:option value="type 3" label="Credit Card"/>		
			</spring:select>
            </div>
		<br/>	
		
		<br>
            <div class="row">
			<spring:label path="amount"> Enter Amount </spring:label>	
			<spring:input path="amount" type ="text"/>
			</div>
		<br/>
            <div class="row">
		    <spring:label path="remarks"> Remarks</spring:label> 
			<spring:input path="remarks" type ="text" value ="remarks"/>
            </div>
		<br/>
			<input type ="submit" value ="Complete"/>
		<br/>
		</div> 
        </spring:form>
<hr/>
<jsp:include page="footer.jsp"/> 
<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script> 
</body>
</html>