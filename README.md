# Thuliinsta_db
A SQL Server relational database for managing customer hair product orders. Includes tables for customers, products, and orders, with seed data and sample queries for CRUD operations


# 💇 ThuliInstallation Database

A SQL Server-based relational database designed to manage customers, products, and order records for a hair product business. This project provides a clean schema with relevant relationships and sample data for quick setup and testing.

---

## 🛠️ Features

- **Customers Table:** Stores client information (name, email, phone number, city).
- **Products Table:** Maintains product catalog with name, length (inch), price, and stock.
- **Orders Table:** Records each customer's purchases with order date and total amount.

---

##Schema Overview

###customers
| Column       | Type         | Description             |
|--------------|--------------|-------------------------|
| cus_id       | `int`        | Primary Key (Identity)  |
| firstname    | `varchar(100)` | Customer's name        |
| email        | `varchar(100)` | Email address          |
| phone_number | `varchar(10)`  | Contact number         |
| city         | `varchar(15)`  | City of residence      |

---

###products
| Column    | Type             | Description             |
|-----------|------------------|-------------------------|
| prod_id   | `int`            | Primary Key (Identity)  |
| prod_name | `varchar(100)`   | Hair product name       |
| inch      | `int`            | Hair length (in inches) |
| price     | `decimal(10,2)`  | Product price (ZAR)     |
| stock     | `int`            | Available quantity      |

---

###orders
| Column      | Type             | Description                         |
|-------------|------------------|-------------------------------------|
| order_id    | `int`            | Primary Key (Identity)              |
| cus_id      | `int`            | Foreign Key referencing `customers` |
| orderdate   | `datetime`       | Defaults to current timestamp       |
| totalamount | `decimal(10,2)`  | Total order value                   |

---

##.Sample Data

### Customers
```sql
INSERT INTO customers(firstname, email, phone_number, city)
VALUES 
  ('Thulisile','thul@gmail.com','0739661774','Johannesburg'),
  ('Zizi','zee@gmail','0789441234','Durban');
