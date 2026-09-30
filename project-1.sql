-----CREATE DATABASE-----

1. CREATE DATABASE data_digger;

2. USE data_digger;

        Database changed

3. SELECT DATABASE();

        +-------------+
        | DATABASE()  |
        +-------------+
        | data_digger |
        +-------------+


-----CUSTOMERS TABLE-----

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255)
);


DESC Customers;

        +------------+--------------+------+-----+---------+-------+
        | Field      | Type         | Null | Key | Default | Extra |
        +------------+--------------+------+-----+---------+-------+
        | CustomerID | int          | NO   | PRI | NULL    |       |
        | Name       | varchar(100) | YES  |     | NULL    |       |
        | Email      | varchar(100) | YES  |     | NULL    |       |
        | Address    | varchar(255) | YES  |     | NULL    |       |
        +------------+--------------+------+-----+---------+-------+

-----> 1. Insert at least 5 sample customers into the Customers table.


INSERT INTO Customers (CustomerID, Name, Email, Address)
VALUES
(1, 'Chand', 'Chand@gmail.com', 'Surat'),
(2, 'Shubham', 'Shubham@gmail.com', 'Ahmedabad'),
(3, 'Krisha', 'Krisha@gmail.com', 'Vadodara'),
(4, 'Paragti', 'Paragti@gmail.com', 'Rajkot'),
(5, 'Alice', 'Alice@gmail.com', 'Gandhinagar');


-----> 2. Retrieve all customer details.

SELECT * FROM Customers;

        +------------+---------+-------------------+-------------+
        | CustomerID | Name    | Email             | Address     |
        +------------+---------+-------------------+-------------+
        |          1 | Chand   | Chand@gmail.com   | Surat       |
        |          2 | Shubham | Shubham@gmail.com | Ahmedabad   |
        |          3 | Krisha  | Krisha@gmail.com  | Vadodara    |
        |          4 | Paragti | Paragti@gmail.com | Rajkot      |
        |          5 | Alice   | Alice@gmail.com   | Gandhinagar |
        +------------+---------+-------------------+-------------+


-----> 3. Update a customer's address.

UPDATE Customers
SET Address = 'Surat'
WHERE CustomerID = 2;

SELECT * FROM Customers;

        +------------+---------+-------------------+-------------+
        | CustomerID | Name    | Email             | Address     |
        +------------+---------+-------------------+-------------+
        |          1 | Chand   | Chand@gmail.com   | Surat       |
        |          2 | Shubham | Shubham@gmail.com | Surat       |
        |          3 | Krisha  | Krisha@gmail.com  | Vadodara    |
        |          4 | Paragti | Paragti@gmail.com | Rajkot      |
        |          5 | Alice   | Alice@gmail.com   | Gandhinagar |
        +------------+---------+-------------------+-------------+


-----> 4. Delete a customer using their CustomerID

DELETE FROM Customers
WHERE CustomerID = 3;
    
SELECT * FROM Customers;

        +------------+---------+-------------------+-------------+
        | CustomerID | Name    | Email             | Address     |
        +------------+---------+-------------------+-------------+
        |          1 | Chand   | Chand@gmail.com   | Surat       |
        |          2 | Shubham | Shubham@gmail.com | Surat       |
        |          4 | Paragti | Paragti@gmail.com | Rajkot      |
        |          5 | Alice   | Alice@gmail.com   | Gandhinagar |
        +------------+---------+-------------------+-------------+


-----ORDERS TABLE-----

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


DESC Orders;

        +-------------+---------------+------+-----+---------+-------+
        | Field       | Type          | Null | Key | Default | Extra |
        +-------------+---------------+------+-----+---------+-------+
        | OrderID     | int           | NO   | PRI | NULL    |       |
        | CustomerID  | int           | YES  | MUL | NULL    |       |
        | OrderDate   | date          | YES  |     | NULL    |       |
        | TotalAmount | decimal(10,2) | YES  |     | NULL    |       |
        +-------------+---------------+------+-----+---------+-------+


-----> 1. Insert at least 5 sample orders into the Orders table.

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, '2026-09-20', 2500.00),
(102, 2, '2026-09-21', 1500.00),
(103, 3, '2026-09-22', 3200.00),
(104, 4, '2026-09-25', 1800.00),
(105, 5, '2026-09-28', 4500.00);


SELECT * FROM Orders;

        +---------+------------+------------+-------------+
        | OrderID | CustomerID | OrderDate  | TotalAmount |
        +---------+------------+------------+-------------+
        |     101 |          1 | 2026-09-20 |     2500.00 |
        |     102 |          2 | 2026-09-21 |     1500.00 |
        |     103 |          3 | 2026-09-22 |     3200.00 |
        |     104 |          4 | 2026-09-25 |     1800.00 |
        |     105 |          5 | 2026-09-28 |     4500.00 |
        +---------+------------+------------+-------------+


-----> 2. Retrieve all orders made by a specific customer.

SELECT *
FROM Orders
WHERE CustomerID = 1;

        +---------+------------+------------+-------------+
        | OrderID | CustomerID | OrderDate  | TotalAmount |
        +---------+------------+------------+-------------+
        |     101 |          1 | 2026-09-20 |     2500.00 |
        +---------+------------+------------+-------------+

-----> 3. Update an order's total amount.

UPDATE Orders
SET TotalAmount = 2000.00
WHERE OrderID = 102;

SELECT * FROM Orders
WHERE OrderID = 102;

        +---------+------------+------------+-------------+
        | OrderID | CustomerID | OrderDate  | TotalAmount |
        +---------+------------+------------+-------------+
        |     102 |          2 | 2026-09-21 |     2000.00 |
        +---------+------------+------------+-------------+

-----> 4. Delete an order using its OrderID.

DELETE FROM Orders
WHERE OrderID = 105;

SELECT * FROM Orders;

        +---------+------------+------------+-------------+
        | OrderID | CustomerID | OrderDate  | TotalAmount |
        +---------+------------+------------+-------------+
        |     101 |          1 | 2026-09-20 |     2500.00 |
        |     102 |          2 | 2026-09-21 |     2000.00 |
        |     103 |          3 | 2026-09-22 |     3200.00 |
        |     104 |          4 | 2026-09-25 |     1800.00 |
        +---------+------------+------------+-------------+

-----> 5. Retrieve orders placed in the last 30 days.

SELECT *
FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

        +---------+------------+------------+-------------+
        | OrderID | CustomerID | OrderDate  | TotalAmount |
        +---------+------------+------------+-------------+
        |     101 |          1 | 2026-09-20 |     2500.00 |
        |     102 |          2 | 2026-09-21 |     2000.00 |
        |     103 |          3 | 2026-09-22 |     3200.00 |
        |     104 |          4 | 2026-09-25 |     1800.00 |
        +---------+------------+------------+-------------+


-----> 6. Retrieve the highest, lowest, and average order amount using aggregate functions.
 
 SELECT
    MAX(TotalAmount) AS Highest_Order_Amount,
    MIN(TotalAmount) AS Lowest_Order_Amount,
    AVG(TotalAmount) AS Average_Order_Amount
FROM Orders;

        +----------------------+---------------------+----------------------+
        | Highest_Order_Amount | Lowest_Order_Amount | Average_Order_Amount |
        +----------------------+---------------------+----------------------+
        |              3200.00 |             1800.00 |          2375.000000 |
        +----------------------+---------------------+----------------------+

----- PRODUCTS TABLE -----

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

DESC Products;

        +-------------+---------------+------+-----+---------+-------+
        | Field       | Type          | Null | Key | Default | Extra |
        +-------------+---------------+------+-----+---------+-------+
        | ProductID   | int           | NO   | PRI | NULL    |       |
        | ProductName | varchar(100)  | YES  |     | NULL    |       |
        | Price       | decimal(10,2) | YES  |     | NULL    |       |
        | Stock       | int           | YES  |     | NULL    |       |
        +-------------+---------------+------+-----+---------+-------+

-----> 1. Insert at least 5 sample products into the Products table.

INSERT INTO Products (ProductID, ProductName, Price, Stock)
VALUES
(201, 'Laptop', 55000.00, 10),
(202, 'Smartphone', 25000.00, 20),
(203, 'Headphones', 2500.00, 30),
(204, 'Keyboard', 1500.00, 25),
(205, 'Mouse', 800.00, 40);

SELECT * FROM Products;

        +-----------+-------------+----------+-------+
        | ProductID | ProductName | Price    | Stock |
        +-----------+-------------+----------+-------+
        |       201 | Laptop      | 55000.00 |    10 |
        |       202 | Smartphone  | 25000.00 |    20 |
        |       203 | Headphones  |  2500.00 |    30 |
        |       204 | Keyboard    |  1500.00 |    25 |
        |       205 | Mouse       |   800.00 |    40 |
        +-----------+-------------+----------+-------+

-----> 2. Retrieve all products sorted by price in descending order.

SELECT *
FROM Products
ORDER BY Price DESC;

        +-----------+-------------+----------+-------+
        | ProductID | ProductName | Price    | Stock |
        +-----------+-------------+----------+-------+
        |       201 | Laptop      | 55000.00 |    10 |
        |       202 | Smartphone  | 25000.00 |    20 |
        |       203 | Headphones  |  2500.00 |    30 |
        |       204 | Keyboard    |  1500.00 |    25 |
        |       205 | Mouse       |   800.00 |    40 |
        +-----------+-------------+----------+-------+


-----> 3. Update the price of a specific product.

UPDATE Products
SET Price = 60000.00
WHERE ProductID = 201;

SELECT *
FROM Products
WHERE ProductID = 201;

        +-----------+-------------+----------+-------+
        | ProductID | ProductName | Price    | Stock |
        +-----------+-------------+----------+-------+
        |       201 | Laptop      | 60000.00 |    10 |
        +-----------+-------------+----------+-------+

-----> 4. Delete a product if it's out of stock.

DELETE FROM Products
WHERE Stock = 0;

SELECT * FROM Products;

        +-----------+-------------+----------+-------+
        | ProductID | ProductName | Price    | Stock |
        +-----------+-------------+----------+-------+
        |       201 | Laptop      | 60000.00 |    10 |
        |       202 | Smartphone  | 25000.00 |    20 |
        |       203 | Headphones  |  2500.00 |    30 |
        |       204 | Keyboard    |  1500.00 |    25 |
        |       205 | Mouse       |   800.00 |    40 |
        +-----------+-------------+----------+-------+


-----> 5. Retrieve products whose price is between ₹500 and ₹2000.

SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 2000;

        +-----------+-------------+---------+-------+
        | ProductID | ProductName | Price   | Stock |
        +-----------+-------------+---------+-------+
        |       204 | Keyboard    | 1500.00 |    25 |
        |       205 | Mouse       |  800.00 |    40 |
        +-----------+-------------+---------+-------+

-----> 6. Retrieve the most expensive and cheapest product using MAX() and MIN().

SELECT
    MAX(Price) AS Most_Expensive_Price,
    MIN(Price) AS Cheapest_Price
FROM Products;

        +----------------------+----------------+
        | Most_Expensive_Price | Cheapest_Price |
        +----------------------+----------------+
        |             60000.00 |         800.00 |
        +----------------------+----------------+


----- ORDERDETAILS TABLE -----


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

        +---------------+---------------+------+-----+---------+-------+
        | Field         | Type          | Null | Key | Default | Extra |
        +---------------+---------------+------+-----+---------+-------+
        | OrderDetailID | int           | NO   | PRI | NULL    |       |
        | OrderID       | int           | YES  | MUL | NULL    |       |
        | ProductID     | int           | YES  | MUL | NULL    |       |
        | Quantity      | int           | YES  |     | NULL    |       |
        | SubTotal      | decimal(10,2) | YES  |     | NULL    |       |
        +---------------+---------------+------+-----+---------+-------+

-----> 1. Insert at least 5 sample records into the OrderDetails table.

INSERT INTO OrderDetails
(OrderDetailID, OrderID, ProductID, Quantity, SubTotal)
VALUES
(1, 101, 201, 1, 60000.00),
(2, 101, 203, 2, 5000.00),
(3, 102, 202, 1, 25000.00),
(4, 103, 204, 2, 3000.00),
(5, 104, 203, 3, 7500.00);

SELECT * FROM OrderDetails;

        +---------------+---------+-----------+----------+----------+
        | OrderDetailID | OrderID | ProductID | Quantity | SubTotal |
        +---------------+---------+-----------+----------+----------+
        |             1 |     101 |       201 |        1 | 60000.00 |
        |             2 |     101 |       203 |        2 |  5000.00 |
        |             3 |     102 |       202 |        1 | 25000.00 |
        |             4 |     103 |       204 |        2 |  3000.00 |
        |             5 |     104 |       203 |        3 |  7500.00 |
        +---------------+---------+-----------+----------+----------+


-----> 2. Retrieve all order details for a specific order.

SELECT *
FROM OrderDetails
WHERE OrderID = 101;

        +---------------+---------+-----------+----------+----------+
        | OrderDetailID | OrderID | ProductID | Quantity | SubTotal |
        +---------------+---------+-----------+----------+----------+
        |             1 |     101 |       201 |        1 | 60000.00 |
        |             2 |     101 |       203 |        2 |  5000.00 |
        +---------------+---------+-----------+----------+----------+


-----> 3. Calculate the total revenue generated from all orders using SUM().

SELECT SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;

        +---------------+
        | Total_Revenue |
        +---------------+
        |     100500.00 |
        +---------------+


-----> 4. Retrieve the top 3 most ordered products.

SELECT
    ProductID,
    SUM(Quantity) AS Total_Quantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Quantity DESC
LIMIT 3;

        +-----------+----------------+
        | ProductID | Total_Quantity |
        +-----------+----------------+
        |       203 |              5 |
        |       204 |              2 |
        |       201 |              1 |
        +-----------+----------------+


-----> 5. Count how many times a specific product has been sold using COUNT().

SELECT
    ProductID,
    COUNT(*) AS Times_Sold
FROM OrderDetails
WHERE ProductID = 203
GROUP BY ProductID;

        +-----------+------------+
        | ProductID | Times_Sold |
        +-----------+------------+
        |       203 |          2 |
        +-----------+------------+


=========================THANK YOU==========================