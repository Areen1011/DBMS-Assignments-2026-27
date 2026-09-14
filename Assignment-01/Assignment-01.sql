create table student(
student_ID numeric (5) primary key,
student_name varchar(50) not null,
gender varchar(10),
age numeric(2) check(age > 15),
course varchar(30) not null,
city varchar(30) default'Pune',
email varchar(50) unique,
mobile_no numeric(10) unique not null,
admission_date date not null,
fees numeric(10,2) check(fees > 20000)
);

INSERT INTO student(student_ID, student_name, gender, age, course, city, email, mobile_no, admission_date, fees)
VALUES
(1, 'Rahul Mehta', 'Male', 21, 'MCA', 'Kolhapur', 'rahul.mehta@example.com', 9000000001, '2026-06-01', 225000),
(2, 'Aisha Khan', 'Female', 20, 'MCA', 'Pune', 'aisha.khan@example.com', 9000000002, '2026-06-10', 22000),
(3, 'Vikram Patil', 'Male', 18, 'MBA', 'Sangli', 'vikram.patil@example.com', 9000000003, '2026-06-11', 25000),
(4, 'Neha Joshi', 'Female', 25, 'MCA', 'Satara', 'neha.joshi@example.com', 9000000004, '2026-05-05', 200000),
(5, 'Arjun Desai', 'Male', 23, 'MBA', 'Kolhapur', 'arjun.desai@example.com', 9000000005, '2026-06-01', 225000);
      
select * from student;

select student_name, course, city from student;

select * from student where age > 20;

select * from student where city = 'Pune';

select * from student where fees > 50000;

select * from student where age between 18 AND 22;

select * from student where city in('Pune','Mumbai');

select * from student where course = 'MCA';

select * from student where fees < 40000;

update student
set city='Delhi'
where student_ID=1;

update student
set fees = fees + 10000
where city='Pune';

delete from student where student_ID=2;

delete from student where age < 18; 

select * from student
order by student_name asc; 

select * from student
order by fees desc; 

select distinct city from student;

select * from student where email is null;

alter table student 
add (percentage numeric(3));

UPDATE student 
SET percentage = 97 
WHERE student_ID = 1;

UPDATE student 
SET percentage = 75 
WHERE student_ID = 3;

UPDATE student 
SET percentage = 88 
WHERE student_ID = 4;

UPDATE student 
SET percentage = 85 
WHERE student_ID = 5;