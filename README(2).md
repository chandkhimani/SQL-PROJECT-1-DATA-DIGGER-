::: {align="center"}
# 🗄️ DATA DIGGER

### 🔎 A Practical MySQL E-Commerce Database & SQL Query Project

```{=html}
<p>
```
`<img src="https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">`{=html}
`<img src="https://img.shields.io/badge/Language-SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white" alt="SQL">`{=html}
`<img src="https://img.shields.io/badge/Operations-CRUD-6C63FF?style=for-the-badge" alt="CRUD">`{=html}
`<img src="https://img.shields.io/badge/Project-Academic-F39C12?style=for-the-badge" alt="Academic Project">`{=html}
```{=html}
</p>
```
```{=html}
<p>
```
`<b>`{=html}📚 BCA Final Year`</b>`{=html}  •  `<b>`{=html}📊 Data
Analysis Course`</b>`{=html}  •  `<b>`{=html}👩‍💻 Developed by Chand
Khimani`</b>`{=html}
```{=html}
</p>
```
```{=html}
<p>
```
`<b>`{=html}🎓 Guided by Prof. Girish Gondaliya`</b>`{=html}
```{=html}
</p>
```
:::

------------------------------------------------------------------------

## 🌟 Project Overview

**Data Digger** is a practical **MySQL database project** designed
around an **E-Commerce Store**. The project demonstrates how structured
relational data can be created, connected, manipulated, queried, and
analyzed using SQL.

The implementation works with four relational tables:

-   👥 **Customers**
-   🧾 **Orders**
-   🛍️ **Products**
-   📦 **OrderDetails**

The project focuses on practical SQL concepts including **database
creation, table design, primary keys, foreign keys, CRUD operations,
filtering, sorting, date-based queries, aggregate functions, grouping,
and analytical queries**.

> 🎯 **Project Goal:** Build a structured relational database and use
> SQL queries to perform real-world E-Commerce data operations and
> derive useful information from the stored data.

------------------------------------------------------------------------

## 🧭 Project Objective

The objective of **Data Digger** is to gain hands-on experience in:

  Area                 Concepts Covered
  -------------------- -----------------------------------------------
  🗄️ Database          `CREATE DATABASE`, `USE`, `SELECT DATABASE()`
  🏗️ Table Design      `CREATE TABLE`, data types, constraints
  🔑 Keys              Primary Keys & Foreign Keys
  ✏️ CRUD              `INSERT`, `SELECT`, `UPDATE`, `DELETE`
  🔍 Filtering         `WHERE`, `BETWEEN`
  ↕️ Sorting           `ORDER BY ... DESC`
  📅 Date Operations   `CURDATE()`, `INTERVAL`
  📊 Aggregation       `SUM()`, `MAX()`, `MIN()`, `AVG()`, `COUNT()`
  📦 Group Analysis    `GROUP BY`, `LIMIT`
  🔗 Relationships     Customer → Order → OrderDetails → Product

------------------------------------------------------------------------

# 🏛️ Database Architecture

``` text
                         🗄️ DATA_DIGGER
                              │
             ┌────────────────┼────────────────┐
             │                │                │
             ▼                ▼                ▼
       👥 CUSTOMERS      🧾 ORDERS       🛍️ PRODUCTS
             │                │                │
             │                │                │
             └───────┐        │        ┌───────┘
                     ▼        ▼        ▼
                       📦 ORDERDETAILS
                              │
                              ├── OrderID
                              └── ProductID
```

### 🔗 Relationship Flow

``` text
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

------------------------------------------------------------------------

# 🧩 Database Schema

## 1️⃣ Customers Table 👥

  Field          Data Type        Key
  -------------- ---------------- ----------------
  `CustomerID`   `INT`            🔑 Primary Key
  `Name`         `VARCHAR(100)`   ---
  `Email`        `VARCHAR(100)`   ---
  `Address`      `VARCHAR(255)`   ---

### Operations Performed

-   ➕ Inserted 5 sample customers
-   📋 Retrieved all customer details
-   ✏️ Updated a customer's address
-   🗑️ Deleted a customer using `CustomerID`
-   🔎 Retrieved customers whose name is **Alice**

------------------------------------------------------------------------

## 2️⃣ Orders Table 🧾

  Field           Data Type         Key
  --------------- ----------------- ----------------
  `OrderID`       `INT`             🔑 Primary Key
  `CustomerID`    `INT`             🔗 Foreign Key
  `OrderDate`     `DATE`            ---
  `TotalAmount`   `DECIMAL(10,2)`   ---

### Operations Performed

-   ➕ Inserted 5 sample orders
-   🔎 Retrieved orders for a specific customer
-   ✏️ Updated an order's total amount
-   🗑️ Deleted an order using `OrderID`
-   📅 Retrieved orders from the last 30 days
-   📊 Calculated highest, lowest, and average order amounts

------------------------------------------------------------------------

## 3️⃣ Products Table 🛍️

  Field           Data Type         Key
  --------------- ----------------- ----------------
  `ProductID`     `INT`             🔑 Primary Key
  `ProductName`   `VARCHAR(100)`    ---
  `Price`         `DECIMAL(10,2)`   ---
  `Stock`         `INT`             ---

### Operations Performed

-   ➕ Inserted 5 sample products
-   ↕️ Sorted products by price in descending order
-   ✏️ Updated a product price
-   🗑️ Deleted products where stock is `0`
-   💰 Retrieved products priced between **₹500 and ₹2000**
-   📊 Retrieved maximum and minimum product prices

------------------------------------------------------------------------

## 4️⃣ OrderDetails Table 📦

  Field             Data Type         Key
  ----------------- ----------------- ----------------
  `OrderDetailID`   `INT`             🔑 Primary Key
  `OrderID`         `INT`             🔗 Foreign Key
  `ProductID`       `INT`             🔗 Foreign Key
  `Quantity`        `INT`             ---
  `SubTotal`        `DECIMAL(10,2)`   ---

### Operations Performed

-   ➕ Inserted 5 sample order-detail records
-   🔎 Retrieved details for a specific order
-   💰 Calculated total revenue using `SUM()`
-   🏆 Retrieved the top 3 most ordered products
-   🔢 Counted how many times a specific product was sold

------------------------------------------------------------------------

# ⚙️ SQL Concepts Demonstrated

### 🟦 DDL --- Data Definition Language

``` sql
CREATE DATABASE
CREATE TABLE
```

### 🟩 DML --- Data Manipulation Language

``` sql
INSERT
UPDATE
DELETE
```

### 🟨 DQL --- Data Query Language

``` sql
SELECT
```

### 🟪 Constraints

``` sql
PRIMARY KEY
FOREIGN KEY
```

### 🟥 Query & Analysis Techniques

``` sql
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

------------------------------------------------------------------------

# 📌 Query Coverage

    \# Module                             Query Tasks
  ---- ----------------- ----------------------------
    01 👥 Customers                                 5
    02 🧾 Orders                                    6
    03 🛍️ Products                                  6
    04 📦 OrderDetails                              5
       **Total**           **22 assigned operations**

------------------------------------------------------------------------

# 📊 Sample Analysis Results

The submitted SQL execution includes the following demonstrated results:

  Analysis                               Demonstrated Result
  ------------------------------------ ---------------------
  💰 Highest Order Amount                          ₹3,200.00
  💰 Lowest Order Amount                           ₹1,800.00
  📊 Average Order Amount                          ₹2,375.00
  💵 Total Revenue from OrderDetails             ₹100,500.00
  🥇 Top Ordered Product ID                            `203`
  🔢 Quantity for Top Product                            `5`
  🔎 Product ID `203` Times Sold                         `2`
  💎 Most Expensive Product Price                 ₹60,000.00
  🪙 Cheapest Product Price                          ₹800.00

> 📌 These values reflect the sample records and the SQL execution
> included in this project.

------------------------------------------------------------------------

# 🛠️ Technologies Used

  Technology                       Purpose
  -------------------------------- ----------------------------------
  🐬 **MySQL**                     Relational database management
  💻 **SQL**                       Database creation and querying
  🔑 **Primary & Foreign Keys**    Data relationships and integrity
  📊 **Aggregate Functions**       Data analysis
  🧮 **SQL Operators & Clauses**   Filtering and sorting

------------------------------------------------------------------------

# 🚀 How to Run the Project

## 1️⃣ Install / Open MySQL

Use a MySQL environment such as:

-   MySQL Command Line Client
-   MySQL Workbench
-   XAMPP / compatible MySQL environment

## 2️⃣ Open the SQL File

Open:

``` text
project-1.sql
```

## 3️⃣ Execute the Database Setup

The script creates and selects:

``` sql
CREATE DATABASE data_digger;
USE data_digger;
```

## 4️⃣ Execute the SQL Statements

Run the statements in the provided SQL file in sequence.

## 5️⃣ Verify the Database

Use:

``` sql
SELECT DATABASE();
```

Expected database:

``` text
data_digger
```

> ⚠️ **Execution Note:** The `Orders.CustomerID`,
> `OrderDetails.OrderID`, and `OrderDetails.ProductID` columns are
> defined as foreign keys. Therefore, referenced parent records must
> exist when dependent records are inserted. Execute the script in the
> intended sequence and preserve referential integrity.

------------------------------------------------------------------------

# 📁 Recommended GitHub Repository Structure

``` text
📦 Data-Digger
│
├── 📄 README.md
├── 🗄️ project-1.sql
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

------------------------------------------------------------------------

# 📸 Project Screenshots

Add your actual MySQL output screenshots inside a `screenshots/` folder.

### 🗄️ Database Creation

> 📷 Add screenshot here

### 👥 Customers Table

> 📷 Add screenshot here

### 🧾 Orders Table

> 📷 Add screenshot here

### 🛍️ Products Table

> 📷 Add screenshot here

### 📦 OrderDetails Table

> 📷 Add screenshot here

### 📊 Aggregate & Revenue Analysis

> 📷 Add screenshot here

### 🏆 Top 3 Most Ordered Products

> 📷 Add screenshot here

------------------------------------------------------------------------

# 🧠 Learning Outcomes

By completing **Data Digger**, the following SQL skills are practiced:

-   ✅ Designing a relational database
-   ✅ Creating tables with appropriate data types
-   ✅ Applying primary-key constraints
-   ✅ Establishing foreign-key relationships
-   ✅ Performing complete CRUD operations
-   ✅ Filtering records using `WHERE`
-   ✅ Sorting records using `ORDER BY`
-   ✅ Filtering ranges using `BETWEEN`
-   ✅ Working with date intervals
-   ✅ Applying aggregate functions
-   ✅ Grouping and ranking data
-   ✅ Performing basic E-Commerce data analysis
-   ✅ Understanding relational database integrity

------------------------------------------------------------------------

# 💡 Key Highlights

``` text
🔹 Practical E-Commerce database scenario
🔹 Four connected relational tables
🔹 CRUD-based data manipulation
🔹 Primary & Foreign Key implementation
🔹 22 assigned SQL operations
🔹 Aggregate-function based analysis
🔹 Revenue and product-order analysis
🔹 Clean GitHub-ready project organization
```

------------------------------------------------------------------------

# 🎓 Academic Information

  Detail              Information
  ------------------- ----------------------------
  👩‍💻 Student          **Chand Khimani**
  🎓 Program          **BCA -- Final Year**
  📊 Current Course   **Data Analysis**
  👨‍🏫 Guide            **Prof. Girish Gondaliya**
  🗂️ Project          **Data Digger**
  🗄️ Database         **MySQL**
  🏪 Domain           **E-Commerce Store**

------------------------------------------------------------------------

# 🌱 What This Project Represents

> **Data Digger is not just a collection of SQL queries --- it is a
> practical step toward understanding how real-world structured data is
> stored, connected, manipulated, and analyzed.**

This project builds a foundation for working with databases in **Data
Analysis, Software Development, Backend Systems, Business Intelligence,
and Data-Driven Applications**.

------------------------------------------------------------------------

# 🙏 Acknowledgement

I sincerely thank **Prof. Girish Gondaliya** for the guidance and
support provided throughout this practical project.

I am also grateful for the opportunity to strengthen my understanding of
**SQL, MySQL, relational database design, CRUD operations, and data
analysis concepts** through hands-on implementation.

------------------------------------------------------------------------

::: {align="center"}
## ✨ THANK YOU ✨

### 🌞 Keep Learning • Keep Building • Keep Growing 🌱

> **"Every query is a question.\
> Every result is an insight.\
> Every project is a step forward."**

### 💻 Built with SQL & Curiosity

### 📊 Driven by Data

### 🚀 Created by **Chand Khimani**

**⭐ Thank you for visiting my project! ⭐**

------------------------------------------------------------------------

### 🌸 *Dream • Learn • Practice • Create • Repeat* 🌸
:::
