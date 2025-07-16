CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    quantity INT
);

INSERT INTO orders (order_id, customer_name, product, quantity) VALUES
(1, 'Alice', 'Laptop', 1),
(2, 'Bob', 'Laptop', 2),
(3, 'Alice', 'Keyboard', 3),
(4, 'Bob', 'Mouse', 1),
(5, 'Alice', 'Mouse', 1),
(6, 'Charlie', 'Keyboard', 1);

-- Write a query to find all customers who have ordered more than 2 total items, 
-- and show their name and total quantity.

select customer_name, sum(quantity) as total_quantity from orders group by customer_name having total_quantity > 2;


-- Q1. Total Quantity Ordered by Each Customer
select customer_name, sum(quantity) as total_quantity from orders group by customer_name;

-- product wise order count
select * from orders;
select product, count(quantity) as count_quantity from orders group by product;

SELECT customer_name, product, SUM(quantity) AS total_quantity
FROM orders
GROUP BY customer_name, product;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT customer_name, SUM(quantity) AS total, COUNT(*) AS orders
FROM orders
GROUP BY customer_name
HAVING SUM(quantity) > 2 AND COUNT(*) > 1;


