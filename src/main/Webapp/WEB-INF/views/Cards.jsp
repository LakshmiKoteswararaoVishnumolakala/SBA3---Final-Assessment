<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cards</title>
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
<h2 align="center"> Cards Management</h2>
<hr/>	
<form>
<hr/>
	<a href=HomePage>Go To Home Page</a>
 <div id="wrapper">
 	  <h3> Select Card Type:</h3>
	  <a href="DebitCard">DebitCard</a>
	  <br></br>
	  <a href="CreditCard">CreditCard</a>  
	  <br></br>	  
 </div>
</form>
<hr/>
<jsp:include page="footer.jsp"/>
 </body>
</html>