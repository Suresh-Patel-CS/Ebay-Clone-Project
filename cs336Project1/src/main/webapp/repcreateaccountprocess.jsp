<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
	<%@ page import="java.util.Date" %>
	<%@ page import="java.text.*" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project","root", "aumpatel");
    Statement st = con.createStatement();
   	int i = st.executeUpdate("Insert into rep(RepID, Password, Name) values ('" + username + "', '" + password + "', '" + name + "');");

	
	
	
	%>>
</body>
</html>