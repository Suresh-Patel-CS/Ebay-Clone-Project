<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BuyMe!</title>
</head>
<body>
<% String userid =(String)session.getAttribute("user"); 
	out.println("welcome " + userid);%>

 <form action="inquiry.jsp" method="POST">  
       <input type="Submit" value="Submit an Inquiry"/>
    </form>
    <H1>All Inquiries </H1>
       <%
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project","root", "aumpatel");
       Statement stmt = con.createStatement() ;
       ResultSet resultset = stmt.executeQuery("select * from inquiry where UserID = '"+ userid +"';");
       %>
      <TABLE BORDER="1">
      <TR>
      <TH>Username</TH>
      <TH>Date</TH>
      <TH>Inquiry</TH>
      <TH>Representative</TH>
      <TH>Response</TH>
      <TH>InquiryID</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
       <TD> <%= resultset.getString(5) %></TD>
       <TD> <%= resultset.getString(6) %></TD>
      </TR>
      <% } %>
     </TABLE>
</body>
</html>