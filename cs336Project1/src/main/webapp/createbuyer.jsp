<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
</head>
<body>
	<%@ page import ="java.sql.*" %>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	String firstName = request.getParameter("firstName");	
	
	String max = request.getParameter("secretmax");
	Integer secretmax = 0;
	if(max != null)
	{
		secretmax = Integer.parseInt(request.getParameter("secretmax"));
	}
	else
	{
		secretmax = 0;
	}

	
	boolean buyer = true;
	boolean seller = false;
	
	
	String message = "";
	try
	{
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project?autoReconnect=true&useSSL=false","root","hellohello");

		
		int randomID = Integer.MIN_VALUE;
		
		while(true)
		{
			Statement stmt = conn.createStatement();
			randomID = (int)(Math.random() * 99999999+10000000);
			String str = "SELECT COUNT(*) as cnt FROM user u WHERE u.ID = " + Integer.toString(randomID);
			
			ResultSet count = stmt.executeQuery(str);
			count.next();
			if(count.getInt("cnt") == 0)
			{
				break;
			}
		}
		
		
		String newUser = "insert into user values(?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(newUser);
		
		ps.setInt(1, randomID);
		ps.setString(2, username);
		ps.setString(3, password);
		ps.setString(4, firstName);
		ps.setBoolean(5, true);
		ps.setBoolean(6, false);
		ps.executeUpdate();
		
		out.print("Failed");
		message = "Successful";
		conn.close();

	}
	catch(Exception e)
	{
		out.print("Failed");
		message = "Failed";
	}
	finally
	{
		session.setAttribute("logInAttempt", message);	
		response.sendRedirect("buyerhome.jsp");
	}
	

   
    
	
%>
</body>
</html>