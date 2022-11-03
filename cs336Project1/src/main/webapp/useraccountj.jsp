<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <H1>All Users</H1>
       <%
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project","root", "aumpatel");
       Statement stmt = con.createStatement() ;
       ResultSet resultset = stmt.executeQuery("select UserID, Name, Email from user;");
       %>
      <TABLE BORDER="1">
      <TR>
      <TH>UserID</TH>
      <TH>Name</TH>
      <TH>Email</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
      </TR>
      <% } %>
     </TABLE>
      <form action="updateuseraccount.jsp" method="POST">
       UserID: <input type="text" name="username"/> <br/>
=       <input type="submit" value="Submit"/>
     </form>
     
</body>
</html>