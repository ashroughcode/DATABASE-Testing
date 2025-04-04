CREATE database Bugresistance;

CREATE TABLE Testing (
StudentID int PRIMARY KEY, 
StudentName varchar(255),
City varchar(255),
PostalCode varchar(255),
Income Decimal(4, 2) 
);

INSERT INTO Testing (StudentID, StudentName,City,PostalCode,Income)
Values(101, "Jane", "Chittagong", "1300",50000),
(102, "Atanu", "Dhaka", "1212", 900000),
(103, "Arif", "Noakhali", "4000", 40000),
(104, "Ahmed", "Mymensingh", "3000", 10000), 
(105, "Mehmet", "Barisal", "8000", 5000),
(106, "Nihat", "sylhet", "5000", 85000),
(107, "Burak", "Bogura", "6000", 40000);

Select max(Income) From Testing;

SELECT min(Income)  From Testing;  

