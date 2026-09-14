create table customer(
	Customer_ID numeric(5) primary key,
    Customer_Name varchar(50) not null,
    Gender varchar(10),
    City varchar(30),
    Contact_No numeric(15));
    
create table orders(
	Order_ID numeric(5) primary key,
    Order_Date date,
    Product_Name varchar(50) not null,
    Quantity numeric(5),
    Amount numeric(10, 2),
    Customer_ID numeric(5),
    foreign key(Customer_ID) references customer(Customer_ID));
    
alter table customer
add email varchar(50);

alter table customer
modify Customer_Name varchar(30) not null;

alter table customer
drop column email;

INSERT INTO customer(Customer_ID, Customer_Name, Gender, City, Contact_No)
VALUES
(1, 'Rahul Mehta', 'Male', 'Kolhapur', 9000000001),
(2, 'Aisha Khan', 'Female', 'Pune', 9000000002),
(3, 'Vikram Patil', 'Male', 'Kolhapur', 9000000003),
(4, 'Neha Joshi', 'Female', 'Sangli', 9000000004),
(5, 'Arjun Desai', 'Male', 'Sangli', 9000000005);
      
insert into orders(Order_ID, Order_Date, Product_Name, Quantity, Amount)
values(1,'2026-08-25', 'Laptop', 2, 10000),
	  (2,'2026-08-26', 'Mobile', 3, 4000),
      (3,'2026-08-25', 'Mobile', 1, 5000),
      (4,'2026-08-24', 'Charger',2, 12000),
	  (5,'2026-08-27', 'Speaker',1, 9000);

update customer
set city='Delhi'
where Customer_ID=1;

update customer
set Contact_No=9678467023
where Customer_ID=2;

update orders
set Quantity=350
where Order_ID=3;

delete from orders
where Order_ID=2;

select * from customer;

select Customer_Name, City from customer;

select * from customer
where city='Pune';

select * from customer 
where Customer_Name like 'A%';

select * from customer
order by Customer_Name asc;

select * from orders
where (Amount > 5000);

select Product_Name, Amount from orders;

select * from orders
order by Amount desc;

delete from customer
where Gender='Male';
