# E-Commerce Database Management System

A MySQL database project designed to manage the core data and operations of an e-commerce application.

The project covers customers, products, categories, inventory, carts, orders, payments, shipments, reviews, wishlist, coupons, and returns.

## Project Overview

This project was developed to practice and demonstrate practical MySQL database concepts such as:

- Database and table design
- Primary keys and foreign keys
- Constraints
- One-to-many and one-to-one relationships
- Self-referencing relationships
- Composite unique constraints
- Data validation using CHECK constraints
- ENUM values
- JOINs and relational queries
- Sample data management


## Database Structure

The database contains 15 tables:

| Table | Purpose |
|---|---|
| `customers` | Stores customer information |
| `addresses` | Stores customer addresses |
| `categories` | Stores product categories and subcategories |
| `products` | Stores product details |
| `inventory` | Manages product stock |
| `carts` | Stores customer shopping carts |
| `cart_items` | Stores products added to carts |
| `orders` | Stores customer orders |
| `order_items` | Stores products included in orders |
| `payments` | Stores payment information |
| `shipments` | Stores shipping and delivery details |
| `reviews` | Stores customer product reviews |
| `wishlist` | Stores products added to customer wishlists |
| `coupons` | Stores discount coupon information |
| `returns` | Manages product return information |


## Database Relationships

The main relationships between the tables are:

- `customers` → `addresses` — One customer can have multiple addresses.
- `customers` → `carts` — A customer can have one cart.
- `customers` → `orders` — One customer can place multiple orders.
- `categories` → `products` — One category can contain multiple products.
- `categories` → `categories` — Categories support parent and child categories.
- `products` → `inventory` — Each product has one inventory record.
- `carts` → `cart_items` — One cart can contain multiple cart items.
- `products` → `cart_items` — A product can appear in multiple carts.
- `orders` → `order_items` — One order can contain multiple order items.
- `products` → `order_items` — A product can appear in multiple orders.
- `orders` → `payments` — Each order has one payment record.
- `orders` → `shipments` — Each order has one shipment record.
- `customers` → `reviews` — A customer can write multiple reviews.
- `products` → `reviews` — A product can have multiple reviews.
- `customers` → `wishlist` — A customer can have multiple wishlist entries.
- `products` → `wishlist` — A product can appear in multiple wishlists.
- `order_items` → `returns` — An order item can have one or more return records.


## Technologies Used

- MySQL 8.0
- MySQL Workbench
- SQL
- Git
- GitHub


## Project Structure

```text
E-Commerce-Database-Management-System/
│
├── queries/
│   └── 01_basic_queries.sql
│
├── sql/
│   ├── 01_schema.sql
│   └── 02_sample_data.sql
│
├── .gitignore
└── README.md
```

## Project Setup

### 1. Create the Database

Open MySQL Workbench and create a database:

```sql
CREATE DATABASE IF NOT EXISTS ecommerce_database;
USE ecommerce_database;
```

### 2. Create the Tables

Open `sql/01_schema.sql` in MySQL Workbench and execute the complete file.

This creates the 15 tables and their relationships.

### 3. Insert Sample Data

Open `sql/02_sample_data.sql` in MySQL Workbench and execute the complete file.

This inserts the sample data into the tables.

### 4. Verify the Tables

Run the following query in MySQL Workbench:

```sql
SHOW TABLES;
``` 

You should see all 15 tables in the result.

