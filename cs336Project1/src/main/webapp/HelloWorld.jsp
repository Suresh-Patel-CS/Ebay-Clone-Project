<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>BuyMe</title>
	</head>
	
	<body>

		Welcome to BuyMe for Cars! Select what role you would like to login as <!-- the usual HTML way -->

		
		<body>
			<h1>Login as a Buyer</h1>
   			<form action="buyerlogin.jsp" method="post">
				<button>Buyer</button>
    		</form>
    		
    		<h1>Login as a Seller</h1>
   			<form action="sellerlogin.jsp" method="post">
				<button>Seller</button>
    		</form>
    		
    		<h1>Login as a Representative</h1>
   			<form action="replogin.jsp" method="post">
				<button>Representative</button>
    		</form>
    		
    		<h1>Login as an Admin</h1>
   			<form action="adminlogin.jsp" method="post">
				<button>Admin</button>
    		</form>
     
   		</body>

</body>
</html>