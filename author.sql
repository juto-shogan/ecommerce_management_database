--- creating database ---
CREATE DATABASE ecommerceStore;

--- Use database --- 
USE DATABASE ecommerceStore;

--- Creaing tables ---
--- products, categories, customers and orders, orders and orderItems. ---
CREATE TABLE products(
    product_ID SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    item_description VARCHAR(255),
    price DECIMAL(10, 2),
    stock_quantity INT,
    category_ID INT,

);

CREATE TABLE categories(
    category_ID INT,
    product_type VARCHAR(50),
    item_description VARCHAR(255)
);

CREATE TABLE orders(
    customer_ID,
    customer_name,
    customerOrder,
    order_date DATE DEFAULT
);

CREATE TABLE customers(
    customer_ID SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    shipping_address INT(50),
    billing_address VARCHAR(50),
    registration_date DATE DEFAULT CURRENT_DATE,
);

CREATE TABLE orderedItems(
    item_ID SERIAL PRIMARY KEY,
    order_ID INT(),
    product_ID INT,
    quantity INT,
    unit_price DECIMAL(10, 2)
);



