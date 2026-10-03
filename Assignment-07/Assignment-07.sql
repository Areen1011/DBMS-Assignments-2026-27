create database Assignments;
use Assignments;

create table Employee(
	empno numeric(4) primary key,
    ename varchar(30),
    job varchar(20),
    hiredate date,
    salary numeric(8, 2),
    commission numeric(8, 2),
    deptno numeric(2));
    
INSERT INTO Employee(empno, ename, job, hiredate, salary, commission, deptno)
VALUES(1001, 'RAJESH', 'MANAGER', '2020-08-15', 75000, 5000, 10),
	(1002, 'PRIYA', 'ANALYST', '2023-12-25', 55000, 3000, 20),
	(1003, 'AMIT', 'CLERK', '2020-01-19', 30000, 6500, 10),
	(1004, 'NEHA', 'SALESMAN', '2021-5-01', 45000, 8000, 30),
	(1005, 'ROHAN', 'ANALYST', '2026-08-30', 50000, 4000, 20);
    

SELECT SUM(salary) AS total_salary, AVG(salary) AS average_salary
FROM Employee
WHERE deptno = 10;

SELECT MIN(salary) AS minimum_salary, MAX(salary) AS maximum_salary
FROM Employee
WHERE job = 'ANALYST';

SELECT COUNT(*) AS total_employees,
       COUNT(commission) AS employees_with_commission
FROM Employee;

SELECT SUM(salary) AS total_analyst_salary
FROM Employee
WHERE job = 'ANALYST';

SELECT ename, salary,
       ROUND(salary, 1) AS rounded_salary,
       TRUNCATE(salary, 1) AS truncated_salary
FROM Employee;

SELECT empno, ename
FROM Employee
WHERE MOD(empno, 2) = 1;

SELECT ename, salary,
       CEIL(salary) AS higher_integer,
       FLOOR(salary) AS lower_integer
FROM Employee;

SELECT ABS(salary - 5000) AS absolute_difference,
       POWER(salary, 2) AS salary_power,
       SQRT(25) AS square_root
FROM Employee;

SELECT GREATEST(15, 28, 9) AS largest_value,
       LEAST(15, 28, 9) AS smallest_value;

SELECT ename,
       LOWER(ename) AS lowercase_name,
       UPPER(ename) AS uppercase_name,
       CONCAT(UPPER(LEFT(ename, 1)), LOWER(SUBSTRING(ename, 2))) AS title_case
FROM Employee;

SELECT SUBSTRING(job, 1, 3) AS first_three_characters,
       LENGTH(TRIM(ename)) AS name_length
FROM Employee;

SELECT LOCATE('A', UPPER(job)) AS character_position
FROM Employee;

SELECT LPAD(job, 12, '*') AS padded_job,
       RPAD(ename, 20, '.') AS padded_name
FROM Employee;

SELECT LTRIM(ename) AS leading_trimmed,
       RTRIM(ename) AS trailing_trimmed
FROM Employee;

SELECT TRANSLATE('1sct523', '123', '7a9') AS translated_string,
       ASCII('A') AS ascii_value;

SELECT DATE_ADD(hiredate, INTERVAL 6 MONTH) AS probation_completion
FROM Employee;

SELECT hiredate,
       LAST_DAY(hiredate) AS month_end,
       DATE_ADD(
           hiredate,
           INTERVAL (7 - DAYOFWEEK(hiredate) + 2) % 7 DAY
       ) AS next_monday
FROM Employee;

SELECT hiredate,
       TIMESTAMPDIFF(
           MONTH,
           hiredate,
           '2025-01-01'
       ) AS months_difference
FROM Employee;

SELECT DATE_FORMAT(hiredate, '%d-%M-%Y (%W)') AS formatted_hiredate
FROM Employee;

SELECT *
FROM Employee
WHERE hiredate > STR_TO_DATE('01-JAN-2021', '%d-%b-%Y');
