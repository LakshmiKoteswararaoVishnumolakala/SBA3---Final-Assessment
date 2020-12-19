<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
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
<h2 align="center">New User Registration Page</h2>
<%
		int CustomerID =100000+(int) (Math.random()*(1000000-100000)+1);
		
%>
<hr/>
		<a href="${pageContext.request.contextPath}/custom-login">Go to Login Page</a>
<hr/>
<spring:form action="${pageContext.request.contextPath}/saveUserDetails" method="post" modelAttribute="user">
 <div id="wrapper">
 		<br/>
 			<label>Customer ID</label>  	
  			<input type="text" name="CustomerID" value="<%=CustomerID%>" readonly/>
  		<br/>
  			<input type="hidden" name="Password" value="" />
  		<br/>			
			<div><spring:label path="BankRelationship">Select Relationship with Bank:</spring:label></div>
			<div><spring:select path="BankRelationship">
			<spring:options items="${user.getBankRelationships()}"/>
			</spring:select>	
			</div>
		<br/>	
			<div><spring:label path="FirstName">Enter First Name:</spring:label></div>
			<div><spring:input path="FirstName" type ="text"/>
				<spring:errors path="FirstName" cssClass="error"/>	
			</div>
		<br/>	
			<div><spring:label path="LastName">Enter Last Name:</spring:label></div>
			<div><spring:input path="LastName" type ="text"/>
				<spring:errors path="LastName" cssClass="error"/>
			</div>	
		<br/>	
			<div><spring:label path="MiddleName">Enter Middle Name:</spring:label></div>
			<div><spring:input path="MiddleName" type ="text"/>
				<spring:errors path="MiddleName" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="Gender">Select Gender:</spring:label></div>
			<div><spring:select path="Gender">
				<spring:options items="${user.getGenders()}"/>
				</spring:select>	
			</div>
		<br/>
			<div><spring:label path="DateOfBirth">Enter Date Of Birth :</spring:label></div>
			<div><spring:input path="DateOfBirth" type ="text"/>
				<spring:errors path="DateOfBirth" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="MobileNo">Enter Mobile No:</spring:label></div>
			<div><spring:input path="MobileNo" type ="text"/>
				<spring:errors path="MobileNo" cssClass="error"/>
			</div>	
		<br/>	
			<div><spring:label path="AlternateMobileNo">Enter Alternate Mobile No:</spring:label></div>
			<div><spring:input path="AlternateMobileNo" type ="text"/>
				<spring:errors path="AlternateMobileNo" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="EmailID">Enter Email ID:</spring:label></div>
			<div><spring:input path="EmailID" type ="text"/>
				<spring:errors path="EmailID" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="Address">Enter Address:</spring:label></div>
			<div><spring:input path="Address" type ="text"/>
				<spring:errors path="Address" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="AptName">Enter Apartment/Building Name</spring:label></div>
			<div><spring:input path="AptName" type ="text"/>
				<spring:errors path="AptName" cssClass="error"/>
			</div>	
		<br/>			
			<div><spring:label path="FlatNo">Enter Flat No</spring:label></div>
			<div><spring:input path="FlatNo" type ="text"/>
				<spring:errors path="FlatNo" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="PlotNo">Enter Plot No</spring:label></div>
			<div><spring:input path="PlotNo" type ="text"/>
				<spring:errors path="PlotNo" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="StreetNo">Enter Street No</spring:label></div>
			<div><spring:input path="StreetNo" type ="text"/>
				<spring:errors path="StreetNo" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="Colony">Enter Colony</spring:label></div>
			<div><spring:input path="Colony" type ="text"/>
				<spring:errors path="Colony" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="LandMark">Enter LandMark</spring:label></div>
			<div><spring:input path="LandMark" type ="text"/>
				<spring:errors path="LandMark" cssClass="error"/>
			</div>	
		<br/>
			<div><spring:label path="City">Select City:</spring:label></div>
			<div><spring:select path="City">
				<spring:options items="${user.getCities()}"/>
				</spring:select>	
			</div>
		<br/>
			<div><spring:label path="State">Select State:</spring:label></div>
			<div><spring:select path="State">
				<spring:options items="${user.getStates()}"/>
				</spring:select>	
			</div>
		<br/>
			<div><spring:label path="Country">Select Country:</spring:label></div>
			<div><spring:select path="Country">
				<spring:options items="${user.getCountries()}"/>
				</spring:select>	
			</div>
		<br/>
			<div><spring:label path="PinCode">Enter PinCode:</spring:label></div>
			<div><spring:input path="PinCode" type ="text"/>
				<spring:errors path="PinCode" cssClass="error"/>
			</div>	
		<br/>		
			<div><spring:label path="PAN">Enter PAN #:</spring:label></div>
			<div><spring:input path="PAN" type ="text"/>
				<spring:errors path="PAN" cssClass="error"/>
			</div>	
		<br/>		
			<div><spring:label path="AADHAR">Enter AADHAR #:</spring:label></div>
			<div><spring:input path="AADHAR" type ="text"/>
				<spring:errors path="AADHAR" cssClass="error"/>
			</div>	
		<br/>
			<input type ="submit" value ="Register"/>
		<br><br/>		
</div>
</spring:form>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>