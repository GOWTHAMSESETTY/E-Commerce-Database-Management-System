USE ecommerce_database;

-- 1. Display all customers
SELECT *
FROM customers;


-- 2. Display active customers
SELECT *
FROM customers
WHERE status = 'active';


-- 3. Display all products
SELECT *
FROM products;


-- 4. Display products with price greater than 5000
SELECT product_name, price
FROM products
WHERE price > 5000;


-- 5. Display products from highest to lowest price
SELECT product_name, price
FROM products
ORDER BY price DESC;


-- 6. Display the 5 highest-priced products
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 5;


-- 7. Display products with stock less than 20
SELECT product_id, stock_quantity
FROM inventory
WHERE stock_quantity < 20;


-- 8. Display delivered orders
SELECT order_number, total_amount, order_status
FROM orders
WHERE order_status = 'delivered';


-- 9. Display orders from highest to lowest amount
SELECT order_number, total_amount
FROM orders
ORDER BY total_amount DESC;


-- 10. Display the 5 most recent orders
SELECT order_number, order_date
FROM orders
ORDER BY order_date DESC
LIMIT 5;