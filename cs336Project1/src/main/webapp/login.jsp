<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
		<form action="CheckLogin.jsp" method="POST">
	       Username: <input type="text" name="Username"/> <br/>
	       Password: <input type="password" name="Password"/> <br/>
	       <input type="submit" value="Submit"/>
	     </form>
	
</body>
</html>