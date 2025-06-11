-- Create Database (if not already done, and connect to it)
-- CREATE DATABASE ecommerceStore;
-- \c ecommerceStore; -- Use this in psql to connect

DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS categories;

--- Creating tables ---
--- products, categories, customers and orders, orders and orderItems. ---

---  categories table
CREATE TABLE categories(
    category_ID SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description TEXT
);

--- customers table
CREATE TABLE customers(
    customer_ID SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    shipping_address TEXT,
    billing_address TEXT,
    registration_date DATE DEFAULT CURRENT_DATE
);

--- products table
CREATE TABLE products(
    product_ID SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    item_description TEXT,
    price DECIMAL(10, 2) NOT NULL DEFAULT 0 CHECK (price >= 0),
    stock_quantity  CHECK (stock_quantity >= 0),
    category_ID INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    CONSTRAINT fk_category
        FOREIGN KEY (category_ID) REFERENCES categories(category_ID)
        ON DELETE RESTRICT
);

--- orders table
CREATE TABLE orders(
    order_ID SERIAL PRIMARY KEY,
    customer_ID INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) DEFAULT 0 CHECK (total_amount >= 0),
    status VARCHAR(50) NOT NULL DEFAULT 'Pending' CHECK (status IN ('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled')),
    shipping_address TEXT NOT NULL
    CONSTRAINT fk_customer
        FOREIGN KEY(customer_ID) REFERENCES customers(customer_ID)
        ON DELETE RESTRICT

);

--- orderedItems table
CREATE TABLE order_items(
    order_item_ID SERIAL PRIMARY KEY,
    order_ID INT NOT NULL,
    product_ID INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10, 2) NOT NULL CHECK (unit_price >= 0)
    CONSTRAINT fk_order
        FOREIGN KEY (order_ID)
        REFERENCES orders(order_ID)
        ON DELETE CASCADE, 
    CONSTRAINT fk_product
        FOREIGN KEY (product_ID)
        REFERENCES products(product_ID)
        ON DELETE RESTRICT);

