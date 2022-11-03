<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>Start an Auction</title>
    </head>
    <body>
        <h2>Start an Auction</h2>
        <form action="auction-handler.jsp" method="POST"> <!-- where the information being sent -->
            <label for="AuctionID">AuctionID:</label>
                <input type="text" name="AuctionID"/> <br/>
            <label for="VIN">VIN:</label>
                <input type="text" name="VIN"/> <br/>
            <label for="Initial_Bid">Initial Bid: </label>
                <input type="number" name="Initial_Bid"/> <br/>
            <label for="Bid_Increment">Bid Increment: </label>
                <input type="number" name="Bid_Increment"/> <br/>
            <label for="Closing_Time">Closing Time: </label>
                <input type="time" name="Closing_Time"/> <br/>   
            <label for="AM">AM: </label>
                <input type="boolean" name="AM"/> <br/>     
            <label for="Closing_Date">Closing Date:</label>
                <input type="date" name="Closing_Date"/> <br/>     
            <label for="Highest_Bid">Highest Bid:</label>
                <input type="number" name="Highest_Bid"/> <br/> 
            <label for="Buy_Now">Buy Now:</label>
                <input type="number" name="Buy_Now"/> <br/>    
            <label for="Street_Address">Street Address:</label>
                <input type="text" name="Street_Address"/> <br/>   
            <label for="Town">Town: </label>
                <input type="text" name="Town"/> <br/>                     
            <label for="Zipcode">Zipcode: </label>
                <input type="number" name="Zipcode"/> <br/>   
            <label for="State">State: </label>
                <input type="text" name="State"/> <br/>   
        
        <input type="submit" value="Post">
        
        <button onclick="document.location='home.jsp'" type="button">Return Home</button>
        </form>
    </body>
    </html>