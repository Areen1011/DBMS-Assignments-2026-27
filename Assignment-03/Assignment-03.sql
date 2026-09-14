CREATE TABLE department(
    Department_ID NUMERIC(5) PRIMARY KEY,
    Department_Name VARCHAR(50) NOT NULL,
    Location VARCHAR(50)
);

CREATE TABLE employee(
    Employee_ID NUMERIC(5) PRIMARY KEY,
    Employee_Name VARCHAR(50) NOT NULL,
    Gender VARCHAR(10),
    Salary NUMERIC(10,2),
    Department_ID NUMERIC(5),
    FOREIGN KEY (Department_ID) REFERENCES DEPARTMENT(Department_ID)
);

CREATE TABLE project(
    Project_ID NUMERIC(5) PRIMARY KEY,
    Project_Name VARCHAR(50) NOT NULL,
    Budget NUMERIC(12,2),
    Duration NUMERIC(3),
    Department_ID NUMERIC(5),
    FOREIGN KEY (Department_ID) REFERENCES DEPARTMENT(Department_ID)
);

ALTER TABLE employee
ADD Email VARCHAR(100);

ALTER TABLE employee
MODIFY Employee_Name VARCHAR(100);

ALTER TABLE employee
DROP COLUMN Email;

INSERT INTO department (Department_ID, Department_Name, Location)
VALUES (101, 'Computer', 'First Floor'),
		(102, 'Management', 'Second Floor'),
		(103, 'Finance', 'Third Floor'),
		(104, 'HR', 'First Floor'),
		(105, 'Marketing', 'Second Floor');

INSERT INTO employee (Employee_ID, Employee_Name, Gender, Salary, Department_ID)
VALUES (1, 'Ram', 'Male', 45000, 101),
(2, 'Amit', 'Male', 60000, 102),
(3, 'Anita', 'Female', 55000, 101),
(4, 'Priya', 'Female', 35000, 103),
(5, 'Sneha', 'Female', 25000, 104);

INSERT INTO project (Project_ID, Project_Name, Budget, Duration, Department_ID )
VALUES (1, 'Website Development', 200000, 6, 101),
(2, 'Mobile Application', 300000, 8, 102),
(3, 'Payroll System', 150000, 5, 103),
(4, 'HR Management', 80000, 4, 104),
(5, 'Marketing Campaign', 500000, 10, 105);

INSERT INTO employee (Employee_ID, Employee_Name, Department_ID)
VALUES (6, 'Akash', 101);

UPDATE department
SET Location = 'Ground Floor'
WHERE Department_ID = 103;

UPDATE employee
SET Salary = Salary + 50000
WHERE Employee_Name = 'Ram';

UPDATE project
SET Budget = 5000000
WHERE Project_ID = 2;

DELETE FROM employee
WHERE Salary < 20000;

SELECT * FROM department;

SELECT * FROM EMPLOYEE;

SELECT Employee_Name, Salary
FROM employee;

SELECT *
FROM employee
WHERE Salary > 50000;

SELECT *
FROM employee
ORDER BY Employee_Name ASC;

SELECT *
FROM department
WHERE Location = 'Ground Floor';

SELECT * FROM project;

SELECT Project_Name, Budget
FROM project;

SELECT *
FROM project
WHERE Budget > 100000;

SELECT *
FROM project
ORDER BY Budget DESC;

SELECT DISTINCT Department_ID
FROM employee;

SELECT *
FROM employee
WHERE Salary > 30000
AND Gender = 'Female';

SELECT *
FROM EMPLOYEE
WHERE Department_ID IN (101, 102);

SELECT *
FROM employee
WHERE Salary != 50000;

SELECT *
FROM project
WHERE Budget BETWEEN 100000 AND 500000;

SELECT *
FROM employee
WHERE Employee_Name LIKE 'A%';