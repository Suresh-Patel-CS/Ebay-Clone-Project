<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE %@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Create Account</title>
    </head>

    <body>
    
        <h1>Create a buyer account</h1>

    	<form action="createbuyer.jsp" method="POST">
  			<label for="firstName">First name:</label>
 		 	<input type="text" id="firstName" name="firstName"><br><br>
 		 	
  			<label for="phoneNumber">Phone Number:</label>
  			<input type="number" id="phoneNumber" name="phoneNumber"><br><br>
  			
  			<label for="emailAddress">Email Address:</label>
  			<input type="email" id="emailAddress" name="emailAddress"><br><br>
  			
  			<label for="dob">Date of Birth:</label>
  			<input type="text" id="dob" name="dob"><br><br>
  			
  			<label for="streetAddress">Street Address:</label>
  			<input type="text" id="streetAddress" name="streetAddress"><br><br>
  			
  			<label for="zipCode">Zip Code:</label>
  			<input type="text" id="zipCode" name="zipCode"><br><br>
  			
  			 <label for="citytown">City/Town:</label>
  			<input type="text" id="citytown" name="citytown"><br><br>
  			
			<label for="state">State:</label>
  			<input type="text" id="state" name="state"><br><br>

  			<label for="secretMax">Secret Max ($):</label>
  			<input type="text" id="secretMax" name="secretMax"><br><br>
  			
  			<p>Account Information</p>
  			<label for="acountNumber">Account Number:</label>
  			<input type="number" id="accountNumber" name="accountNumber"><br><br>
  			<label for="routingNumber">Routing Number:</label>
  			<input type="number" id="routingNumber" name="routingNumber"><br><br>
  			
            
            <label for="username">Username:</label><br>
			<input type="text" id="username" name="username"><br>
			<label for="password">Password:</label><br>
			<input type="password" id="password" name="password">
  			
  			<input type="submit" value="Submit">
		</form>
		

          
          
    </body>
    
    
</html>