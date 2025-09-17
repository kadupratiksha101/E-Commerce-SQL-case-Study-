SQL Case Study – E-commerce Analytics
<p align="center"> <img src="https://img.shields.io/badge/SQL-CaseStudy-blue?style=flat-square&logo=mysql&logoColor=white" /> <img src="https://img.shields.io/badge/Data%20Analysis-Ecommerce-orange?style=flat-square&logo=google-analytics" /> <img src="https://img.shields.io/badge/Queries-Practice-success?style=flat-square&logo=postgresql" /> </p>
🚀 Project Overview

This project is a SQL case study based on an E-commerce dataset.
It covers customer details, products, orders, and purchased items to solve real-world business queries.

The goal is to practice SQL concepts like filtering, grouping, aggregation, joins, and ordering—using a hands-on business scenario.

🛠️ Database Schema

Database Name: Ecommerce

Customers 👥 → Customer details (ID, name, city, state, join date)

Products 📦 → Product catalog (ID, name, category, price)

Orders 🧾 → Customer orders (ID, customer, date, total amount)

Order_Items 📊 → Items in each order (ID, order, product, quantity)

📌 ER Diagram (Recommended) → You can add a schema diagram here for extra clarity.

📂 Project Files

SQL CASE STUDY.sql → Contains schema creation, data insertion & 18 case study queries.

🔑 Example Case Study Questions

Here are some SQL problems solved in this project:

1️⃣ List all customers from Mumbai
2️⃣ Show customers who joined in 2022
3️⃣ Count how many customers are from Maharashtra (MH)
4️⃣ Display top 5 recent customers by join date
5️⃣ List products with price > 10,000
6️⃣ Find the cheapest product
7️⃣ Count products in each category
8️⃣ List all orders placed in September 2022
9️⃣ Find the order with the highest total amount
🔟 Calculate Average Order Value (AOV)

👉 And many more (18 total queries).

📸 Query Example
-- 10. Find the order with the highest total_amount
SELECT order_id, total_amount
FROM Orders
ORDER BY total_amount DESC
LIMIT 1;


✅ Output: Returns the order with the highest value.

🎯 Learning Outcomes

Hands-on SQL practice for interviews & projects

Working with realistic E-commerce schema

Using aggregates (SUM, AVG, COUNT)

Filtering & sorting with WHERE, ORDER BY, LIMIT

Performing GROUP BY analysis

Exploring Joins across multiple tables

⚡ Suggestions for Enhancement

Add an ER Diagram (Lucidchart, dbdiagram.io, or draw.io)

Include sample outputs/screenshots of queries

Add advanced queries (e.g., window functions, CTEs)

Extend dataset with more customers & sales trends for deeper analysis

🤝 Contributing

Want to add more queries or improve the dataset? Fork the repo and raise a PR 🚀

📬 Contact

👩‍💻 Your Name
🔗 LinkedIn
 | GitHub