<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <body>
	<%@ page import ="java.sql.*" %>
	<%@ page import="java.util.Date" %>
	<%@ page import="java.text.*" %>	
	
<%
	Integer hitsCount = (Integer)application.getAttribute("hitCounter");
	if( hitsCount ==null || hitsCount == 0 ) {
   		hitsCount = 1;
	} else {
   		hitsCount += 1;
		}
   	application.setAttribute("hitCounter", hitsCount);
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
    out.println("Insert into inquiry(UserID, dte, inquiry, RepID, response, InquiryID) values ('" + userid + "', '" + inquiry_date + "', '" + inquiry + "', 'Assigning', 'Waiting','"+userid+hitsCount+"');");
    int i = st.executeUpdate("Insert into inquiry(UserID, dte, inquiry, RepID, response, InquiryID) values ('" + userid + "', '" + inquiry_date + "', '" + inquiry + "', 'Assigning', 'Waiting', '"+userid+hitsCount+"');");
    if (i != 0 ) {
        response.sendRedirect("buyerhome.jsp");
    } else {
        out.println("Invalid Inquiry <a href='inquiry.jsp'>try again</a>");
    }
%>
   </body>
</html>


