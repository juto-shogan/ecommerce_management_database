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

--- Calculating the total price of an order. ---
SELECT SUM(price) FROM products WHERE product_name IN ('Laptop', 'Smartphone');

-- Listing all products in a specific category. ---
SELECT * FROM products WHERE category_ID = 1;

-- Finding all orders placed by a specific customer. ---
SELECT * FROM orders WHERE customer_ID = 1;

-- Identifying the top-selling products. ---
SELECT product_name, SUM(quantity) as total_sold
FROM order_items
GROUP BY product_name
ORDER BY total_sold DESC;