drop database if exists Ecommerce;
create database if not exists Ecommerce;
select database();
use Ecommerce;

-- Customers table
CREATE TABLE Ecommerce.Customers(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(10),
    join_date DATE
);

INSERT INTO Ecommerce.Customers (customer_id, first_name, last_name, city, state, join_date)
VALUES
(101, 'Ananya', 'Sharma', 'Mumbai', 'MH', '2021-05-12'),
(102, 'Rohan', 'Patel', 'Pune', 'MH', '2021-06-18'),
(103, 'Sneha', 'Iyer', 'Delhi', 'DL', '2022-01-05'),
(104, 'Arjun', 'Verma', 'Bangalore', 'KA', '2022-03-22'),
(105, 'Priya', 'Nair', 'Chennai', 'TN', '2022-07-15'),
(106, 'Kabir', 'Rao', 'Hyderabad', 'TS', '2021-11-02'),
(107, 'Meera', 'Kulkarni', 'Nagpur', 'MH', '2022-08-20'),
(108, 'Aditya', 'Menon', 'Kochi', 'KL', '2022-09-10'),
(109, 'Neha', 'Singh', 'Lucknow', 'UP', '2021-12-15'),
(110, 'Vikram', 'Joshi', 'Indore', 'MP', '2022-04-01'),
(111, 'Kiran', 'Das', 'Kolkata', 'WB', '2021-07-19'),
(112, 'Pooja', 'Reddy', 'Hyderabad', 'TS', '2022-05-05'),
(113, 'Amit', 'Gupta', 'Jaipur', 'RJ', '2022-06-09'),
(114, 'Riya', 'Chopra', 'Delhi', 'DL', '2022-02-14'),
(115, 'Dev', 'Mishra', 'Patna', 'BR', '2022-03-30');

select * from Ecommerce.Customers;

-- Product table
CREATE TABLE Ecommerce.Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price INT
);

INSERT INTO Ecommerce.Products (product_id, product_name, category, price)
VALUES
(201, 'Laptop', 'Electronics', 55000),
(202, 'Smartphone', 'Electronics', 25000),
(203, 'Headphones', 'Accessories', 3000),
(204, 'Office Chair', 'Furniture', 8000),
(205, 'Water Bottle', 'Lifestyle', 500),
(206, 'Tablet', 'Electronics', 18000),
(207, 'Smartwatch', 'Electronics', 12000),
(208, 'Keyboard', 'Accessories', 1500),
(209, 'Mouse', 'Accessories', 1000),
(210, 'Monitor', 'Electronics', 22000),
(211, 'Bookshelf', 'Furniture', 6000),
(212, 'Sofa', 'Furniture', 35000),
(213, 'Backpack', 'Lifestyle', 2000),
(214, 'Shoes', 'Lifestyle', 3000),
(215, 'Power Bank', 'Accessories', 2500);

select * from Ecommerce.Products;

-- Order table
CREATE TABLE Ecommerce.Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Ecommerce.Orders (order_id, customer_id, order_date, total_amount)
VALUES
(301, 101, '2022-08-10', 55000),
(302, 102, '2022-08-12', 28000),
(303, 103, '2022-09-05', 3000),
(304, 104, '2022-09-07', 8500),
(305, 105, '2022-09-10', 25500),
(306, 106, '2022-09-12', 18000),
(307, 107, '2022-09-15', 12000),
(308, 108, '2022-09-18', 1500),
(309, 109, '2022-09-20', 22000),
(310, 110, '2022-09-22', 6000),
(311, 111, '2022-09-25', 35000),
(312, 112, '2022-09-28', 2000),
(313, 113, '2022-09-30', 3000),
(314, 114, '2022-10-02', 2500),
(315, 115, '2022-10-05', 12000);

select * from Ecommerce.Orders;

-- Orders Item Table
CREATE TABLE Ecommerce.Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity)
VALUES
(401, 301, 201, 1),
(402, 302, 202, 1),
(403, 302, 203, 1),
(404, 303, 203, 1),
(405, 304, 204, 1),
(406, 305, 202, 1),
(407, 305, 205, 1),
(408, 306, 206, 1),
(409, 307, 207, 1),
(410, 308, 208, 1),
(411, 309, 210, 1),
(412, 310, 211, 1),
(413, 311, 212, 1),
(414, 312, 213, 1),
(415, 313, 214, 1);

/*
select * from ecommerce.order_items;
DELETE FROM ecommerce.order_items
WHERE order_item_id in (416,417,418,419,420);
*/

select * from Ecommerce.Order_Items;

-- SQL CASE STUDY QUESTIONS

-- 1.List all customers from Mumbai
SELECT * 
FROM Customers
WHERE city = 'Mumbai';

-- 2. Show the names of customers who joined in 2022
SELECT first_name, last_name, join_date
FROM Customers
WHERE YEAR(join_date) = 2022;

-- 3.Count how many customers are from Maharashtra (MH)
SELECT COUNT(*) AS total_customers_MH
FROM Customers
WHERE state = 'MH';

-- 4.Display customers sorted by the most recent join date
SELECT first_name, last_name, join_date
FROM Customers
ORDER BY join_date DESC limit 5;

-- 5.List all products with a price greater than 10,000
SELECT product_name, price
FROM Products
WHERE price > 10000;

-- 6. Show product names that belong to Electronics
SELECT product_name
FROM Products
WHERE category = 'Electronics';

-- 7. Find the cheapest product
SELECT product_name, price
FROM Products
ORDER BY price ASC
LIMIT 1;

-- 8.Count the number of products in each category
SELECT category, COUNT(*) AS total_products
FROM Products
GROUP BY category;

-- 9.List all orders placed in September 2022
SELECT *
FROM Orders
WHERE order_date BETWEEN '2022-09-01' AND '2022-09-30';

-- 10.Find the order with the highest total_amount
SELECT order_id, total_amount
FROM Orders
ORDER BY total_amount DESC
LIMIT 1;

-- 11.Show all orders placed by customer 102
SELECT *
FROM Orders
WHERE customer_id = 102;

-- 12.Show average order value (AOV) across all customers.
SELECT AVG(total_amount) AS avg_order_value
FROM Orders;

-- 13.Count how many orders were placed by each customer.
SELECT customer_id, COUNT(*) AS total_orders
FROM Orders
GROUP BY customer_id;

-- 14.Find total number of products purchased in order 305.
SELECT order_id, SUM(quantity) AS total_products
FROM Order_Items
WHERE order_id = 305
GROUP BY order_id;

-- 15.Find the total sales revenue across all orders.
SELECT SUM(total_amount) AS total_revenue
FROM Orders;

-- 16. Find the second highest order amount.
SELECT DISTINCT total_amount
FROM Orders
ORDER BY total_amount DESC
limit 1 offset 1;

-- 17.Count how many customers are from each state.
SELECT state, COUNT(*) AS total_customers
FROM Customers
GROUP BY state
ORDER BY total_customers DESC;

-- 18.Show all orders made by customer ‘Rohan Patel’.
SELECT o.order_id, o.order_date, o.total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.first_name = 'Rohan' AND c.last_name = 'Patel';















