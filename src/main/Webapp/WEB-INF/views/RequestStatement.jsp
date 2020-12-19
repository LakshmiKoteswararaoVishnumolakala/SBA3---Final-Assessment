<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	 What you want to do today :) 
		<br><br/>
			<tr>
				<td><label for="Request Statement">Request Statement</label></td>
				<td><select name="Accounts">
						<option value="Balance Check">Balance Check</option>
						<option value="Request Mini Statement">Request Mini Statement</option>
						<option value="Request Periodic Statement">Request Periodic Statement</option>
						<option value="Enter Loan Number">Enter Loan Number</option>
						
						
				</select></td> 
			</tr>
			
			<br><br/>
			
			<label for="Choose From Date">Choose From Date:</label>
            <input type="text" id="datepicker" name="From">
            
            <label for="Choose To Date">Choose To Date:</label>
            <input type="text" id="datepicker" name="to">
            
            <br><br/>
            <tr>
				<td><input type="submit" value=Submit /></td>
			</tr>
			
</body>
</html>