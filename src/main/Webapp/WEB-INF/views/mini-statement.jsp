<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
<meta charset="ISO-8859-1">
<title>Mini Statement</title>
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
	
	
</head>

<body>
<jsp:include page="header.jsp" />
	
	
	<div align="center" id="container">
		<h3>Mini Statement </h3>
		<div id="content">
		<h6>Current Transactions </h6>
			
		
			<table id="table">
				<tr>
					<th>Transaction ID</th>
					<th>Customer ID</th>
					<th>Create Date</th>
					<th>Transaction Type</th>
					<th>Amount</th>
				</tr>
				
				
				<c:forEach begin="0" end="3"  var="trans" items="${miniStatement}">
							
					<tr>
						<td> ${trans.id} </td>
						<td> ${trans.custId}</td>
						<td> ${trans.createDate} </td>
						<td> <c:out value="${trans.transType eq 'C' ? 'Credit': 'Debit'}"/>  </td>
						<td> ${trans.amount} </td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	</div>
	
	
<jsp:include page="footer.jsp" />
</body>

</html>









