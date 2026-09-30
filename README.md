# 🗄️ Data Digger --- SQL Database Project

```{=html}
<p align="center">
```
`<strong>`{=html}A structured MySQL database project covering Customers,
Orders, Products, and OrderDetails.`</strong>`{=html}
```{=html}
</p>
```
```{=html}
<p align="center">
```
`<img src="https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">`{=html}
`<img src="https://img.shields.io/badge/Language-SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white" alt="SQL">`{=html}
`<img src="https://img.shields.io/badge/Project-Data%20Digger-111827?style=for-the-badge" alt="Data Digger">`{=html}
`<img src="https://img.shields.io/badge/Level-Beginner%20%7C%20Intermediate-6B7280?style=for-the-badge" alt="Level">`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

## 👋 About This Project

**Data Digger** is a MySQL-based SQL practice and database-management
project created to demonstrate core relational database operations
through a connected set of tables.

The project is organized around four main entities:

-   👤 **Customers**
-   🧾 **Orders**
-   📦 **Products**
-   🛒 **OrderDetails**

It demonstrates how tables can be created, populated, queried, updated,
deleted, related through foreign keys, and analyzed using SQL aggregate
functions.

------------------------------------------------------------------------

## 🎓 Project Information

  Detail                     Information
  -------------------------- --------------------------
  👨‍💻 Student                 **Chand Khimani**
  🎓 Program                 **BCA --- Final Year**
  📊 Current Learning Area   **Data Analysis**
  👨‍🏫 Instructor              **Girish Gondaliya Sir**
  🗄️ Database                **MySQL**
  🏷️ Project Name            **Data Digger**

------------------------------------------------------------------------

# 🧭 Project Structure

``` text
data_digger
│
├── 👤 Customers
│   ├── CustomerID
│   ├── Name
│   ├── Email
│   └── Address
│
├── 🧾 Orders
│   ├── OrderID
│   ├── CustomerID ──────────┐
│   ├── OrderDate            │
│   └── TotalAmount          │
│                            │
├── 📦 Products              │
│   ├── ProductID            │
│   ├── ProductName          │
│   ├── Price                │
│   └── Stock                │
│                            │
└── 🛒 OrderDetails          │
    ├── OrderDetailID        │
    ├── OrderID ─────────────┘
    ├── ProductID ────────────→ Products
    ├── Quantity
    └── SubTotal
```

------------------------------------------------------------------------

# 🔗 Database Relationship

``` text
                    ┌──────────────────────┐
                    │      CUSTOMERS       │
                    ├──────────────────────┤
                    │ PK CustomerID        │
                    │    Name              │
                    │    Email             │
                    │    Address           │
                    └──────────┬───────────┘
                               │
                               │ CustomerID
                               │
                    ┌──────────▼───────────┐
                    │        ORDERS        │
                    ├──────────────────────┤
                    │ PK OrderID           │
                    │ FK CustomerID        │
                    │    OrderDate         │
                    │    TotalAmount       │
                    └──────────┬───────────┘
                               │
                               │ OrderID
                               │
                    ┌──────────▼───────────┐
                    │    ORDERDETAILS      │
                    ├──────────────────────┤
                    │ PK OrderDetailID     │
                    │ FK OrderID           │
                    │ FK ProductID         │
                    │    Quantity          │
                    │    SubTotal          │
                    └──────────┬───────────┘
                               │
                               │ ProductID
                               │
                    ┌──────────▼───────────┐
                    │       PRODUCTS       │
                    ├──────────────────────┤
                    │ PK ProductID         │
                    │    ProductName       │
                    │    Price             │
                    │    Stock             │
                    └──────────────────────┘
```

------------------------------------------------------------------------

# 🛠️ SQL Concepts Demonstrated

  Concept             Used In
  ------------------- ------------------------------
  `CREATE DATABASE`   Database setup
  `USE`               Selecting database
  `CREATE TABLE`      All four tables
  `DESC`              Table structure verification
  `INSERT INTO`       Adding records
  `SELECT`            Retrieving records
  `WHERE`             Filtering records
  `UPDATE`            Modifying records
  `DELETE`            Removing records
  `ORDER BY`          Sorting products
  `BETWEEN`           Price-range filtering
  `CURDATE()`         Recent-order filtering
  `INTERVAL`          30-day date calculation
  `MAX()`             Highest value
  `MIN()`             Lowest value
  `AVG()`             Average value
  `SUM()`             Total quantity / revenue
  `COUNT()`           Counting sales
  `GROUP BY`          Grouping product data
  `LIMIT`             Top 3 results
  Primary Key         Record identification
  Foreign Key         Table relationships

------------------------------------------------------------------------

# 🏗️ Database Setup

``` sql
CREATE DATABASE data_digger;

USE data_digger;

SELECT DATABASE();
```

Expected database:

``` text
data_digger
```

------------------------------------------------------------------------

# 👤 1. Customers

### Table Structure

``` sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

DESC Customers;
```

### Operations Covered

#### ① Insert at least 5 sample customers

``` sql
INSERT INTO Customers (CustomerID, Name, Email, Address)
VALUES
(1, 'Chand', 'Chand@gmail.com', 'Surat'),
(2, 'Shubham', 'Shubham@gmail.com', 'Ahmedabad'),
(3, 'Krisha', 'Krisha@gmail.com', 'Vadodara'),
(4, 'Paragti', 'Paragti@gmail.com', 'Rajkot'),
(5, 'Alice', 'Alice@gmail.com', 'Gandhinagar');
```

#### ② Retrieve all customer details

``` sql
SELECT * FROM Customers;
```

#### ③ Update a customer's address

``` sql
UPDATE Customers
SET Address = 'Surat'
WHERE CustomerID = 2;
```

#### ④ Delete a customer using CustomerID

``` sql
DELETE FROM Customers
WHERE CustomerID = 3;
```

------------------------------------------------------------------------

# 🧾 2. Orders

### Table Structure

``` sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

DESC Orders;
```

### Operations Covered

#### ① Insert at least 5 sample orders

``` sql
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, '2026-09-20', 2500.00),
(102, 2, '2026-09-21', 1500.00),
(103, 3, '2026-09-22', 3200.00),
(104, 4, '2026-09-25', 1800.00),
(105, 5, '2026-09-28', 4500.00);
```

#### ② Retrieve orders made by a specific customer

``` sql
SELECT *
FROM Orders
WHERE CustomerID = 1;
```

#### ③ Update an order's total amount

``` sql
UPDATE Orders
SET TotalAmount = 2000.00
WHERE OrderID = 102;
```

#### ④ Delete an order using OrderID

``` sql
DELETE FROM Orders
WHERE OrderID = 105;
```

#### ⑤ Retrieve orders placed in the last 30 days

``` sql
SELECT *
FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;
```

#### ⑥ Retrieve highest, lowest, and average order amount

``` sql
SELECT
    MAX(TotalAmount) AS Highest_Order_Amount,
    MIN(TotalAmount) AS Lowest_Order_Amount,
    AVG(TotalAmount) AS Average_Order_Amount
FROM Orders;
```

------------------------------------------------------------------------

# 📦 3. Products

### Table Structure

``` sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

DESC Products;
```

### Operations Covered

#### ① Insert at least 5 sample products

``` sql
INSERT INTO Products (ProductID, ProductName, Price, Stock)
VALUES
(201, 'Laptop', 55000.00, 10),
(202, 'Smartphone', 25000.00, 20),
(203, 'Headphones', 2500.00, 30),
(204, 'Keyboard', 1500.00, 25),
(205, 'Mouse', 800.00, 40);
```

#### ② Retrieve products sorted by price in descending order

``` sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

#### ③ Update the price of a specific product

``` sql
UPDATE Products
SET Price = 60000.00
WHERE ProductID = 201;
```

#### ④ Delete a product if it is out of stock

``` sql
DELETE FROM Products
WHERE Stock = 0;
```

#### ⑤ Retrieve products priced between ₹500 and ₹2000

``` sql
SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 2000;
```

#### ⑥ Retrieve the most expensive and cheapest price using MAX() and MIN()

``` sql
SELECT
    MAX(Price) AS Most_Expensive_Price,
    MIN(Price) AS Cheapest_Price
FROM Products;
```

------------------------------------------------------------------------

# 🛒 4. OrderDetails

### Table Structure

``` sql
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

DESC OrderDetails;
```

### Operations Covered

#### ① Insert at least 5 sample records

``` sql
INSERT INTO OrderDetails
(OrderDetailID, OrderID, ProductID, Quantity, SubTotal)
VALUES
(1, 101, 201, 1, 60000.00),
(2, 101, 203, 2, 5000.00),
(3, 102, 202, 1, 25000.00),
(4, 103, 204, 2, 3000.00),
(5, 104, 203, 3, 7500.00);
```

#### ② Retrieve all order details for a specific order

``` sql
SELECT *
FROM OrderDetails
WHERE OrderID = 101;
```

#### ③ Calculate total revenue using SUM()

``` sql
SELECT SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;
```

#### ④ Retrieve the top 3 most ordered products

``` sql
SELECT
    ProductID,
    SUM(Quantity) AS Total_Quantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Quantity DESC
LIMIT 3;
```

#### ⑤ Count how many times a specific product has been sold

``` sql
SELECT
    ProductID,
    COUNT(*) AS Times_Sold
FROM OrderDetails
WHERE ProductID = 203
GROUP BY ProductID;
```

------------------------------------------------------------------------

# 📊 Project Coverage

``` text
                 DATA DIGGER
                      │
        ┌─────────────┼─────────────┐
        │             │             │
     CREATE         CRUD        ANALYSIS
        │             │             │
        ▼             ▼             ▼
     Tables        INSERT       MAX / MIN
     Keys          SELECT       AVG
     Relations     UPDATE       SUM
                   DELETE       COUNT
                                GROUP BY
                                ORDER BY
                                LIMIT
```

------------------------------------------------------------------------

# 🔐 Database Design

The database uses **Primary Keys** to uniquely identify records and
**Foreign Keys** to connect related tables.

### Primary Keys

``` text
Customers      → CustomerID
Orders         → OrderID
Products       → ProductID
OrderDetails   → OrderDetailID
```

### Foreign Keys

``` text
Orders.CustomerID
        ↓
Customers.CustomerID

OrderDetails.OrderID
        ↓
Orders.OrderID

OrderDetails.ProductID
        ↓
Products.ProductID
```

This structure allows customer, order, product, and order-detail
information to be maintained as related relational data.

------------------------------------------------------------------------

# 🧪 Query Categories

### 🔎 Data Retrieval

``` sql
SELECT
WHERE
ORDER BY
BETWEEN
```

### ✏️ Data Modification

``` sql
INSERT
UPDATE
DELETE
```

### 📈 Data Analysis

``` sql
MAX()
MIN()
AVG()
SUM()
COUNT()
```

### 🧩 Data Grouping

``` sql
GROUP BY
LIMIT
```

### 📅 Date-Based Filtering

``` sql
CURDATE()
INTERVAL
```

------------------------------------------------------------------------

# 📁 Recommended Repository Structure

``` text
data-digger/
│
├── 📄 README.md
│
└── 🗄️ data_digger.sql
```

If the SQL is maintained in multiple files:

``` text
data-digger/
│
├── 📄 README.md
│
├── 📁 sql/
│   ├── 01_database.sql
│   ├── 02_customers.sql
│   ├── 03_orders.sql
│   ├── 04_products.sql
│   └── 05_orderdetails.sql
│
└── 📁 outputs/
    └── query-results.md
```

------------------------------------------------------------------------

# 🚀 How to Run

### 1️⃣ Open MySQL

Use MySQL Command Line Client or another MySQL-compatible SQL
environment.

### 2️⃣ Create the database

``` sql
CREATE DATABASE data_digger;
```

### 3️⃣ Select the database

``` sql
USE data_digger;
```

### 4️⃣ Execute the tables in dependency order

``` text
Customers
   ↓
Orders
   ↓
Products
   ↓
OrderDetails
```

This order ensures the referenced tables exist before their foreign-key
relationships are created.

### 5️⃣ Verify the database

``` sql
SELECT DATABASE();

SHOW TABLES;
```

Expected tables:

``` text
Customers
Orders
Products
OrderDetails
```

------------------------------------------------------------------------

# 📌 Learning Outcomes

Through this project, the following SQL/database concepts are practiced:

-   Relational database creation
-   Table design
-   Primary keys
-   Foreign keys
-   CRUD operations
-   Data filtering
-   Data sorting
-   Date-based queries
-   Aggregate functions
-   Grouping data
-   Top-N queries
-   Basic relational database design

------------------------------------------------------------------------

# 🎯 Project Objective

The main objective of **Data Digger** is to build practical confidence
with SQL by working with connected relational tables instead of isolated
examples.

The project moves from:

``` text
Database Creation
       ↓
Table Creation
       ↓
Data Insertion
       ↓
Data Retrieval
       ↓
Data Modification
       ↓
Data Deletion
       ↓
Filtering & Sorting
       ↓
Relationships
       ↓
Aggregate Analysis
```

------------------------------------------------------------------------

# 👨‍💻 Author

### Chand Khimani

**BCA --- Final Year \| Data Analysis Learner**

This project was created as part of practical SQL/database learning
under the guidance of **Girish Gondaliya Sir**.

------------------------------------------------------------------------

```{=html}
<p align="center">
```
`<strong>`{=html}🗄️ DATA DIGGER`</strong>`{=html}`<br>`{=html}
`<sub>`{=html}Turning raw data into structured information with
SQL.`</sub>`{=html}
```{=html}
</p>
```
