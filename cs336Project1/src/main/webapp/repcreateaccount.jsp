<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
   <body>
<div>
     Please Insert Information For New Representative Account
     <form action="repcreateaccountprocess.jsp" method="POST">
       Username: <input type="text" name="username"/> <br/>
       Password:<input type="text" name="password"/> <br/>
       Full Name: <input type="text" name="name"/> <br/>
       <input type="submit" value="Submit"/>
     </form>
</div>
   </body>
</html>