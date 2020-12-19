<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contact Details Confirmation</title>
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
<h2 align="center">Contact Updates Confirmation.</h2>
<hr/>
	<a href="${pageContext.request.contextPath}/customer/HomePage">Home</a>
<hr/>
  <a href="${pageContext.request.contextPath}/custom-login">Sign Out</a>
<hr/>
<spring:form >
	<div id="wrapper">
		<h3> Following details are updated successfully:</h3>
		<h4> MobileNo:${user.getMobileNo()}</h4>
		<h4> AlternateMobileNo:${user.getAlternateMobileNo()}</h4>
		<h4> EmailID:${user.getEmailID()}</h4>
		<h4> Address:${user.getAddress()}</h4>
		<h4> AptName:${user.getAptName()}</h4>
		<h4> FlatNo:${user.getFlatNo()}</h4>
		<h4> PlotNo:${user.getPlotNo()}</h4>
		<h4> StreetNo:${user.getStreetNo()}</h4>
		<h4> Colony:${user.getColony()}</h4>
		<h4> LandMark:${user.getLandMark()}</h4>
		<h4> City:${user.getCity()}</h4>
		<h4> State:${user.getState()}</h4>
		<h4> Country:${user.getCountry()}</h4>
		<h4> PinCode:${user.getPinCode()}</h4>
	</div>
</spring:form>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>