-- What is the price of the cheapest item that Northwind sells?
SELECT MIN(UnitPrice) 
AS CheapestPrice 
FROM Products;

-- What is the average price of items that Northwind sells?
SELECT AVG(UnitPrice)
AS AveragePrice 
FROM Products;

-- What is the price of the most expensive item that Northwind sells?
SELECT MAX(UnitPrice)
AS MostExpensivePrice
FROM Products;

-- What is the sum of all the employee's salaries?
SELECT SUM(UnitPrice)
AS SumOfAllSalaries
From Products;

-- Which employee makes the highest salary, and which employee makes the lowest?
SELECT EmployeeID, LastName, FirstName, Salary FROM Employees ORDER BY Salary DESC LIMIT 1;
SELECT EmployeeID, LastName, FirstName, Salary FROM Employees ORDER BY Salary ASC LIMIT 1;

-- What is the supplier ID of each supplier and the number of items they supply? (You can answer this query by only looking at the products table.) 
SELECT SupplierID, COUNT(*)
AS NumItems
FROM Products 
GROUP BY SupplierID;

-- What is the category ID of each category and the average price of each item in the category? 
-- (You can answer this query by only looking at the products table.) 
SELECT CategoryID, AVG(UnitPrice)
AS AveragePrice
FROM products
GROUP BY CategoryID

-- For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply?
--  (Again, you can answer this query by only looking at the products table.)
SELECT SupplierID, COUNT(*) AS NumItems
FROM Products 
GROUP BY SupplierID 
HAVING COUNT(*) >= 5;

-- List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand).
-- Sort the results in descending order by value. If two or more have the same value, order by product name.
SELECT ProductID, ProductName, UnitsInStock + UnitPrice 
AS InventoryValue
FROM Products
ORDER BY InventoryValue DESC, ProductName ASC;

