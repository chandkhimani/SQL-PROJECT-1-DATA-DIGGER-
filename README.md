# 🛒 Data Digger --- SQL E-Commerce Database Project

```{=html}
<p align="center">
```
`<img src="https://img.shields.io/badge/MySQL-8.0%2B-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">`{=html}
`<img src="https://img.shields.io/badge/SQL-Relational%20Database-00758F?style=for-the-badge" alt="SQL">`{=html}
`<img src="https://img.shields.io/badge/Project-Data%20Digger-111827?style=for-the-badge" alt="Data Digger">`{=html}
`<img src="https://img.shields.io/badge/Status-Completed-2EA44F?style=for-the-badge" alt="Completed">`{=html}
```{=html}
</p>
```
```{=html}
<p align="center">
```
`<b>`{=html}A practical MySQL project for designing, managing, querying,
and analyzing an E-Commerce relational database.`</b>`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

## 📌 Project Overview

**Data Digger** is a practical SQL and MySQL project based on an
**E-Commerce Store database**.

The project focuses on building and working with a structured relational
database using core SQL concepts such as:

-   Database and table creation
-   Primary keys and foreign keys
-   CRUD operations
-   Data retrieval and filtering
-   Sorting and range conditions
-   Date-based queries
-   Aggregate functions
-   Grouping and limiting results
-   Relationships between multiple tables

The project is designed around four related tables: **Customers, Orders,
Products, and OrderDetails**.

------------------------------------------------------------------------

## 🎯 Project Objectives

The main objectives of this project are to:

1.  Design a structured relational database for an E-Commerce Store.
2.  Create and manage multiple related MySQL tables.
3.  Understand relationships using primary and foreign keys.
4.  Perform `INSERT`, `SELECT`, `UPDATE`, and `DELETE` operations.
5.  Use SQL clauses such as `WHERE`, `ORDER BY`, `BETWEEN`, `GROUP BY`,
    and `LIMIT`.
6.  Apply aggregate functions such as `SUM()`, `MAX()`, `MIN()`,
    `AVG()`, and `COUNT()`.
7.  Work with date-based conditions.
8.  Retrieve meaningful information from relational data.
9.  Demonstrate practical SQL query execution through a complete project
    workflow.

------------------------------------------------------------------------

## 👤 Project Information

  Detail                        Information
  ----------------------------- ------------------------
  **Project**                   Data Digger
  **Domain**                    E-Commerce Database
  **Database**                  MySQL
  **Language**                  SQL
  **Student**                   Chand Khimani
  **Academic Level**            BCA Final Year
  **Course / Learning Track**   Data Analysis
  **Guided By**                 Prof. Girish Gondaliya

------------------------------------------------------------------------

# 🏗️ Database Architecture

The database contains four relational tables:

``` text
                    ┌─────────────────────┐
                    │      CUSTOMERS      │
                    │─────────────────────│
                    │ PK CustomerID       │
                    │    Name             │
                    │    Email            │
                    │    Address          │
                    └──────────┬──────────┘
                               │
                               │ CustomerID
                               ▼
                    ┌─────────────────────┐
                    │       ORDERS        │
                    │─────────────────────│
                    │ PK OrderID          │
                    │ FK CustomerID       │
                    │    OrderDate        │
                    │    TotalAmount      │
                    └──────────┬──────────┘
                               │
                               │ OrderID
                               ▼
                    ┌─────────────────────┐
                    │    ORDERDETAILS     │
                    │─────────────────────│
                    │ PK OrderDetailID    │
                    │ FK OrderID          │
                    │ FK ProductID        │
                    │    Quantity         │
                    │    SubTotal         │
                    └──────────┬──────────┘
                               │
                               │ ProductID
                               ▼
                    ┌─────────────────────┐
                    │      PRODUCTS       │
                    │─────────────────────│
                    │ PK ProductID        │
                    │    ProductName      │
                    │    Price            │
                    │    Stock            │
                    └─────────────────────┘
```

### 🔗 Relationships

-   One customer can have multiple orders.
-   One order can contain multiple order details.
-   One product can appear in multiple order details.
-   `CustomerID`, `OrderID`, and `ProductID` connect the related tables.

------------------------------------------------------------------------

# 🗂️ Database Schema

## 1. Customers

  Column         Data Type        Key           Description
  -------------- ---------------- ------------- --------------------
  `CustomerID`   `INT`            Primary Key   Unique customer ID
  `Name`         `VARCHAR(50)`    ---           Customer name
  `Email`        `VARCHAR(100)`   ---           Customer email
  `Address`      `VARCHAR(100)`   ---           Customer address

## 2. Orders

  Column          Data Type         Key           Description
  --------------- ----------------- ------------- -------------------------------
  `OrderID`       `INT`             Primary Key   Unique order ID
  `CustomerID`    `INT`             Foreign Key   Customer who placed the order
  `OrderDate`     `DATE`            ---           Date of order
  `TotalAmount`   `DECIMAL(10,2)`   ---           Total order amount

## 3. Products

  Column          Data Type         Key           Description
  --------------- ----------------- ------------- -------------------
  `ProductID`     `INT`             Primary Key   Unique product ID
  `ProductName`   `VARCHAR(100)`    ---           Product name
  `Price`         `DECIMAL(10,2)`   ---           Product price
  `Stock`         `INT`             ---           Available stock

## 4. OrderDetails

  Column            Data Type         Key           Description
  ----------------- ----------------- ------------- ------------------------
  `OrderDetailID`   `INT`             Primary Key   Unique order-detail ID
  `OrderID`         `INT`             Foreign Key   Related order
  `ProductID`       `INT`             Foreign Key   Related product
  `Quantity`        `INT`             ---           Quantity ordered
  `SubTotal`        `DECIMAL(10,2)`   ---           Detail-level subtotal

------------------------------------------------------------------------

# 💾 Sample Database Data

## Customers

    CustomerID Name      Email               Address
  ------------ --------- ------------------- ----------
             1 Chand     Chand@gmail.com     Surat
             2 Shubham   Shubham@gmail.com   Surat
             3 Krisha    Krisha@gmail.com    Vadodara
             4 Paragti   Paragti@gmail.com   Mumbai
             5 Vipul     Vipul@gmail.com     Rajkot

## Orders

    OrderID   CustomerID OrderDate      TotalAmount
  --------- ------------ ------------ -------------
        101            1 2026-09-20         1800.00
        102            2 2026-09-21         2200.00
        103            3 2026-09-22          850.00
        104            4 2026-09-23         3200.00
        105            5 2026-09-24         1250.00

## Products

    ProductID ProductName        Price   Stock
  ----------- ------------- ---------- -------
            1 Laptop          55000.00      10
            2 Keyboard         1300.00      25
            3 Mouse             700.00      30
            4 Headphones       1800.00      15
            5 USB Cable         500.00       0

## OrderDetails

    OrderDetailID   OrderID   ProductID   Quantity   SubTotal
  --------------- --------- ----------- ---------- ----------
                1       101           1          1   55000.00
                2       101           2          2    2600.00
                3       102           3          3    2100.00
                4       103           4          1    1800.00
                5       104           2          1    1300.00

------------------------------------------------------------------------

# 🧠 SQL Operations Covered

This project demonstrates the following SQL operations and concepts:

### CRUD Operations

``` sql
INSERT
SELECT
UPDATE
DELETE
```

### Filtering & Conditions

``` sql
WHERE
BETWEEN
```

### Sorting & Result Control

``` sql
ORDER BY
LIMIT
```

### Grouping

``` sql
GROUP BY
```

### Aggregate Functions

``` sql
SUM()
MAX()
MIN()
AVG()
COUNT()
```

### Date Operations

``` sql
CURDATE()
DATE_SUB()
INTERVAL
```

### Database Relationships

``` text
PRIMARY KEY
FOREIGN KEY
```

------------------------------------------------------------------------

# 🧪 Required Queries Demonstrated

## Customers

### Retrieve all customers

``` sql
SELECT * FROM Customers;
```

### Update customer address

``` sql
UPDATE Customers
SET Address = 'Surat'
WHERE CustomerID = 2;
```

### Delete a customer

``` sql
DELETE FROM Customers
WHERE CustomerID = 5;
```

### Retrieve a customer by name

``` sql
SELECT * FROM Customers
WHERE Name = 'Alice';
```

> The query is included because it is part of the project requirement.
> The current sample dataset uses the project's actual customer names
> and therefore may return an empty result for `Alice`.

------------------------------------------------------------------------

## Orders

### Retrieve orders of a specific customer

``` sql
SELECT * FROM Orders
WHERE CustomerID = 1;
```

### Update an order amount

``` sql
UPDATE Orders
SET TotalAmount = 1800.00
WHERE OrderID = 101;
```

### Delete an order

``` sql
DELETE FROM Orders
WHERE OrderID = 105;
```

### Retrieve orders from the last 30 days

``` sql
SELECT * FROM Orders
WHERE OrderDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);
```

### Highest, lowest and average order amount

``` sql
SELECT
    MAX(TotalAmount) AS HighestAmount,
    MIN(TotalAmount) AS LowestAmount,
    AVG(TotalAmount) AS AverageAmount
FROM Orders;
```

------------------------------------------------------------------------

## Products

### Sort products by price

``` sql
SELECT * FROM Products
ORDER BY Price DESC;
```

### Update product price

``` sql
UPDATE Products
SET Price = 1300.00
WHERE ProductID = 2;
```

### Find out-of-stock products

``` sql
SELECT * FROM Products
WHERE Stock = 0;
```

### Delete an out-of-stock product

``` sql
DELETE FROM Products
WHERE Stock = 0;
```

### Products between ₹500 and ₹2000

``` sql
SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;
```

### Most expensive and cheapest product

``` sql
SELECT * FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products)
   OR Price = (SELECT MIN(Price) FROM Products);
```

------------------------------------------------------------------------

## OrderDetails

### Retrieve details of a specific order

``` sql
SELECT * FROM OrderDetails
WHERE OrderID = 101;
```

### Calculate total revenue

``` sql
SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;
```

### Top 3 most ordered products

``` sql
SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;
```

### Count sales of a specific product

``` sql
SELECT COUNT(*) AS TimesSold
FROM OrderDetails
WHERE ProductID = 2;
```

------------------------------------------------------------------------

# 📊 Example Data Flow

``` text
Customer places an Order
          │
          ▼
       Orders
          │
          ▼
    OrderDetails
          │
          ▼
       Products
```

This structure makes it possible to connect:

**Customer → Order → Ordered Product → Quantity → SubTotal**

and then perform useful SQL analysis on the stored data.

------------------------------------------------------------------------

# 📁 Recommended GitHub Repository Structure

``` text
Data-Digger/
│
├── README.md
│
└── data_digger.sql
```

### `data_digger.sql`

The SQL file should contain the complete executable project in logical
order:

``` text
1. CREATE DATABASE
2. USE DATABASE
3. CREATE Customers
4. INSERT Customers
5. Customers queries
6. CREATE Orders
7. INSERT Orders
8. Orders queries
9. CREATE Products
10. INSERT Products
11. Products queries
12. CREATE OrderDetails
13. INSERT OrderDetails
14. OrderDetails queries
```

------------------------------------------------------------------------

# 🚀 How to Run the Project

### 1. Install MySQL

Use MySQL Server and MySQL Command Line Client or MySQL Workbench.

### 2. Open MySQL

``` sql
mysql -u root -p
```

### 3. Create / select the database

``` sql
CREATE DATABASE data_digger;
USE data_digger;
```

### 4. Execute the SQL file

Run the queries from `data_digger.sql` in the correct order.

### 5. Verify tables

``` sql
SHOW TABLES;
```

Expected tables:

``` text
Customers
Orders
Products
OrderDetails
```

### 6. Verify table data

``` sql
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM OrderDetails;
```

------------------------------------------------------------------------

# 🛠️ Tools & Technologies

  Technology                           Purpose
  ------------------------------------ -------------------------------------
  **MySQL**                            Database management
  **SQL**                              Database queries
  **MySQL Command Line / Workbench**   Query execution
  **GitHub**                           Project hosting and version control
  **Markdown**                         Project documentation

------------------------------------------------------------------------

# 🎓 Learning Outcomes

Through this project, I practiced:

-   Designing a relational database
-   Creating related tables
-   Defining primary and foreign keys
-   Managing records with CRUD operations
-   Filtering and sorting data
-   Working with date conditions
-   Applying aggregate functions
-   Grouping records
-   Connecting related entities through foreign keys
-   Writing practical SQL queries for an E-Commerce scenario
-   Organizing a database project for GitHub

------------------------------------------------------------------------

# 🔍 Project Validation Checklist

-   [x] Database created
-   [x] Customers table created
-   [x] Orders table created
-   [x] Products table created
-   [x] OrderDetails table created
-   [x] Primary keys implemented
-   [x] Foreign keys implemented
-   [x] Sample customer records inserted
-   [x] Sample order records inserted
-   [x] Sample product records inserted
-   [x] Sample order-detail records inserted
-   [x] CRUD operations demonstrated
-   [x] Filtering demonstrated
-   [x] Sorting demonstrated
-   [x] Range query demonstrated
-   [x] Date query demonstrated
-   [x] Aggregate functions demonstrated
-   [x] Grouping demonstrated
-   [x] Top-3 query demonstrated
-   [x] GitHub documentation prepared

------------------------------------------------------------------------

# ⚠️ Project Note

This project follows the practical requirements provided for the **Data
Digger SQL project**.

The SQL queries are organized according to the assigned tasks, while the
sample records are maintained as a simple E-Commerce dataset for
demonstrating the required operations.

------------------------------------------------------------------------

# 🙏 Thank You

## A Big Thank You

I would like to sincerely thank **Prof. Girish Gondaliya Sir** for
providing the guidance, practical tasks, and learning direction required
to complete this SQL project.

Working on **Data Digger** gave me an opportunity to move beyond simply
learning SQL syntax and actually understand how a relational database is
designed, connected, queried, updated, and analyzed.

I am currently pursuing my **BCA Final Year** and learning **Data
Analysis** alongside my academic studies. This project is one more step
in building a stronger technical foundation and developing the practical
skills required for future work in data and technology.

A special thank you to everyone who contributed directly or indirectly
to my learning journey.

**Learn. Build. Analyze. Improve. Repeat.**

> *Every database starts with data, but the real value comes from
> knowing how to understand it.*

------------------------------------------------------------------------

```{=html}
<p align="center">
```
`<b>`{=html}Data Digger • MySQL • SQL • E-Commerce Database`</b>`{=html}
```{=html}
</p>
```
```{=html}
<p align="center">
```
Made with dedication by `<b>`{=html}Chand Khimani`</b>`{=html}
```{=html}
</p>
```
