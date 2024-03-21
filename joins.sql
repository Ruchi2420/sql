-- INNER JOIN
-- ENLIST all the employees ID's,names along with project allocated to them.
SELECT e.id, e.fname, e.Lname,p.id, p.name from employee AS e
INNER JOIN Project AS P ON e.id = P.empID;

-- inner join without using join
SELECT e.id, e.fname, e.Lname,p.id, p.name FROM employee AS e,
project AS p WHERE e.id = p.empID;

SELECT *from employee AS e
INNER JOIN Project AS P ON e.id = P.empID; 

-- Fetch out all the employee ID's and their contact detail who have been working
-- from jaipur with the clients name working in Hyderabad.

SELECT e.id, e.emailID, e.phoneNo, c.first_name, c.last_name FROM employee AS e 
INNER JOIN client AS c ON e.id = c.empID WHERE e.city = 'Jaipur' AND c.City = 'Hyderabad';


-- Left join
-- fetch out each project allocated to each employee.
SELECT *FROM employee AS e 
LEFT JOIN project AS p ON e.id = p.empID;

-- RIGHT JOIN
-- List out all the projects along with the employee's name and their respective allocated email ID.
SELECT p.id, p.name, e.fname, e.Lname, e.emailID FROM employee AS e 
RIGHT JOIN project AS p ON e.id = empID;

-- cross join
-- List out all the combinations possible for the employee's name and projects that can exists.
select e.fname, e.Lname, p.id, p.name FROM employee AS e 
CROSS JOIN project AS p;
