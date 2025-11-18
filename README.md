# 📚 Online Bookstore Database Project (Azure SQL)

## 📌 Project Overview  
This project simulates a real-world **online bookstore** system using **Azure SQL Database**.  
It includes **database creation, table design, data insertion, joins, aggregates, window functions**, and real analytical queries.

The database stores:
- Book details
- Customer information
- Orders placed
- Payments made

This project is designed for:
- SQL Practice
- Data Analytics learning
- Database design concepts
- Azure SQL Hands-on

---

## 🏗️ Database Schema

### **Database Created**


### **Tables Included**
| Table Name  | Description |
|-------------|-------------|
| `books`     | Stores book details like title, author, price |
| `customers` | Holds customer names, emails, and addresses |
| `orders`    | Tracks which customer ordered which book |
| `payments`  | Stores payment amounts and dates per order |

---

## 📂 Table Structure Summary

### 1️⃣ `books`

### 2️⃣ `customers`

### 3️⃣ `orders`

### 4️⃣ `payments`



---

## 🧠 SQL Concepts Used

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

---

## 🔍 Sample Queries Included

### 📘 1. Retrieve Book Titles & Authors
```sql

📦 2. Total Books Sold
SELECT title, author FROM books;

SELECT SUM(quantity) AS total_quantity FROM orders;



