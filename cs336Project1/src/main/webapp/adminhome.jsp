<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome!</title>
<%
        Connection response_conn = null;
        try{
        	Class.forName("com.mysql.jdbc.Driver"); 
        	//Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project?autoReconnect=true&useSSL=false","root","hellohello");
        	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project1","root","aumpatel");
        	Statement stmt = conn.createStatement();
            System.out.println("this shit work");
        }
        catch(Exception e){
          System.out.println("Could not connect to SQL server");
          e.printStackTrace();
        }
        %>
</head>
<body>
 <form action="repcreateaccount.jsp" method="POST">  
       <input type="Submit" value="Create Representative Account"/>
    </form>


<a href="logout.jsp">Log out</a>

</body>
</html>