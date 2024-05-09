-- USE bestbuy;

-- find all products
SELECT * FROM products;
-- find all products that cost $1400
SELECT Name FROM products WHERE Price = 1400;
-- find all products that cost $11.99 or $13.99
SELECT Name FROM products WHERE Price = 11.99 OR 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT Name FROM products WHERE NOT Price = 11.99;
-- find all products and sort them by price from greatest to least
SELECT Name, Price FROM products ORDER BY Price;
-- find all employees who don't have a middle initial
SELECT FirstName, LastName FROM employees 
WHERE MiddleInitial IS NULL;
-- find distinct product prices
SELECT DISTINCT Price, Name FROM products WHERE Price;
-- find all employees whose first name starts with the letter ‘j’
SELECT FirstName, LastName FROM employees WHERE FirstName LIKE 'j%';
-- find all Macbooks
SELECT Name FROM products WHERE Name LIKE '%Macbook%';
-- find all products that are on sale
SELECT Name, Price FROM products WHERE OnSale = true;
-- find the average price of all products
SELECT AVG(Price) FROM products;
-- find all Geek Squad employees who don't have a middle initial
SELECT FirstName, LastName FROM employees WHERE MiddleInitial IS NULL;
-- find all products from the products table whose stock level is in the range 
-- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT Name, StockLevel FROM products
WHERE StockLevel >= 500 AND StockLevel <= 1200;