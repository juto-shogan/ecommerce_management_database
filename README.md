# E-commerce Database Management

## Overview

This project sets up a foundational e-commerce database, demonstrating essential SQL skills for schema creation, data population, and manipulation within an online store context. The primary aim is to showcase proficiency in SQL, particularly with PostgreSQL.

The project is structured into three main SQL files, guiding you through the complete setup of the database.

## Database and Tools

-   Database Engine: PostgreSQL
-   SQL Client: pgAdmin4 (or any SQL-compatible RDBMS client)

## Project Structure

| File Name                 | Description                                                                 |
| :------------------------ | :-------------------------------------------------------------------------- |
| `1_schema_creation.sql`   | Creates the database schema, including tables for product categories, customers, orders, and order items, defining data types, keys, and constraints. |
| `2_data_seeding.sql`      | Inserts sample records into the created tables for testing and demonstration purposes. |
| `3_dml_queries.sql`       | Demonstrates various data manipulation language (DML) operations, including `SELECT`, `UPDATE`, `DELETE`, and `JOIN` queries. |

## Requirements

-   PostgreSQL installed and running.
-   A SQL client (e.g., pgAdmin4, DBeaver, `psql`) to connect to your PostgreSQL instance.

## Usage

1.  **Clone the Repository**

    ```bash
    git clone [https://github.com/your-username/ecommerce_database_management.git](https://github.com/your-username/ecommerce_database_management.git)
    cd ecommerce_database_management
    ```

2.  **Create a Database**

    ```sql
    CREATE DATABASE ecommerce_db;
    ```

3.  **Run SQL Scripts in Order**

    Execute the schema creation file:

    ```bash
    psql -d ecommerce_db -f 1_schema_creation.sql
    ```

    Insert sample data:

    ```bash
    psql -d ecommerce_db -f 2_data_seeding.sql
    ```

    Run manipulation queries:

    ```bash
    psql -d ecommerce_db -f 3_dml_queries.sql
    ```

## Key Features

-   Normalised relational database schema for an e-commerce platform.
-   Tables for `ProductCategories`, `Customers`, `Orders`, and `OrderItems`.
-   Enforced data integrity with primary and foreign keys.
-   Sample dataset for testing and learning.
-   Demonstration of relationships between products and categories, and customers and orders.
-   Showcase of various analysis queries.
-   - ![Alt text for EDR](images/EDR.png)


## Learning Objectives

-   Understand how to design a relational database schema for an online store.
-   Learn to insert and manage data using SQL for e-commerce entities.
-   Practice writing SQL queries for real-world e-commerce scenarios.
-   Gain experience with constraints, including `CHECK` constraints, and how to resolve constraint violations.
-   Appreciate the importance of proper structure planning before database implementation.

## Important Notes

-   The `2_data_seeding.sql` file contains a dummy dataset for demonstration purposes.
-   Scripts are numbered and must be executed in sequential order for the database to be set up correctly.
-   Contributions via Pull Requests are welcome.

## Author

Somto Mbonu

Aspiring Penetration Tester & Machine Learning Engineer
GitHub Profile: [https://github.com/juto-shogan/]
