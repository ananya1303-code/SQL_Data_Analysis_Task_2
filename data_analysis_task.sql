-- Create Tables
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  city VARCHAR(50)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert Data
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Luca', 'Delhi'),
(2, 'Mylo', 'Mumbai'),
(3, 'Leo', 'Bangalore'),
(4, 'Nova', 'Hyderabad');

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-06-01', 200.00),
(102, 2, '2024-06-05', 150.00),
(103, 1, '2024-06-10', 100.00),
(104, 3, '2024-06-11', 250.00),
(105, 4, '2024-06-12', 300.00),
(106, 2, '2024-06-15', 200.00);

-- Query 1: Total spent by each customer (using CTE)
WITH customer_totals AS (
  SELECT customer_id, SUM(amount) AS total_spent
  FROM orders
  GROUP BY customer_id
)
SELECT c.customer_name, c.city, ct.total_spent
FROM customers c
JOIN customer_totals ct ON c.customer_id = ct.customer_id;

-- Query 2: Rank customers by total spending
SELECT 
  c.customer_name,
  SUM(o.amount) AS total_spent,
  RANK() OVER (ORDER BY SUM(o.amount) DESC) AS spending_rank
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;

-- Query 3: Running total of order amount by order date (using window function)
SELECT 
  o.order_id,
  c.customer_name,
  o.amount,
  o.order_date,
  SUM(o.amount) OVER (ORDER BY o.order_date) AS running_total
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Query 4: Customers who spent above average
SELECT customer_name
FROM customers
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  GROUP BY customer_id
  HAVING SUM(amount) > (
    SELECT AVG(total_amount)
    FROM (
      SELECT customer_id, SUM(amount) AS total_amount
      FROM orders
      GROUP BY customer_id
    ) AS subquery
  )
);
