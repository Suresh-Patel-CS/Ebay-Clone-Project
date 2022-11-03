<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Create an Auction</title>
</head>
<body>

<%@ page import ="java.sql.*" %>
	<!-- getting connection to database -->
	<%
	
			Class.forName("com.mysql.jdbc.Driver");
			ApplicationDB myDB = new ApplicationDB();
		    Connection con = myDB.getConnection();
		    
		    
		    //SQL statement
		    //fix based on what table shows for vehicle:
		    Statement statemnt= con.createStatement();
		    String AuctionID= request.getParameter("AuctionID");
		    String VIN= request.getParameter("VIN");
		    int Initial_Bid= request.getParameter("Initial_Bid");
		    int Bid_Increment= request.getParameter("Bid_Increment");
		    int Closing_Time = request.getParameter("Closing_Time");
		    boolean AM= request.getParameter("AM");
		    //int Closing_Date = request.getParameter("Closing_Date");
		    Date Closing_Date = new Date();
		    SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
		    int Highest_Bid= request.getParameter("Highest_Bid");
		    int Buy_Now= request.getParameter("Buy_Now");
		    String Street_Address= request.getParameter("Street_Address");
		    String Town= request.getParameter("Town");
		    int Zipcode= request.getParameter("Zipcode");
		    String State= request.getParameter("State");



		    
		   	/*
		   	String userid =(String)session.getAttribute("user");
    String inquiry = request.getParameter("response"); 
    Date dnow = new Date();
    SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
    String inquiry_date = ft.format(dnow);
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs336project","root", "aumpatel");
    Statement st = con.createStatement();
    out.println(userid);
    out.println(inquiry);
    out.println(inquiry_date);
    out.println("Insert into inquiry(UserID, dte, inquiry, response) values ('" + userid + "', '" + inquiry_date + "', '" + inquiry + "', NOT NULL);");
    int i = st.executeUpdate("Insert into inquiry(UserID, dte, inquiry, RepID, response) values ('" + userid + "', '" + inquiry_date + "', '" + inquiry + "', NOT NULL, NOT NULL);");
		   	*/
		   	
		   	//creating string table for accounts 
		   	
		
	%>
</body>


</html>