CREATE DATABASE temp2;
USE temp2;
CREATE TABLE Project(
id INT PRIMARY KEY,
empID INT,
FOREIGN KEY(empID) REFERENCES EMPLOYEE(id),
name VARCHAR(255),
startdate DATE,
clientID INT,
FOREIGN KEY(clientID) REFERENCES CLIENT(id) 
);

INSERT INTO Project(id, empID, name, startdate, clientID) 
VALUES  (1, 1, 'A', 2021-04-21, 3);
INSERT INTO Project(id, empID, name, startdate, clientID) 
VALUES  (2, 2, 'B', 2021-03-12, 1),
		(3, 3, 'C', 2021-01-16, 5),
		(4, 3, 'D', 2021-04-27, 2),
		(5, 5, 'E', 2021-05-01, 4);
        SET SQL_SAFE_UPDATES = 0;
     
UPDATE Project SET  startdate = '2021-05-01' WHERE startdate = '00-00-00' AND id =5;
SELECT *FROM Project; 

CREATE TABLE EMPLOYEE(
id INT PRIMARY KEY,
fname VARCHAR(255),
Lname VARCHAR(255),
Age INT,
emailID VARCHAR(255),
PhoneNo INT,
City VARCHAR(255)
);

INSERT INTO EMPLOYEE(id, fname, lname,Age, emailID, PhoneNo, City )
VALUES (1, 'Aman', 'Proto', 32, 'aman@gmai.com', 898,'Delhi'),
		(2,'Yagya', 'Narayan', 44, 'yagya@gmail.com ', 222, 'Palam'),
        (3,'Rahul', 'BD', 22, 'rahul@gmail.com ', 444, 'Kolkata'),
        (4,'Jatin', 'Hermit', 31, 'jatin@gmail.com ', 666, 'Raipur'),
        (5,'PK', 'Panday', 21, 'pk@gmail.com ', 555, 'Jaipur');
SELECT *FROM EMPLOYEE;        

CREATE TABLE CLIENT(
id INT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
age INT,
emailID VARCHAR(255),
PhoneNo INT,
City VARCHAR(255),
empID INT,
FOREIGN KEY(empID) REFERENCES EMPLOYEE(id) 
);

SELECT *FROM CLIENT;
INSERT INTO CLIENT(id, first_name, last_name, age, emailID, PhoneNo, City ,empID)
VALUES  (1, 'Mac', 'Rogress', 47, 'mac@hotmail.com', 333,'Kolkata',3),
		(2,'Max', 'Poirier', 27, 'max@gmail.com ', 222, 'Kolkata',3),
        (3,'Peter', 'Jain', 24, 'peter@abc.com ', 111, 'Delhi', 1),
        (4,'Sushant', 'Aggarwal', 23, 'sushant@yahoo.com ', 45454,'Hyderabad', 5),
        (5,'Pratap', 'Singh', 36, 'p@xyz.com ', 77767, 'Mumbai', 2);
