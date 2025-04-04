Create Database SQA; 
Use  SQA;
CREATE TABLE Bugresistance (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(255)
);

CREATE TABLE University (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(255),
    City VARCHAR(255),
    Department VARCHAR(255)
);

INSERT INTO Bugresistance (StudentID, StudentName,City,PostalCode)
Values(101, "Jane", "Chittagong", "1300"),
(102, "Atanu", "Dhaka", "1212"),
(103, "Arif", "Noakhali", "4000"),
(104, "Ahmed", "Mymensingh", "3000"), 
(105, "Mehmet", "Barisal", "8000"),
(106, "Nihat", "sylhet", "5000"),
(107, "Burak", "Bogura", "6000"),
(108, "Priya", "Naoga", "7000"),
(109, "Akash", "Dinajpur", "9000"),
(110, "Abash", "Pirojpur", "5214");



INSERT INTO University (StudentID, StudentName,City,Department)
Values(101, "Jane", "Chittagong", "EEE"),
(102, "Atanu", "Dhaka", "EEE"),
(103, "Arif", "Noakhali", "CSE"),
(104, "Ahmed", "Mymensingh", "CSE"), 
(105, "Mehmet", "Barisal", "BBA"),
(106, "Nihat", "sylhet", "BBA"),
(107, "Burak", "Bogura", "LLB"),
(108, "Priya", "Naoga", "LLB"),
(109, "Akash", "Dinajpur", "CSE"),
(110, "Abash", "Pirojpur", "EEE");

--INNER JOIN

SELECT Bugresistance.StudentID, University.StudentName, Bugresistance.City
FROM Bugresistance INNER JOIN University ON Bugresistance.StudentName = University.StudentName; 

--Left Join 

SELECT Bugresistance.StudentID, University.StudentName, Bugresistance.City
FROM Bugresistance LEFT JOIN University ON Bugresistance.StudentName = University.StudentName;

--Right Join 

SELECT Bugresistance.StudentID, University.StudentName, Bugresistance.City
FROM Bugresistance RIGHT JOIN University ON Bugresistance.StudentName = University.StudentName;

--Full Outer Join 

SELECT Bugresistance.StudentID, Bugresistance.StudentName, Bugresistance.City, Bugresistance.PostalCode,  University.Department
FROM Bugresistance LEFT JOIN University ON Bugresistance.StudentID = University.StudentID 
UNION 
SELECT Bugresistance.StudentID, Bugresistance.StudentName, Bugresistance.City, Bugresistance.PostalCode,  University.Department
FROM Bugresistance RIGHT JOIN University ON Bugresistance.StudentID = University.StudentID; 
    