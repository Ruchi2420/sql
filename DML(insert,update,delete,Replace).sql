USE temp;
SELECT *FROM Customer;

-- DATA MANUPLATION LANGUAGE (INSERT,UPDATE ,DELETE,REPLACE)

-- INSERT 
-- no need to add attributes but put value in colmn as coulmn created
INSERT INTO customer VALUES (1,'codehelp', 'delhi', 'M', 'delhi',110044);

-- MULTIPLE VALUES 
INSERT INTO Customer(id,cname) VALUES (121,'Bob');

-- update 
UPDATE customer SET Address = 'Mumbai', Gender = 'M' WHERE id = 121;

-- Delete
DELETE FROM customer where id = 121;
SET SQL_SAFE_UPDATES = 1;
DELETE FROM customer ; -- sare customer delete ho jyenge.

-- update multiple values
-- SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;
UPDATE customer SET Pincode = 11000;
UPDATE customer SET Pincode = Pincode + 1;

-- refential CONSTRAINTS
CREATE TABLE Customer(
id INT PRIMARY KEY,
cname VARCHAR(255),
Address CHAR(255),
City VARCHAR(255),
Pincode integer
);

INSERT INTO Customer VALUES (1,'Ram kumar3', 'Dilbagh Nagar','M', 'Jalandhar', NULL );


CREATE TABLE ORDER_details(
Order_id INT PRIMARY KEY,
delivery_date DATE,
cust_id INT ,
FOREIGN KEY(cust_id) REFERENCES Customer(id) ON DELETE CASCADE -- isse hum parent table se entry delete kar skte hai jiska link (reference entries)child table mein wo bhi delete ho gyitha
);

INSERT INTO order_details VALUES (3,'2019-03-11', 1);
INSERT INTO order_details VALUES (4,'2019-03-12', 1);
select *FROM order_details;

DELETE FROM customer WHERE ID = 1; 
select *FROM Customer;

--  parent table mein se entry delete and child table entries P.K NULL


ALTER TABLE Customer ADD COLUMN GENDER CHAR(2);
INSERT INTO Customer VALUES (1,'Ram kumar3', 'Dilbagh Nagar', 'Jalandhar', NULL );


DELETE FROM customer WHERE ID = 1; 
SELECT *FROM ORDER_detailS;

CREATE TABLE Customer(
id INT PRIMARY KEY,
cname VARCHAR(255),
Address CHAR(255),
Gender CHAR(2),
City VARCHAR(255),
Pincode integer
);
INSERT INTO Customer 
VALUES (1251,'Ram Kumar','Dilbagh Nagar','M' ,'Jalandhar', 144002),
		(1300,'Shayam Singh','Ludhiana H.O','M', 'Ludhiana', 144001),
        (245,'Neelabh Shukla','Ashok Nagar', 'M',  'Jalandhar', 144003),
        (210, 'Barkha Singh','Dilbagh Nagar', 'F' ,'Jalandhar', 144002),
        (500,'Rohan Arora','Dilbagh Nagar','M', 'Ludhiana', 144001),
        (121,'Ram Kumar3','Dilbagh Nagar','M', 'Jalandhar', NULL);
SELECT *FROM customer;
-- Replace
REPLACE INTO Customer(id,City)
VALUES (1251, 'COLONY');

-- Behave like insert
REPLACE INTO Customer(id, cname, City)
VALUES (1333, 'ruchi','COLONY');

REPLACE INTO Customer SET id = 1300, cname = 'Mac', city = 'uganda';

REPLACE INTO customer(id,cname, city)
SELECT id,cname, city
FROM Customer WHERE id = 500;