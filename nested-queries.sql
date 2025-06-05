/**
What is the product name(s) of the most expensive products? HINT: Find
the max price in a subquery and then use that value to find products whose
price equals that value.
**/
select productname , unitprice from products
where UnitPrice = (select max(UnitPrice) from products);

/**
What are the order ids of the orders that ordered "Sasquatch Ale"? HINT:
Find the product id of "Sasquatch Ale" in a subquery and then use that
value to find the matching orders from the `order details` table. Because
the `order details` table has a space in its name, you will need to surround
it with back ticks in the FROM clause.
**/
select distinct OrderID
 from `order details` 
where ProductID = (select ProductID from products 
where ProductName = 'sasquatch ale');

-- What is the name of the employee that sold order 10266?-- 'Janet Leverling'
SELECT
  (SELECT CONCAT(FirstName, ' ', LastName)
   FROM Employees
   WHERE EmployeeID = o.EmployeeID
  ) AS EmployeeName,
  o.OrderID
FROM Orders AS o
WHERE o.OrderID = 10266;

-- What is the name of the customer that bought order 10266?-- 'Pirkko Koskitalo'
SELECT
  (SELECT ContactName
   FROM Customers
   WHERE CustomerID = o.CustomerID
  ) AS CustomerName,
  o.OrderID
FROM Orders AS o
WHERE o.OrderID = 10266;