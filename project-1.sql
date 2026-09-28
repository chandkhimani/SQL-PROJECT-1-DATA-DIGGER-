1. ### ***create database***

###### 

* ###### **CREATE DATABASE data\_digger;**



&#x09;**--------->Query OK, 1 row affected (0.234 sec)**

###### 

* ###### **USE data\_digger;**



&#x09;**--------->Database changed**

###### 

* ###### **SHOW DATABASES;**



**+--------------------+**

**| Database           |**

**+--------------------+**

**| data\_digger        |**

**| emp                |**

**| information\_schema |**

**| mysql              |**

**| performance\_schema |**

**| sys                |**

**+--------------------+**



### ***2. Customers Table***



* ###### **Create Customers table**





**CREATE TABLE Customers (**

&#x20;   **CustomerID INT PRIMARY KEY,**

&#x20;   **Name VARCHAR(50),**

&#x20;   **Email VARCHAR(100),**

&#x20;   **Address VARCHAR(100)**

**);**



&#x09;**---------->Query OK, 0 rows affected (0.488 sec)**





* ###### **Retrieve all customer details**





###### &#x09;**-------->DESC Customers;**



**+------------+--------------+------+-----+---------+-------+**

**| Field      | Type         | Null | Key | Default | Extra |**

**+------------+--------------+------+-----+---------+-------+**

**| CustomerID | int          | NO   | PRI | NULL    |       |**

**| Name       | varchar(50)  | YES  |     | NULL    |       |**

**| Email      | varchar(100) | YES  |     | NULL    |       |**

**| Address    | varchar(100) | YES  |     | NULL    |       |**

**+------------+--------------+------+-----+---------+-------+**





* ###### **Insert at least 5 customers**



**INSERT INTO Customers (CustomerID, Name, Email, Address)**

**VALUES**

**(1, 'Chand', 'Chand@gmail.com', 'Surat'),**

**(2, 'Shubham', 'Shubham@gmail.com', 'Ahmedabad'),**

**(3, 'Krisha', 'Krisha@gmail.com', 'Vadodara'),**

**(4, 'Paragti', 'Paragti@gmail.com', 'Mumbai'),**

**(5, 'Vipul', 'Vipul@gmail.com', 'Rajkot');**





* ###### **data check**



&#x09;**--------->SELECT \* FROM Customers;**



**+------------+---------+-------------------+-----------+**

**| CustomerID | Name    | Email             | Address   |**

**+------------+---------+-------------------+-----------+**

**|          1 | Chand   | Chand@gmail.com   | Surat     |**

**|          2 | Shubham | Shubham@gmail.com | Ahmedabad |**

**|          3 | Krisha  | Krisha@gmail.com  | Vadodara  |**

**|          4 | Paragti | Paragti@gmail.com | Mumbai    |**

**|          5 | Vipul   | Vipul@gmail.com   | Rajkot    |**

**+------------+---------+-------------------+-----------+**



* ###### **Update customer address**



**UPDATE Customers**

**SET Address = 'Surat'**

**WHERE CustomerID = 2;**



**+------------+---------+-------------------+----------+**

**| CustomerID | Name    | Email             | Address  |**

**+------------+---------+-------------------+----------+**

**|          1 | Chand   | Chand@gmail.com   | Surat    |**

**|          2 | Shubham | Shubham@gmail.com | Surat    |**

**|          3 | Krisha  | Krisha@gmail.com  | Vadodara |**

**|          4 | Paragti | Paragti@gmail.com | Mumbai   |**

**|          5 | Vipul   | Vipul@gmail.com   | Rajkot   |**

**+------------+---------+-------------------+----------+**





* ###### **Delete a Customer using CustomerID**



**DELETE FROM Customers**

**WHERE CustomerID = 5;**



**+------------+---------+-------------------+----------+**

**| CustomerID | Name    | Email             | Address  |**

**+------------+---------+-------------------+----------+**

**|          1 | Chand   | Chand@gmail.com   | Surat    |**

**|          2 | Shubham | Shubham@gmail.com | Surat    |**

**|          3 | Krisha  | Krisha@gmail.com  | Vadodara |**

**|          4 | Paragti | Paragti@gmail.com | Mumbai   |**

**+------------+---------+-------------------+----------+**





* ###### **Retrieve customers whose name is Chand**



**SELECT \* FROM Customers**

**WHERE Name = 'Chand';**





### **3. *Orders Table***





* ##### **Create Orders table**



**CREATE TABLE Orders (**

&#x20;   **OrderID INT PRIMARY KEY,**

&#x20;   **CustomerID INT,**

&#x20;   **OrderDate DATE,**

&#x20;   **TotalAmount DECIMAL(10,2),**

&#x20;   **FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)**

**);**





* ###### **Table check**



&#x09;**----->DESC Orders;**



**+-------------+---------------+------+-----+---------+-------+**

**| Field       | Type          | Null | Key | Default | Extra |**

**+-------------+---------------+------+-----+---------+-------+**

**| OrderID     | int           | NO   | PRI | NULL    |       |**

**| CustomerID  | int           | YES  | MUL | NULL    |       |**

**| OrderDate   | date          | YES  |     | NULL    |       |**

**| TotalAmount | decimal(10,2) | YES  |     | NULL    |       |**

**+-------------+---------------+------+-----+---------+-------+**

###### 



* ##### **Insert at least 5 sample orders**

##### 

**INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)**

**VALUES**

**(101, 1, '2026-09-20', 1500.00),**

**(102, 2, '2026-09-21', 2200.00),**

**(103, 3, '2026-09-22', 850.00),**

**(104, 4, '2026-09-23', 3200.00),**

**(105, 5, '2026-09-24', 1250.00);**





* ###### **data check**



&#x09;**--------->SELECT \* FROM Customers;**



**+---------+------------+------------+-------------+**

**| OrderID | CustomerID | OrderDate  | TotalAmount |**

**+---------+------------+------------+-------------+**

**|     101 |          1 | 2026-09-20 |     1500.00 |**

**|     102 |          2 | 2026-09-21 |     2200.00 |**

**|     103 |          3 | 2026-09-22 |      850.00 |**

**|     104 |          4 | 2026-09-23 |     3200.00 |**

**|     105 |          5 | 2026-09-24 |     1250.00 |**

**+---------+------------+------------+-------------+**





* ##### **Retrieve all orders made by a specific customer**

##### 



**SELECT \* FROM Orders**

**WHERE CustomerID = 1;**



**+---------+------------+------------+-------------+**

**| OrderID | CustomerID | OrderDate  | TotalAmount |**

**+---------+------------+------------+-------------+**

**|     101 |          1 | 2026-09-20 |     1500.00 |**

**+---------+------------+------------+-------------+**







* ##### **Update an order's total amount**



**UPDATE Orders**

**SET TotalAmount = 1800.00**

**WHERE OrderID = 101;**





* ###### **data check**



**SELECT \* FROM Orders**

**WHERE OrderID = 101;**



**+---------+------------+------------+-------------+**

**| OrderID | CustomerID | OrderDate  | TotalAmount |**

**+---------+------------+------------+-------------+**

**|     101 |          1 | 2026-09-20 |     1800.00 |**

**+---------+------------+------------+-------------+**







* ##### **Delete an order using its OrderID**



**DELETE FROM Orders**

**WHERE OrderID = 105;**



* ###### **data check**



**SELECT \* FROM Orders;**



**+---------+------------+------------+-------------+**

**| OrderID | CustomerID | OrderDate  | TotalAmount |**

**+---------+------------+------------+-------------+**

**|     101 |          1 | 2026-09-20 |     1800.00 |**

**|     102 |          2 | 2026-09-21 |     2200.00 |**

**|     103 |          3 | 2026-09-22 |      850.00 |**

**|     104 |          4 | 2026-09-23 |     3200.00 |**

**+---------+------------+------------+-------------+**





* ##### **Retrieve orders placed in the last 30 days**



**SELECT \* FROM Orders**

**WHERE OrderDate >= DATE\_SUB(CURDATE(), INTERVAL 30 DAY);**



**+---------+------------+------------+-------------+**

**| OrderID | CustomerID | OrderDate  | TotalAmount |**

**+---------+------------+------------+-------------+**

**|     101 |          1 | 2026-09-20 |     1800.00 |**

**|     102 |          2 | 2026-09-21 |     2200.00 |**

**|     103 |          3 | 2026-09-22 |      850.00 |**

**|     104 |          4 | 2026-09-23 |     3200.00 |**

**+---------+------------+------------+-------------+**





* ##### **Highest, Lowest \& Average Order Amount**



**SELECT**

&#x20;   **MAX(TotalAmount) AS HighestAmount,**

&#x20;   **MIN(TotalAmount) AS LowestAmount,**

&#x20;   **AVG(TotalAmount) AS AverageAmount**

**FROM Orders;**





**+---------------+--------------+---------------+**

**| HighestAmount | LowestAmount | AverageAmount |**

**+---------------+--------------+---------------+**

**|       3200.00 |       850.00 |   2012.500000 |**

**+---------------+--------------+---------------+**







### **4. Products Table**





* ###### **Create Orders table**



**CREATE TABLE Products (**

&#x20;   **ProductID INT PRIMARY KEY,**

&#x20;   **ProductName VARCHAR(100),**

&#x20;   **Price DECIMAL(10,2),**

&#x20;   **Stock INT**

**);**



* ###### **Table check**



&#x09;**------->DESC Products;**



**+-------------+---------------+------+-----+---------+-------+**

**| Field       | Type          | Null | Key | Default | Extra |**

**+-------------+---------------+------+-----+---------+-------+**

**| ProductID   | int           | NO   | PRI | NULL    |       |**

**| ProductName | varchar(100)  | YES  |     | NULL    |       |**

**| Price       | decimal(10,2) | YES  |     | NULL    |       |**

**| Stock       | int           | YES  |     | NULL    |       |**

**+-------------+---------------+------+-----+---------+-------+**







* ##### **Insert at least 5 sample products**



**INSERT INTO Products (ProductID, ProductName, Price, Stock)**

**VALUES**

**(1, 'Laptop', 55000.00, 10),**

**(2, 'Keyboard', 1200.00, 25),**

**(3, 'Mouse', 700.00, 30),**

**(4, 'Headphones', 1800.00, 15),**

**(5, 'USB Cable', 500.00, 0);**



* ###### **data check**



**SELECT \* FROM Products;**



**+-----------+-------------+----------+-------+**

**| ProductID | ProductName | Price    | Stock |**

**+-----------+-------------+----------+-------+**

**|         1 | Laptop      | 55000.00 |    10 |**

**|         2 | Keyboard    |  1200.00 |    25 |**

**|         3 | Mouse       |   700.00 |    30 |**

**|         4 | Headphones  |  1800.00 |    15 |**

**|         5 | USB Cable   |   500.00 |     0 |**

**+-----------+-------------+----------+-------+**





* ##### **Display products in descending order of price**



**SELECT \* FROM Products**

**ORDER BY Price DESC;**



**+-----------+-------------+----------+-------+**

**| ProductID | ProductName | Price    | Stock |**

**+-----------+-------------+----------+-------+**

**|         1 | Laptop      | 55000.00 |    10 |**

**|         4 | Headphones  |  1800.00 |    15 |**

**|         2 | Keyboard    |  1200.00 |    25 |**

**|         3 | Mouse       |   700.00 |    30 |**

**|         5 | USB Cable   |   500.00 |     0 |**

**+-----------+-------------+----------+-------+**





* ##### **Update the price of a product**



**UPDATE Products**

**SET Price = 1300.00**

**WHERE ProductID = 2;**





* ###### **data check**



**SELECT \* FROM Products**

**WHERE ProductID = 2;**



**+-----------+-------------+---------+-------+**

**| ProductID | ProductName | Price   | Stock |**

**+-----------+-------------+---------+-------+**

**|         2 | Keyboard    | 1300.00 |    25 |**

**+-----------+-------------+---------+-------+**







* ##### **Delete products that are out of stock**



* ###### **Out of stock data**



**SELECT \* FROM Products**

**WHERE Stock = 0;**



**+-----------+-------------+--------+-------+**

**| ProductID | ProductName | Price  | Stock |**

**+-----------+-------------+--------+-------+**

**|         5 | USB Cable   | 500.00 |     0 |**

**+-----------+-------------+--------+-------+**



* ##### **Delete products**



**DELETE FROM Products**

**WHERE Stock = 0;**



* ###### **data check**



&#x20;**SELECT \* FROM Products;**



**+-----------+-------------+----------+-------+**

**| ProductID | ProductName | Price    | Stock |**

**+-----------+-------------+----------+-------+**

**|         1 | Laptop      | 55000.00 |    10 |**

**|         2 | Keyboard    |  1300.00 |    25 |**

**|         3 | Mouse       |   700.00 |    30 |**

**|         4 | Headphones  |  1800.00 |    15 |**

**+-----------+-------------+----------+-------+**





* ##### **Retrieve products whose price is between ₹500 and ₹2000**



**SELECT \* FROM Products**

**WHERE Price BETWEEN 500 AND 2000;**



**+-----------+-------------+---------+-------+**

**| ProductID | ProductName | Price   | Stock |**

**+-----------+-------------+---------+-------+**

**|         2 | Keyboard    | 1300.00 |    25 |**

**|         3 | Mouse       |  700.00 |    30 |**

**|         4 | Headphones  | 1800.00 |    15 |**

**+-----------+-------------+---------+-------+**





* ##### **Find the most expensive and cheapest product using MAX() and MIN()**



**SELECT \* FROM Products**

**WHERE Price = (SELECT MAX(Price) FROM Products)**

&#x20;  **OR Price = (SELECT MIN(Price) FROM Products);**



**+-----------+-------------+----------+-------+**

**| ProductID | ProductName | Price    | Stock |**

**+-----------+-------------+----------+-------+**

**|         1 | Laptop      | 55000.00 |    10 |**

**|         3 | Mouse       |   700.00 |    30 |**

**+-----------+-------------+----------+-------+**









### **5. OrderDetails Table**



* ###### **Create Ordersdetails table**





**CREATE TABLE OrderDetails (**

&#x20;   **OrderDetailID INT PRIMARY KEY,**

&#x20;   **OrderID INT,**

&#x20;   **ProductID INT,**

&#x20;   **Quantity INT,**

&#x20;   **SubTotal DECIMAL(10,2),**

&#x20;   **FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),**

&#x20;   **FOREIGN KEY (ProductID) REFERENCES Products(ProductID)**

**);**





* ###### **Table check**



**DESC OrderDetails;**



**+---------------+---------------+------+-----+---------+-------+**

**| Field         | Type          | Null | Key | Default | Extra |**

**+---------------+---------------+------+-----+---------+-------+**

**| OrderDetailID | int           | NO   | PRI | NULL    |       |**

**| OrderID       | int           | YES  | MUL | NULL    |       |**

**| ProductID     | int           | YES  | MUL | NULL    |       |**

**| Quantity      | int           | YES  |     | NULL    |       |**

**| SubTotal      | decimal(10,2) | YES  |     | NULL    |       |**

**+---------------+---------------+------+-----+---------+-------+**





* ##### **Insert at least 5 order details**



**INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, SubTotal)**

**VALUES**

**(1, 101, 1, 1, 55000.00),**

**(2, 101, 2, 2, 2600.00),**

**(3, 102, 3, 3, 2100.00),**

**(4, 103, 4, 1, 1800.00),**

**(5, 104, 2, 1, 1300.00);**

##### 



* ###### **data check**



**SELECT \* FROM OrderDetails;**



**+---------------+---------+-----------+----------+----------+**

**| OrderDetailID | OrderID | ProductID | Quantity | SubTotal |**

**+---------------+---------+-----------+----------+----------+**

**|             1 |     101 |         1 |        1 | 55000.00 |**

**|             2 |     101 |         2 |        2 |  2600.00 |**

**|             3 |     102 |         3 |        3 |  2100.00 |**

**|             4 |     103 |         4 |        1 |  1800.00 |**

**|             5 |     104 |         2 |        1 |  1300.00 |**

**+---------------+---------+-----------+----------+----------+**





* ##### **Retrieve all details for a specific order**



**SELECT \* FROM OrderDetails**

**WHERE OrderID = 101;**



**+---------------+---------+-----------+----------+----------+**

**| OrderDetailID | OrderID | ProductID | Quantity | SubTotal |**

**+---------------+---------+-----------+----------+----------+**

**|             1 |     101 |         1 |        1 | 55000.00 |**

**|             2 |     101 |         2 |        2 |  2600.00 |**

**+---------------+---------+-----------+----------+----------+**





* ##### **Calculate total revenue generated from all orders using SUM()**





**SELECT SUM(SubTotal) AS TotalRevenue**

**FROM OrderDetails;**



**+--------------+**

**| TotalRevenue |**

**+--------------+**

**|     62800.00 |**

**+--------------+**









* ##### **Find the top 3 most ordered products**



**SELECT ProductID, SUM(Quantity) AS TotalQuantity**

**FROM OrderDetails**

**GROUP BY ProductID**

**ORDER BY TotalQuantity DESC**

**LIMIT 3;**



**+-----------+---------------+**

**| ProductID | TotalQuantity |**

**+-----------+---------------+**

**|         2 |             3 |**

**|         3 |             3 |**

**|         1 |             1 |**

**+-----------+---------------+**





* ##### **Find how many times a specific product has been sold using COUNT()**



**SELECT COUNT(\*) AS TimesSold**

**FROM OrderDetails**

**WHERE ProductID = 2;**





**+-----------+**

**| TimesSold |**

**+-----------+**

**|         2 |**

**+-----------+**





































































































































































































































































































































































































































































































