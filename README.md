# 🗄️ Data Digger

### A Practical MySQL E-Commerce Database & SQL Query Project

<p align="center">
  <img src="https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/Language-SQL-336791?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL">
  <img src="https://img.shields.io/badge/Operations-CRUD-6C63FF?style=for-the-badge" alt="CRUD">
  <img src="https://img.shields.io/badge/Project-Academic-F39C12?style=for-the-badge" alt="Academic Project">
</p>

<p align="center">
  <strong>📚 BCA Final Year</strong> •
  <strong>📊 Data Analysis Course</strong> •
  <strong>👨‍💻 Developed by Chand Khimani</strong>
</p>

<p align="center">
  <strong>🎓 Guided by Prof. Girish Gondaliya</strong>
</p>

---

## 📌 Table of Contents

- [🌟 Project Overview](#-project-overview)
- [🎯 Project Objectives](#-project-objectives)
- [🏗️ Database Architecture](#️-database-architecture)
- [🔗 Relationship Flow](#-relationship-flow)
- [🧩 Database Schema](#-database-schema)
- [🧠 SQL Concepts Demonstrated](#-sql-concepts-demonstrated)
- [📋 Query Coverage](#-query-coverage)
- [📊 Sample Analysis Results](#-sample-analysis-results)
- [🛠️ Technologies Used](#️-technologies-used)
- [🚀 How to Run](#-how-to-run)
- [📁 Repository Structure](#-repository-structure)
- [📸 Project Screenshots](#-project-screenshots)
- [🧠 Learning Outcomes](#-learning-outcomes)
- [✨ Key Highlights](#-key-highlights)
- [🎓 Academic Information](#-academic-information)
- [🙏 Acknowledgement](#-acknowledgement)

---

## 🌟 Project Overview

**Data Digger** is a practical **MySQL database project** based on an **E-Commerce Store** scenario.

The project demonstrates how relational data can be:

- 🗄️ Stored in structured tables
- 🔗 Connected through primary and foreign keys
- ✏️ Inserted, updated, and deleted using SQL
- 🔎 Filtered and sorted for specific requirements
- 📊 Aggregated for basic analysis
- 💡 Used to derive useful information from an E-Commerce dataset

### 🧱 Core Tables

| # | Table | Purpose |
|---|---|---|
| 01 | 👥 `Customers` | Stores customer information |
| 02 | 🧾 `Orders` | Stores customer order information |
| 03 | 🛍️ `Products` | Stores product and inventory information |
| 04 | 📦 `OrderDetails` | Connects orders with products and stores quantity/subtotal information |

> 🎯 **Project Goal:** Build a structured relational database and use SQL queries to perform real-world E-Commerce data operations and derive useful information from the stored data.

---

## 🎯 Project Objectives

This project provides hands-on practice with the following areas:

| Area | Concepts Covered |
|---|---|
| 🗄️ Database | `CREATE DATABASE`, `USE`, `SELECT DATABASE()` |
| 🏗️ Table Design | `CREATE TABLE`, data types, constraints |
| 🔑 Keys | Primary Keys, Foreign Keys |
| ✏️ CRUD | `INSERT`, `SELECT`, `UPDATE`, `DELETE` |
| 🔍 Filtering | `WHERE`, `BETWEEN` |
| ↕️ Sorting | `ORDER BY ... DESC` |
| 📅 Date Operations | `CURDATE()`, `INTERVAL` |
| 📊 Aggregation | `SUM()`, `MAX()`, `MIN()`, `AVG()`, `COUNT()` |
| 📦 Group Analysis | `GROUP BY`, `LIMIT` |
| 🔗 Relationships | Customer → Order → OrderDetails → Product |

---

## 🏗️ Database Architecture

```text
                         ┌──────────────────────┐
                         │     DATA DIGGER      │
                         │   E-COMMERCE DB      │
                         └──────────┬───────────┘
                                    │
              ┌─────────────────────┼─────────────────────┐
              │                     │                     │
              ▼                     ▼                     ▼
       ┌─────────────┐       ┌─────────────┐       ┌─────────────┐
       │  CUSTOMERS  │       │   ORDERS    │       │  PRODUCTS   │
       ├─────────────┤       ├─────────────┤       ├─────────────┤
       │ CustomerID  │       │ OrderID     │       │ ProductID   │
       │ Name        │       │ CustomerID  │       │ ProductName │
       │ Email       │       │ OrderDate   │       │ Price       │
       │ Address     │       │ TotalAmount │       │ Stock       │
       └──────┬──────┘       └──────┬──────┘       └──────┬──────┘
              │                     │                     │
              │                     │                     │
              │              ┌──────▼─────────────────────┘
              │              │
              │       ┌──────▼──────────────┐
              └──────►│    ORDERDETAILS     │
                      ├─────────────────────┤
                      │ OrderDetailID       │
                      │ OrderID             │
                      │ ProductID           │
                      │ Quantity            │
                      │ SubTotal            │
                      └─────────────────────┘
```

### 🔑 Key Relationship Logic

```text
Customers
    │
    │ CustomerID
    ▼
Orders
    │
    │ OrderID
    ▼
OrderDetails
    │
    │ ProductID
    ▼
Products
```

**Relationship meaning:**

- `Customers.CustomerID` → `Orders.CustomerID`
- `Orders.OrderID` → `OrderDetails.OrderID`
- `Products.ProductID` → `OrderDetails.ProductID`

These relationships connect customers, orders, order details, and products into a relational E-Commerce structure.

---

## 🧩 Database Schema

### 1️⃣ Customers

| Field | Data Type | Key |
|---|---|---|
| `CustomerID` | `INT` | 🔑 Primary Key |
| `Name` | `VARCHAR(100)` | — |
| `Email` | `VARCHAR(100)` | — |
| `Address` | `VARCHAR(255)` | — |

**Operations performed**

- ➕ Inserted 5 sample customers
- 📋 Retrieved all customer details
- ✏️ Updated a customer's address
- 🗑️ Deleted a customer using `CustomerID`
- 🔎 Retrieved customers whose name is **Alice**

---

### 2️⃣ Orders

| Field | Data Type | Key |
|---|---|---|
| `OrderID` | `INT` | 🔑 Primary Key |
| `CustomerID` | `INT` | 🔗 Foreign Key |
| `OrderDate` | `DATE` | — |
| `TotalAmount` | `DECIMAL(10,2)` | — |

**Operations performed**

- ➕ Inserted 5 sample orders
- 🔎 Retrieved orders for a specific customer
- ✏️ Updated an order's total amount
- 🗑️ Deleted an order using `OrderID`
- 📅 Retrieved orders from the last 30 days
- 📊 Calculated highest, lowest, and average order amounts

---

### 3️⃣ Products

| Field | Data Type | Key |
|---|---|---|
| `ProductID` | `INT` | 🔑 Primary Key |
| `ProductName` | `VARCHAR(100)` | — |
| `Price` | `DECIMAL(10,2)` | — |
| `Stock` | `INT` | — |

**Operations performed**

- ➕ Inserted 5 sample products
- ↕️ Sorted products by price in descending order
- ✏️ Updated a product price
- 🗑️ Deleted products where `Stock = 0`
- 💰 Retrieved products priced between **₹500 and ₹2000**
- 📊 Retrieved maximum and minimum product prices

---

### 4️⃣ OrderDetails

| Field | Data Type | Key |
|---|---|---|
| `OrderDetailID` | `INT` | 🔑 Primary Key |
| `OrderID` | `INT` | 🔗 Foreign Key |
| `ProductID` | `INT` | 🔗 Foreign Key |
| `Quantity` | `INT` | — |
| `SubTotal` | `DECIMAL(10,2)` | — |

**Operations performed**

- ➕ Inserted 5 sample order-detail records
- 🔎 Retrieved details for a specific order
- 💰 Calculated total revenue using `SUM()`
- 🏆 Retrieved the top 3 most ordered products
- 🔢 Counted how many times a specific product was sold

---

## 🧠 SQL Concepts Demonstrated

### 🟦 DDL — Data Definition Language

Used for defining the database structure.

```sql
CREATE DATABASE
CREATE TABLE
```

### 🟩 DML — Data Manipulation Language

Used for modifying table data.

```sql
INSERT
UPDATE
DELETE
```

### 🟨 DQL — Data Query Language

Used for retrieving data.

```sql
SELECT
```

### 🟪 Constraints

Used to maintain relationships and data integrity.

```sql
PRIMARY KEY
FOREIGN KEY
```

### 🟥 Query & Analysis Techniques

```sql
WHERE
BETWEEN
ORDER BY
GROUP BY
LIMIT
SUM()
MAX()
MIN()
AVG()
COUNT()
CURDATE()
INTERVAL
```

---

## 📋 Query Coverage

| Module | Area | Assigned Operations |
|---|---|---:|
| 01 | 👥 Customers | 5 |
| 02 | 🧾 Orders | 6 |
| 03 | 🛍️ Products | 6 |
| 04 | 📦 OrderDetails | 5 |
| **—** | **Total** | **22** |

> 📌 The project covers **22 assigned SQL operations** across four relational tables.

---

## 📊 Sample Analysis Results

The submitted SQL execution demonstrates the following results:

| Analysis | Demonstrated Result |
|---|---:|
| 💰 Highest Order Amount | ₹3,200.00 |
| 💰 Lowest Order Amount | ₹1,800.00 |
| 📊 Average Order Amount | ₹2,375.00 |
| 💵 Total Revenue from OrderDetails | ₹100,500.00 |
| 🥇 Top Ordered Product ID | `203` |
| 🔢 Quantity for Top Product | `5` |
| 🔎 Product ID `203` Times Sold | `2` |
| 💎 Most Expensive Product Price | ₹60,000.00 |
| 🪙 Cheapest Product Price | ₹800.00 |

> 📌 These values reflect the sample records and SQL execution included in this project.

---

## 🛠️ Technologies Used

| Technology / Concept | Purpose |
|---|---|
| 🐬 **MySQL** | Relational database management |
| 💻 **SQL** | Database creation and querying |
| 🔑 **Primary & Foreign Keys** | Relationships and data integrity |
| 📊 **Aggregate Functions** | Basic data analysis |
| 🧮 **SQL Clauses & Operators** | Filtering, sorting, grouping, and analysis |

---

## 🚀 How to Run

### 1. 🐬 Open MySQL

Use any compatible MySQL environment, such as:

- MySQL Command Line Client
- MySQL Workbench
- XAMPP / compatible MySQL environment

### 2. 📄 Open the SQL File

Open:

```text
project-1.sql
```

### 3. 🗄️ Create and Select the Database

The script creates and selects:

```sql
CREATE DATABASE data_digger;
USE data_digger;
```

### 4. ▶️ Execute the SQL Statements

Run the statements from `project-1.sql` in the intended sequence.

### 5. 🔍 Verify the Active Database

```sql
SELECT DATABASE();
```

Expected database:

```text
data_digger
```

### ⚠️ Execution Note

The following columns are defined as foreign keys:

- `Orders.CustomerID`
- `OrderDetails.OrderID`
- `OrderDetails.ProductID`

Therefore, the referenced parent records must exist before dependent records are inserted. Execute the SQL script in the intended sequence to preserve referential integrity.

---

## 📁 Repository Structure

```text
📦 Data-Digger
│
├── 📄 README.md
├── 🗄️ project-1.sql
│
└── 📸 screenshots/
    ├── 01-database-created.png
    ├── 02-customers-table.png
    ├── 03-customer-insert.png
    ├── 04-customer-retrieval.png
    ├── 05-customer-update.png
    ├── 06-customer-delete.png
    ├── 07-orders-table.png
    ├── 08-orders-analysis.png
    ├── 09-products-table.png
    ├── 10-products-analysis.png
    ├── 11-orderdetails-table.png
    └── 12-revenue-analysis.png
```

> 💡 The screenshot filenames above are the recommended organization from the project documentation. Add the actual image files to the repository before using the corresponding screenshot section below.

---

## 📸 Project Screenshots

### 🗄️ Database Creation

Add the actual MySQL output screenshot here.

### 👥 Customers Table

Add the actual MySQL output screenshot here.

### 🧾 Orders Table

Add the actual MySQL output screenshot here.

### 🛍️ Products Table

Add the actual MySQL output screenshot here.

### 📦 OrderDetails Table

Add the actual MySQL output screenshot here.

### 📊 Aggregate & Revenue Analysis

Add the actual MySQL output screenshot here.

### 🏆 Top 3 Most Ordered Products

Add the actual MySQL output screenshot here.

---

## 🧠 Learning Outcomes

By completing **Data Digger**, the following SQL skills are practiced:

- ✅ Designing a relational database
- ✅ Creating tables with appropriate data types
- ✅ Applying primary-key constraints
- ✅ Establishing foreign-key relationships
- ✅ Performing CRUD operations
- ✅ Filtering records using `WHERE`
- ✅ Sorting records using `ORDER BY`
- ✅ Filtering ranges using `BETWEEN`
- ✅ Working with date intervals
- ✅ Applying aggregate functions
- ✅ Grouping and ranking data
- ✅ Performing basic E-Commerce data analysis
- ✅ Understanding relational database integrity

---

## ✨ Key Highlights

```text
┌──────────────────────────────────────────────────────┐
│                  DATA DIGGER                         │
├──────────────────────────────────────────────────────┤
│ 🏪 E-Commerce database scenario                     │
│ 🗂️  4 connected relational tables                   │
│ 🔑 Primary & Foreign Key relationships              │
│ ✏️  CRUD-based data manipulation                    │
│ 📋 22 assigned SQL operations                       │
│ 📊 Aggregate-function analysis                      │
│ 💵 Revenue & product-order analysis                 │
│ 🔍 Filtering, sorting, grouping & date queries      │
│ 🧱 GitHub-ready project organization                │
└──────────────────────────────────────────────────────┘
```

---

## 🎓 Academic Information

| Detail | Information |
|---|---|
| 👨‍💻 Student | **Chand Khimani** |
| 🎓 Program | **BCA — Final Year** |
| 📊 Current Course | **Data Analysis** |
| 👨‍🏫 Guide | **Prof. Girish Gondaliya** |
| 🗂️ Project | **Data Digger** |
| 🗄️ Database | **MySQL** |
| 🏪 Domain | **E-Commerce Store** |

---

## 🌱 What This Project Represents

> **Data Digger is more than a collection of SQL queries — it is practical work with structured relational data.**

The project provides a foundation for understanding how data is:

**Stored → Connected → Manipulated → Queried → Analyzed**

These concepts are relevant to:

- 📊 Data Analysis
- 💻 Software Development
- 🗄️ Backend Systems
- 📈 Business Intelligence
- 🔎 Data-Driven Applications

---

## 🙏 Acknowledgement

I sincerely thank **Prof. Girish Gondaliya** for the guidance and support provided throughout this practical project.

This project helped strengthen practical understanding of:

**SQL • MySQL • Relational Database Design • CRUD Operations • Data Analysis**

---

## 💬 Project Philosophy

> **Every query is a question.**  
> **Every result is an insight.**  
> **Every project is a step forward.**

---

<p align="center">
  <strong>💻 Built with SQL & Curiosity</strong><br>
  <strong>📊 Driven by Data</strong><br>
  <strong>🚀 Created by Chand Khimani</strong>
</p>

<p align="center">
  ⭐ <strong>Thank you for visiting Data Digger!</strong> ⭐
</p>

<p align="center">
  🌸 <em>Dream • Learn • Practice • Create • Repeat</em> 🌸
</p>
