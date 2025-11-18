📚 Online Bookstore Database Project (Azure SQL)
📌 Project Overview
This project simulates a real-world online bookstore system using Azure SQL Database.
It includes database creation, table design, data insertion, joins, aggregates, window functions, and real analytical queries.
The database stores:
Book details
Customer information
Orders placed
Payments made
This project is designed for SQL practice, data analysis, and database concepts learning.
🏗️ Database Schema
Database Created
Bookstore_database
Tables Included
Table Name	Description
books	Stores book details like title, author, price
customers	Holds customer names, emails, and addresses
orders	Tracks which customer ordered which book
payments	Stores payment amounts and dates per order
📂 Table Structure Summary
1️⃣ books
book_id (PK)
title
author
price
2️⃣ customers
customer_id (PK)
name
email
address
3️⃣ orders
order_id (PK)
customer_id (FK)
book_id (FK)
quantity
order_date
4️⃣ payments
payment_id (PK)
order_id (FK)
payment_date
amount
🧠 SQL Concepts Used
✔ Database creation
✔ Table creation
✔ Primary & foreign keys
✔ Insert statements
✔ Alter table
✔ Joins (Inner, Left, Right)
✔ Aggregate functions
✔ Group By & Having
✔ Subqueries
✔ Window functions
✔ Ranking
✔ Duplicate checks
🔍 Sample Queries Included
📘 1. Retrieve Book Titles & Authors
SELECT title, author FROM books;
📦 2. Total Books Sold
SELECT SUM(quantity) AS total_quantity FROM orders;
🧾 3. Customers Who Placed Orders
SELECT c.name, o.order_id, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;
💰 4. Total Revenue from Book Sales
SELECT SUM(o.quantity * b.price) AS total_revenue
FROM orders o
JOIN books b ON o.book_id = b.book_id;
🏆 5. Customer with Highest Payment
SELECT TOP 1 c.name, p.amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN payments p ON o.order_id = p.order_id
ORDER BY p.amount DESC;
📊 6. Window Function Example
SELECT 
    order_id,
    payment_date,
    amount,
    SUM(amount) OVER() AS totalSales
FROM payments;
🎯 Project Goals
Build a realistic relational database
Understand database relationships & constraints
Practice SQL querying at beginner-to-intermediate level
Learn analytical SQL (window functions & ranking)
Use Azure SQL as a real-world environment
🛠️ Tools & Technologies
Azure SQL Database
SQL Server / Azure Data Studio
T-SQL
Works with:
SSMS
Azure Query Editor
VS Code + SQL extension
📎 How to Run This Project
Option 1 — On Azure SQL
Create Azure SQL Database
Open Query Editor
Copy & paste SQL scripts
Run in sequence
Option 2 — Locally (SSMS / Azure Data Studio)
Connect to your local SQL Server
Create database:
CREATE DATABASE Bookstore_database
Run scripts in order:
Create Tables
Insert Data
Run Queries
📌 Future Enhancements
Add inventory management
Add genres & categories
Add review & rating table
Add stored procedures
Build a dashboard (Power BI / Tableau)
👤 Author
Vikram — Data Analytics & SQL Enthusiast
💡 Always learning. Always building.
