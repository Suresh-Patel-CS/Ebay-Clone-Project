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
	<%@ page import ="java.sql.*" %>

<%
    String RepID = request.getParameter("username");   
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project","root", "aumpatel");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from rep where RepID='" + RepID + "' and Password='" + pwd + "';");
    if (rs.next()) {
        session.setAttribute("user", RepID); // the username will be stored in the session
        out.println("welcome " + RepID);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("rephome.jsp");
    } else {
        out.println("Invalid password <a href='replogin.jsp'>try again</a>");
    }
%>
</body>
</html>