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
	String RepID =(String)session.getAttribute("user");
    String InquiryID = request.getParameter("InquiryID");
    String rep = request.getParameter("rep");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project","root", "aumpatel");
    Statement st = con.createStatement();
    ResultSet rs;
    out.println("update inquiry set RepID = '"+RepID+"', response = '"+ rep +"' where InquiryID = '"+InquiryID+"';");
    Integer i = st.executeUpdate("update inquiry set RepID = '"+RepID+"', response = '"+rep+"' where InquiryID = '"+InquiryID+"';");
    if (i != 0 ) {
        response.sendRedirect("rephome.jsp");
    } else {
        out.println("Invalid Response <a href='response.jsp'>try again</a>");
    }

    %>

</body>
</html>


