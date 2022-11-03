<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
 <H1>All Waiting Inquiries </H1>
       <%
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project","root", "aumpatel");
       Statement stmt = con.createStatement() ;
       ResultSet resultset = stmt.executeQuery("select * from inquiry where response = 'Waiting';");
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


     Please Insert Information For Submitting a Response
     <form action="submitresponse.jsp" method="POST">
       InquiryID: <input type="text" name="InquiryID"/> <br/>
       Response: <input type="text" name="rep"/> <br/>
       <input type="submit" value="Submit"/>
     </form>
</div>
</body>
</html>