--- Updating product stock levels after new order ---
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name = 'Laptop';
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Smartphone', 'Tablet');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Headphones', 'Smartwatch', 'Wireless Mouse', 'Keyboard', 'External Hard Drive');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Monitor', 'Printer', 'Webcam', 'Bluetooth Speaker');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Gaming Chair', 'USB-C Hub', 'VR Headset', 'Smart Home Hub');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Action Camera', 'E-Reader', 'Digital Camera', 'Gaming Console');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Smart TV', 'Laptop Stand', 'Portable Charger', 'Wireless Earbuds');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Gaming Mouse', 'Smart Thermostat', 'Fitness Tracker', 'Smart Light Bulb');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Bluetooth Adapter', 'HDMI Cable', 'Gaming Headset', 'Smart Lock');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Wireless Router', 'Digital Photo Frame', 'Action Camera Accessories');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Gaming Keyboard', 'Smart Speaker', 'Portable SSD', 'Wireless Charging Pad');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Smart Security Camera', 'Streaming Device', 'Smart Scale');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Digital Voice Recorder', 'Wireless Printer', 'Smart Air Purifier');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Gaming Monitor', 'Smart Refrigerator', 'Smart Washing Machine');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Smart Coffee Maker', 'Smart Vacuum Cleaner');
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_name IN ('Wireless Mouse', 'Keyboard', 'External Hard Drive', 'Monitor');
--- the above code is to update the stock quantity of products after an order is placed. ---

--- Calculating the total price of an order. ---
SELECT SUM(price) FROM products WHERE product_name IN ('Laptop', 'Smartphone');

-- Listing all products in a specific category. ---
SELECT * FROM products WHERE category_ID = 1;

-- Finding all orders placed by a specific customer. ---
SELECT * FROM orders WHERE customer_ID = 1;

-- Example inserts for order_items (adjust product_IDs and unit_price as needed)
INSERT INTO order_items (order_ID, product_ID, quantity, unit_price) VALUES
(1, 12, 1, 1200.00),
(2, 7, 1, 800.00),
(3, 23, 1, 200.00),
(4, 45, 1, 250.00),
(5, 18, 1, 300.00),
(6, 36, 1, 50.00),
(7, 29, 1, 100.00),
(8, 3, 1, 150.00),
(9, 41, 1, 600.00),
(10, 14, 1, 400.00),
(11, 27, 1, 80.00),
(12, 9, 1, 120.00),
(13, 38, 1, 300.00),
(14, 21, 1, 70.00),
(15, 5, 1, 500.00),
(16, 44, 1, 180.00),
(17, 16, 1, 350.00),
(18, 32, 1, 130.00),
(19, 2, 1, 900.00),
(20, 47, 1, 600.00),
(21, 19, 1, 220.00),
(22, 25, 1, 150.00),
(23, 6, 1, 340.00),
(24, 50, 1, 410.00),
(25, 11, 1, 275.00),
(26, 33, 1, 500.00),
(27, 8, 1, 320.00),
(28, 40, 1, 180.00),
(29, 24, 1, 210.00),
(30, 1, 1, 600.00),
(31, 46, 1, 130.00),
(32, 13, 1, 90.00),
(33, 35, 1, 75.00),
(34, 28, 1, 400.00),
(35, 4, 1, 250.00),
(36, 17, 1, 300.00),
(37, 31, 1, 120.00),
(38, 20, 1, 350.00),
(39, 43, 1, 180.00),
(40, 10, 1, 220.00),
(41, 22, 1, 500.00),
(42, 37, 1, 600.00),
(43, 15, 1, 130.00),
(44, 26, 1, 90.00),
(45, 34, 1, 75.00),
(46, 42, 1, 400.00),
(47, 30, 1, 250.00),
(48, 39, 1, 300.00),
(49, 48, 1, 120.00),
(50, 49, 1, 350.00),
(51, 7, 1, 180.00),
(52, 18, 1, 220.00),
(53, 12, 1, 500.00),
(54, 5, 1, 600.00),
(55, 23, 1, 130.00),
(56, 44, 1, 90.00),
(57, 36, 1, 75.00),
(58, 9, 1, 400.00),
(59, 21, 1, 250.00),
(60, 32, 1, 300.00),
(61, 14, 1, 120.00),
(62, 41, 1, 350.00),
(63, 27, 1, 180.00),
(64, 3, 1, 220.00),
(65, 38, 1, 500.00),
(66, 16, 1, 600.00),
(67, 2, 1, 130.00),
(68, 47, 1, 90.00),
(69, 19, 1, 75.00),
(70, 25, 1, 400.00),
(71, 6, 1, 250.00),
(72, 50, 1, 300.00),
(73, 11, 1, 120.00),
(74, 33, 1, 350.00),
(75, 8, 1, 180.00),
(76, 40, 1, 220.00),
(77, 24, 1, 500.00),
(78, 1, 1, 600.00),
(79, 46, 1, 130.00),
(80, 13, 1, 90.00),
(81, 35, 1, 75.00),
(82, 28, 1, 400.00),
(83, 4, 1, 250.00),
(84, 17, 1, 300.00),
(85, 31, 1, 120.00),
(86, 20, 1, 350.00),
(87, 43, 1, 180.00),
(88, 10, 1, 220.00),
(89, 22, 1, 500.00),
(90, 37, 1, 600.00),
(91, 15, 1, 130.00),
(92, 26, 1, 90.00),
(93, 34, 1, 75.00),
(94, 42, 1, 400.00),
(95, 30, 1, 250.00),
(96, 39, 1, 300.00),
(97, 48, 1, 120.00),
(98, 49, 1, 350.00),
(99, 7, 1, 180.00),
(100, 18, 1, 220.00);

-- Identifying the top-selling products. ---
SELECT product_ID, SUM(quantity) as total_sold
FROM order_items
GROUP BY product_ID
ORDER BY total_sold DESC;
-- 1. Increase stock for a product after restock
UPDATE products SET stock_quantity = stock_quantity + 10 WHERE product_name = 'Laptop';

-- 2. Change the price of a product
UPDATE products SET price = 999.99 WHERE product_name = 'Smartphone';

-- 3. Delete discontinued product
DELETE FROM products WHERE product_name = 'Old Model Tablet';

-- 4. Add a new product
INSERT INTO products (product_name, category_ID, price, stock_quantity) VALUES ('Noise Cancelling Headphones', 2, 199.99, 50);

-- 5. Update customer email
UPDATE customers SET email = 'newemail@example.com' WHERE customer_ID = 1;

-- 6. Remove an order
DELETE FROM orders WHERE order_ID = 10;

-- 7. Add a new order
INSERT INTO orders (order_ID, customer_ID, order_date, status) VALUES (101, 2, '2024-06-01', 'Pending');

-- 8. Update order status
UPDATE orders SET status = 'Shipped' WHERE order_ID = 5;

-- 9. Add an item to an order
INSERT INTO order_items (order_ID, product_ID, quantity, unit_price) VALUES (101, 12, 2, 1200.00);

-- 10. Remove an item from an order
DELETE FROM order_items WHERE order_ID = 5 AND product_ID = 18;

-- 11. Change product category
UPDATE products SET category_ID = 3 WHERE product_name = 'Smartwatch';

-- 12. Set all out-of-stock products to inactive
UPDATE products SET active = 0 WHERE stock_quantity = 0;
-- Find customers who have placed more than 5 orders and spent over $5000 in total
SELECT c.customer_ID, c.customer_name, COUNT(o.order_ID) AS total_orders, SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_ID = o.customer_ID
JOIN order_items oi ON o.order_ID = oi.order_ID
GROUP BY c.customer_ID, c.customer_name
HAVING COUNT(o.order_ID) > 5 AND SUM(oi.quantity * oi.unit_price) > 5000;

-- List products that have never been ordered
SELECT p.product_ID, p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_ID = oi.product_ID
WHERE oi.product_ID IS NULL;

-- Show the average order value per customer
SELECT c.customer_ID, c.customer_name, AVG(order_total) AS avg_order_value
FROM customers c
JOIN (
    SELECT o.order_ID, o.customer_ID, SUM(oi.quantity * oi.unit_price) AS order_total
    FROM orders o
    JOIN order_items oi ON o.order_ID = oi.order_ID
    GROUP BY o.order_ID, o.customer_ID
) order_summary ON c.customer_ID = order_summary.customer_ID
GROUP BY c.customer_ID, c.customer_name;
