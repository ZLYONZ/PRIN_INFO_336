/* Find employee(s) with the name 'John Smith'*/
SELECT * 
FROM employee
WHERE Fname = 'John' and Lname = 'Smith';

/* Find the employees who work in the 'Research' department*/
SELECT e.Fname as FirstName, e.Lname as LastName
FROM employee e, department d
WHERE e.Dno = d.Dnumber
AND d.Dname = 'Research';

/* Find employees who were born in 1960s */
SELECT e.Fname, e.Lname
FROM employee e
WHERE e.Bdate LIKE '__6_______';

/* Find employees whose names start with 'A'*/
SELECT e.Fname, e.Lname
FROM employee e
WHERE e.FName LIKE 'A%';

/* Find employees who get more than 50000 salary*/
SELECT e.Fname, e.Lname
FROM employee e
WHERE e.Salary > 50000; 

/* Sort employees by their first name*/
SELECT * 
FROM employee
ORDER BY Fname;

/* Sort emplyees by their salary (most to least) */
SELECT * 
FROM employee
ORDER BY Salary DESC;

/* Employees who do not have dependents */
SELECT e.Fname, e.Lname
FROM employee e 
WHERE e.Ssn NOT IN (
SELECT Essn FROM dependent);

