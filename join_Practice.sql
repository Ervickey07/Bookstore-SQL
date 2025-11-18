-- Consider an online book store that sells books and the book store maintain a database with the following tables
Create DATABASE Bookstore_database
use Bookstore_database

CREATE TABLE books(
    book_id INT PRIMARY KEY,
    title VARCHAR(55),
    author VARCHAR(35),
    price DECIMAL(10,2)
)
SELECT * FROM books
-- Insertind data into books
INSERT INTO books (book_id, title, author, price) VALUES
(1, 'Insurgent', 'Vikram', 20.99)
INSERT INTO books (book_id, title, author, price) VALUES
(2, 'The Lost World', 'Michael Crichton', 15.49),
(3, 'Data Science Handbook', 'Jake VanderPlas', 29.99),
(4, 'Deep Learning with Python', 'François Chollet', 39.99),
(5, 'The Alchemist', 'Paulo Coelho', 10.99),
(6, 'Artificial Intelligence Basics', 'Tom Taulli', 25.99),
(7, 'SQL for Beginners', 'John Smith', 18.99),
(8, 'Python Crash Course', 'Eric Matthes', 27.49),
(9, 'Think Like a Data Scientist', 'Brian Godsey', 22.99),
(10, 'The Pragmatic Programmer', 'Andrew Hunt', 30.99),
(11, 'Eloquent JavaScript', 'Marijn Haverbeke', 24.99),
(12, 'Machine Learning Yearning', 'Andrew Ng', 19.99),
(13, 'Data Analytics Made Easy', 'John Doe', 21.99),
(14, 'Mastering SQL', 'Morgan Brown', 26.99),
(15, 'Neural Networks and Deep Learning', 'Michael Nielsen', 28.99),
(16, 'The Hitchhiker’s Guide to the Galaxy', 'Douglas Adams', 12.99),
(17, 'Cloud Computing for Dummies', 'Judith Hurwitz', 31.99),
(18, 'Computer Networking', 'James Kurose', 34.99),
(19, 'Big Data Demystified', 'David Stephenson', 23.99),
(20, 'Cybersecurity Essentials', 'Charles J. Brooks', 29.49),
(21, 'Blockchain Basics', 'Daniel Drescher', 16.99),
(22, 'React for Beginners', 'Robin Wieruch', 25.49),
(23, 'Modern Web Development', 'Peter Smith', 27.99),
(24, 'Intro to Data Visualization', 'Ben Jones', 18.49),
(25, 'Excel for Data Analysis', 'Jordan Goldmeier', 22.49),
(26, 'Hadoop in Practice', 'Alex Holmes', 30.49),
(27, 'The Data Warehouse Toolkit', 'Ralph Kimball', 32.99),
(28, 'Practical Statistics for Data Scientists', 'Peter Bruce', 28.49),
(29, 'SQL Performance Tuning', 'Grant Fritchey', 26.49),
(30, 'Mastering Tableau', 'Joshua Milligan', 35.99);
insert into books(book_id,title,author,price) values
(31,'Insurgent', 'Vikram', 20.99)
SELECT * from books


CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    name VARCHAR(20),
    email VARCHAR(20),
    address VARCHAR(45)
)
SELECT * FROM customers

-- Altering the table column size
ALTER table customers 
ALTER COLUMN email VARCHAR(100)


INSERT INTO customers (customer_id, name, email, address) VALUES
(1, 'Aarav Sharma', 'aarav.sharma@email.com', '123 MG Road, Mumbai'),
(2, 'Sanya Verma', 'sanya.verma@email.com', '456 Green Avenue, Delhi'),
(3, 'Rahul Mehta', 'rahul.mehta@email.com', '789 Park Street, Bangalore'),
(4, 'Priya Kapoor', 'priya.kapoor@email.com', '101 Lotus Tower, Chennai'),
(5, 'Vikram Singh', 'vikram.singh@email.com', '102 Rose Street, Hyderabad'),
(6, 'Neha Joshi', 'neha.joshi@email.com', '103 Palm Drive, Pune'),
(7, 'Rohit Khanna', 'rohit.khanna@email.com', '104 Orchid Road, Kolkata'),
(8, 'Simran Kaur', 'simran.kaur@email.com', '105 Lake View, Chandigarh'),
(9, 'Kunal Desai', 'kunal.desai@email.com', '106 Sunset Blvd, Ahmedabad'),
(10, 'Ananya Rao', 'ananya.rao@email.com', '107 Hilltop Road, Goa'),
(11, 'Kabir Malhotra', 'kabir.malhotra@email.com', '108 Maple Avenue, Jaipur'),
(12, 'Sonia Patel', 'sonia.patel@email.com', '109 Riverfront, Surat'),
(13, 'Amit Bhatia', 'amit.bhatia@email.com', '110 Silicon Valley, Bangalore'),
(14, 'Isha Nair', 'isha.nair@email.com', '111 Ocean Drive, Kochi'),
(15, 'Rajiv Saxena', 'rajiv.saxena@email.com', '112 Heritage Street, Lucknow'),
(16, 'Tanya Chawla', 'tanya.chawla@email.com', '113 Pearl Towers, Indore'),
(17, 'Manish Kulkarni', 'manish.kulkarni@email.com', '114 Victoria Lane, Nagpur'),
(18, 'Divya Reddy', 'divya.reddy@email.com', '115 Sunrise Apartments, Vizag'),
(19, 'Sahil Gupta', 'sahil.gupta@email.com', '116 Central Plaza, Bhopal'),
(20, 'Meera Iyer', 'meera.iyer@email.com', '117 Royal Residency, Coimbatore'),
(21, 'Aditya Chauhan', 'aditya.chauhan@email.com', '118 Emerald Estate, Nashik'),
(22, 'Kriti Das', 'kriti.das@email.com', '119 Crystal Court, Guwahati'),
(23, 'Harsh Soni', 'harsh.soni@email.com', '120 Skyview Heights, Thane'),
(24, 'Pooja Anand', 'pooja.anand@email.com', '121 Silver Lake, Mysore'),
(25, 'Nitin Verma', 'nitin.verma@email.com', '122 Cloud Nine, Kanpur'),
(26, 'Sneha Pillai', 'sneha.pillai@email.com', '123 Grand Residency, Patna'),
(27, 'Rajat Sen', 'rajat.sen@email.com', '124 Green Meadows, Bhubaneswar'),
(28, 'Alok Mishra', 'alok.mishra@email.com', '125 Sapphire Towers, Ranchi'),
(29, 'Swati Saxena', 'swati.saxena@email.com', '126 Gold Crest, Vadodara'),
(30, 'Tarun Menon', 'tarun.menon@email.com', '127 The Grand Oasis, Udaipur');


CREATE TABLE orders(
    order_id int PRIMARY key,
    customer_id INT,
    book_id INT,
    quantity INT,
    order_date DATE
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN key(book_id) REFERENCES books(book_id)
)
SELECT * From orders

INSERT INTO orders (order_id, book_id, quantity, order_date) VALUES
(1, 1, 2, '2024-12-01'),
(2, 3, 1, '2024-12-03'),
(3, 5, 4, '2024-12-05'),
(4, 7, 2, '2024-12-07'),
(5, 2, 3, '2024-12-08'),
(6, 10, 1, '2024-12-09'),
(7, 9, 2, '2024-12-11'),
(8, 4, 1, '2024-12-12'),
(9, 6, 5, '2024-12-13'),
(10, 8, 2, '2024-12-14'),
(11, 11, 1, '2024-12-15'),
(12, 12, 3, '2024-12-16'),
(13, 13, 2, '2024-12-17'),
(14, 14, 1, '2024-12-18'),
(15, 15, 4, '2024-12-19'),
(16, 16, 2, '2024-12-20'),
(17, 17, 3, '2024-12-21'),
(18, 18, 1, '2024-12-22'),
(19, 19, 2, '2024-12-23'),
(20, 20, 3, '2024-12-24'),
(21, 21, 2, '2024-12-25'),
(22, 22, 1, '2024-12-26'),
(23, 23, 3, '2024-12-27'),
(24, 24, 4, '2024-12-28'),
(25, 25, 2, '2024-12-29'),
(26, 26, 1, '2024-12-30'),
(27, 27, 3, '2024-12-31'),
(28, 28, 2, '2025-01-01'),
(29, 29, 4, '2025-01-02'),
(30, 30, 3, '2025-01-03');


-- Fill data while i was forgot to add
WITH OrderedOrders AS (
    SELECT order_id, ROW_NUMBER() OVER (ORDER BY order_id) AS rn
    FROM orders
    WHERE customer_id IS NULL
)
UPDATE o
SET customer_id = oo.rn
FROM orders o
JOIN OrderedOrders oo ON o.order_id = oo.order_id;


CREATE TABLE payments(
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    FOREIGN key (order_id) REFERENCES orders(order_id)
) 

insert into payments(payment_id,order_id,payment_date,amount)
 VALUES
(1, 1, '2025-01-05', 41.98),
(2, 2, '2025-01-06', 20.99),
(3, 3, '2025-01-06', 83.96),
(4, 4, '2025-01-07', 41.98),
(5, 5, '2025-01-08', 62.97),
(6, 6, '2025-01-09', 20.99),
(7, 7, '2025-01-10', 41.98),
(8, 8, '2025-01-11', 20.99),
(9, 9, '2025-01-12', 104.95),
(10, 10, '2025-01-13', 41.98),
(11, 11, '2025-01-14', 20.99),
(12, 12, '2025-01-15', 62.97),
(13, 13, '2025-01-16', 41.98),
(14, 14, '2025-01-17', 20.99),
(15, 15, '2025-01-18', 83.96),
(16, 16, '2025-01-19', 41.98),
(17, 17, '2025-01-20', 62.97),
(18, 18, '2025-01-21', 20.99),
(19, 19, '2025-01-22', 41.98),
(20, 20, '2025-01-23', 62.97),
(21, 21, '2025-01-24', 41.98),
(22, 22, '2025-01-25', 20.99),
(23, 23, '2025-01-26', 62.97),
(24, 24, '2025-01-27', 83.96),
(25, 25, '2025-01-28', 41.98),
(26, 26, '2025-01-29', 20.99),
(27, 27, '2025-01-30', 62.97),
(28, 28, '2025-01-31', 41.98),
(29, 29, '2025-02-01', 83.96),
(30, 30, '2025-02-02', 62.97);
insert into payments(payment_id,order_id,payment_date,amount)
 VALUES
 (31, 23, '2025-01-26', 62.97),
(32, 24, '2025-01-27', 83.96),
(33, 25, '2025-01-28', 41.98),
(34, 26, '2025-01-29', 20.99),
(35, 27, '2025-01-30', 62.97),
(36, 28, '2025-01-31', 41.98),
(37, 29, '2025-02-01', 83.96),
(38, 30, '2025-02-02', 62.97);


SELECT * FROM payments
SELECT * FROM customers
SELECT * FROM orders
SELECT * FROM books

-- Q1 Retrieve the titles and author of all books
SELECT title, author from books
-- 2 Retrieve total number of book sold
SELECT SUM(quantity) as total_quantity
FROM orders;

-- Q4 Retrieve the customers who have palced orders

SELECT t1.name,t2.order_id,t2.order_date FROM customers as t1
JOIN orders as t2
on t1.customer_id = t2.customer_id;

-- Retrieve the total revenue generated from books sale 

SELECT SUM(t1.quantity * t2.price) as total_revenue from orders  as t1
JOIN books as t2
ON t1.book_id = t2.book_id

-- Q 6 Retrieve the customer who has made the highest payment
select  top 1 customers.name,payments.amount FROM orders as t1
INNER join customers
ON t1.customer_id = customers.customer_id
INNER JOIN payments
ON t1.order_id = payments.order_id
ORDER BY payments.amount DESC;


--Q7 Retrieve the book with highest price 

select * FROM books
WHERE price = (select MAX(price) FROM books)


--Q8 Practice join use two table to  inner join
SELECT  top 5 t1.customer_id,t1.quantity,t2.name,t2.address FROM orders as t1
INNER JOIN customers as t2
ON t1.customer_id = t2.customer_id; 

select top 5 t1.customer_id,t1.quantity,t2.address from orders as t1
inner join customers as t2
on t1.customer_id = t2.customer_id

--Q9 Top 5 by who rdered
SELECT TOP 5
    t1.customer_id,
    SUM(t1.quantity) AS total_quantity,
    t2.name,
    t2.address
FROM orders AS t1
INNER JOIN customers AS t2
    ON t1.customer_id = t2.customer_id
GROUP BY t1.customer_id, t2.name, t2.address
ORDER BY total_quantity DESC;

--Q10 Left joins -- all values from left table and in right table you will get only matching values not null
SELECT * FROM orders
LEFT JOIN books
on orders.book_id = books.book_id

--Q 11 Right joins 
SELECT * FROM orders
RIGHT JOIN books
on orders.book_id = books.book_id


--Q12 Aggregate functions 
-- aggregate function are those return single value by column reference
-- aggregate function are fast and give you controll over hands on large data set 
-- example-5 types cunt(),max(),min(),sum(),average()
SELECT COUNT(payment_id) as total_paymentId,
COUNT(amount) as count_payments,
COUNT(distinct amount) as amount
-- Distinct return only unique value from column not-duplicate
FROM payments 

-- Group by and having by --GB-group row wise data with same or other if availabel, having used for filtering data after using group by

--Q13 see how many times each amount was used, like a summary:
SELECT amount, COUNT(*) AS times_used
FROM payments
GROUP BY amount
ORDER BY times_used DESC;

-- Sum() function
SELECT SUM(amount) as total_amount
from payments


--max() fucntion
select order_id, max(amount) as max_amount
from payments
group by order_id
having max(amount) > 100

-- min() function

select order_id, min(amount) as max_amount
from payments
group by order_id
having min(amount) <= 21


--Q14 Want to calculate total revenue which is quantity * amount 
select 
SUM(t1.quantity * t2.amount) as Total_revenue
from orders as t1
INNER JOIN payments as t2
on t1.order_id = t2.order_id

-- avg function
SELECT avg(t1.quantity * t2.amount) as avg_amount
from orders as t1
inner JOIN payments as t2
on t1.order_id = t2.order_id



-- GROUP by and having clause

select * from payments
SELECT * FROM orders
SELECT * FROM books


-- Finding Duplicates from a given data row wise 
select title, count(*) as Dulicates
from books
GROUP by title
HAVING COUNT(*) > 1

-- Multiple duplicates form a given table 
select 
    title,
    author,
    COUNT(*) as Multiple_duplicates
from books
GROUP by title, author
HAVING COUNT(*) > 1 


select author, count(*) from books
GROUP by author
HAVING COUNT(*) > 1




-- Window functions practice
select * from payments
SELECT * FROM orders
SELECT * FROM books


-- Find the Total sales Accross all orders as total sales
-- Additionally provides details such order Id, order date
SELECT 
    payment_id,
    payment_date,
    order_id,
    SUM(amount) as total_Sales
from payments
GROUP by 
    payment_id,
    payment_date,
    order_id
--window functions will be in picture because it doesnot solve our proble 2nd

SELECT 
    payment_id,
    payment_date,
    order_id,

    SUM(amount)  over(PARTITION by payment_id) as total_Sales

from payments

    
-- Find out total sales across all orders
-- Additionally provides details such order id, order date

select 
    order_id,
    payment_date,
    sum(amount) OVER() as totalSales
from payments


-- Find out total sales across all orders
-- Additionally provides details such order id, order date
-- find the total sales for each order

select
    order_id,
    payment_date,
    amount,
    SUM(amount) OVER() as totalSales,
    sum(amount) OVER(PARTITION by order_id) as totalSalesbyOrder_id
from payments


select 
    order_id,
    payment_date,
    amount,
    RANK() OVER(order by amount DESC) as ranksales
from payments


-- Frames work

