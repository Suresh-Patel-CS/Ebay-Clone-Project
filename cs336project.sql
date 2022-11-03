#create database cs336project;
#use cs336project;
#show tables;
/*
create table user(
UserID Varchar(100),
Primary KEY (UserID),
Email Varchar(200),
DOB Date, 
Name Varchar(100), 
Password Varchar(100), 
Phone_Number char(12), 
Admin_Level int, 
Buyer boolean, 
Secret_Maximum int, 
Seller boolean, 
Secret_Minimum int, 
Account_Number int, 
Bank char(100), 
Routing_Number int, 
Street_Address Varchar(200), 
Town Varchar (100), 
Zipcode Char(5), 
State Varchar (12));


Create table vehicle(
Vin Varchar(17),
Primary KEY (Vin),
ISAcar boolean, 
ISAtruck boolean, 
ISAmotorcycle boolean, 
SellerID Varchar(50), 
Year Date, 
Make Varchar (50), 
Model Varchar (50), 
Mileage int, 
Interior_Color  Varchar (50), 
Exterior_Color  Varchar (50), 
Conditions Varchar (50), 
Location_of_car Varchar (300), 
Drivetrain Varchar (50), 
Fuel_Type Varchar (8), 
MPG int, 
Warranty Varchar(100), Horsepower int, Title_Status Varchar (100), Transmission_Type Varchar(9));

create table auction(
AuctionID Varchar(50), 
Primary KEY (AuctionID),
Vin Varchar(17), 
FOREIGN KEY (Vin) REFERENCES Vehicle(Vin),
Initial_Bid int, 
Bid_Increment int, 
Closing_Time time, 
AM boolean, 
Closing_Date date, 
Highest_Bid int, 
Buy_Now int, 
Street_Address Varchar(100), 
Town Varchar (100), 
Zipcode int, 
State Varchar (12));


Create table inquiry(
UserID Varchar(100),
dte date, 
inquiry varchar(1000), 
RepID Varchar(100),
response varchar(1000),
InquiryID varchar(250),
Primary KEY (InquiryID));
*/

#create table rep(RepID Varchar(100), Password Varchar(100), Name Varchar(100));
#create table admn(AdminID Varchar(100), Password Varchar(100), Name Varchar(100));


#------- USERS ---------
#Insert into user(UserID, Email ,DOB, Name, Password, Phone_Number, Admin_Level, Buyer, Secret_Maximum, Seller, Secret_Minimum, Account_Number, Bank, Routing_Number, Street_Address, Town, Zipcode, State) values ('js111', 'johnsmith@gmail.com', '1990-01-24', 'John Smith', 'johnnyappleseed', 8238285678, 0, True, NULL, True, NULL, 021000021, 'Bank of America', 026009593, '25 Apple Street', 'Fruit Town', '08815', 'Texas');
#Insert into rep(RepID,Password,Name) values('sjp294','hello','Shiv Patel');
#Insert into admn(AdminID,Password,Name) values ('Admin','Admin','Admin');

#------- CARS ----------


#------- INQUIRY -------
#Insert into inquiry(UserId, dte, inquiry, RepID, response) values ('js111','2022-05-05', 'this is a test inquiry', 'Assigning','Waiting');


#------- Get Rid Of A Table --------
#DROP TABLE user;
#DROP TABLE auction;
#DROP TABLE inquiry;
#DROP TABLE Vehicle;
#Drop Table rep;
#Drop Table admn;


#update inquiry set RepID = 'sjp294' and response = 'yo does this jawn work' where UserID = 'js111' and dte = '2022-05-05';
#select * from user;
#update inquiry set RepID = '' and response = '' where UserID = '' and dte = '';










