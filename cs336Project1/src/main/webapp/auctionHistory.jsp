<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>Auction History</title>
    </head>
    <body>
    
        <h2>Auction History</h2>
    
    <h4>Enter VIN of the vehicle you would like to see the history for:</h4>
    
            
            <form action="auctionHistoryHandling.jsp" method="POST">
                <label for="VIN">VIN:</label><br>
                <input type="text" id="VIN" name="VIN"><br>
                
    
    <br/>
    OR
    
    
    <h4>Enter the username to view all auctions from specified buyer or seller:</h4>
            <label for="username">Username:</label><br>
            <input type="text" name="Username"/><br>
            
            <input type="submit" value="Search">
            
            
            </form>
        <br/>
        
        <button onClick="document.location='home.jsp'" type="button">Return to Home Page</button>
        
    </body>
    </html>