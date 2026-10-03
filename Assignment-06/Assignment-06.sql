use assignment;

CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    job VARCHAR(30),
    salary DECIMAL(10,2),
    dept_no INT,
    hire_date DATE
);

INSERT INTO emp (emp_id, emp_name, job, salary, dept_no, hire_date)
VALUES
(101, 'Areen', 'Developer', 55000.00, 10, '2023-06-15'),
(102, 'Rahul', 'Manager', 75000.00, 20, '2021-03-10'),
(103, 'Priya', 'Tester', 48000.00, 10, '2024-01-20'),
(104, 'Amit', 'Developer', 62000.00, 30, '2022-08-05'),
(105, 'Sneha', 'HR', 50000.00, 20, '2023-11-12'),
(106, 'Karan', 'Manager', 80000.00, 30, '2020-05-25'),
(107, 'Neha', 'Tester', 45000.00, 10, '2024-07-18');

-- Agregate Functions 

select avg(salary) "Average Salary" from emp;

select min(salary) "Minimum Salary" from emp;

select max(salary) "Maximum Salary" from emp;

select count(emp_id) "No. of Employees" from emp;

select count(*) "No. of Employees" from emp;

select sum(salary) "total Salary" from emp;

-- Scalar Functions 
-- A. Numeric functions

select abs(-10) "Absolute" from dual;

select power(2,3) "Raised" from dual;

select round(3.14159,2) "Round" from dual;

select sqrt(25) "Square Root" from dual;

select greatest(2,4,6,8,10) "Number" from dual;

select least(2,4,6,8) "Number" from dual;

select mod(15,7) "Mod" from dual;

select trunc(500.203,1) "Truncate" from dual;

select ceil(3.14159) "Ceil" from dual;

-- B. String Functions

select lower('IMED') "Lower" from dual;

select upper('imed') "Upper" from dual;

select initcap('imed') "Title Case" from dual;

select substr('AREEN',2,3) "Substring" from dual;

select ascii('A') “ASCII” from dual;

select instr('SCI the','t') "INSTR" from dual;

select translate('1sct523','123','7a9') "Change" from dual;

select length('IMED') "Length" from dual;

select ltrim('NISHA','N') "LTRIM" from dual;
 
select rtrim('NISHA','A') "RTRIM" from dual;
 
select lpad('IMED',8,'*') "LPAD" from dual;

select rpad('IMED',8,'*') "RPAD" from dual;

-- Date Functions 
SELECT DATE_ADD(CURDATE(), INTERVAL 4 MONTH) AS "MONTHS";

SELECT CURDATE(), LAST_DAY(CURDATE()) AS "LASTDAY";

SELECT TIMESTAMPDIFF(
    MONTH,
    '2006-01-02',
    '2006-05-02'
) AS "MONTHS";

SELECT DATE_ADD(
    '2006-05-02',
    INTERVAL (7 - DAYOFWEEK('2006-05-02') + 2) % 7 DAY
) AS "NEXT DAY";

SELECT DATE_FORMAT(CURDATE(), '%d-%m-%y') AS "DATE";

SELECT STR_TO_DATE('01/05/06', '%d/%m/%y') AS "DATE";


