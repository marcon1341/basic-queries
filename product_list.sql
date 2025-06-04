/**Write a query to list the product id, product name, and unit price of every
product.
**/
select ProductID,
	 ProductName,
	 UnitPrice
 from products;
 /**
 Write a query to list the product id, product name, and unit price of every
product. Except this time, order then in ascending order by price.
 **/
 select ProductID,
	 ProductName,
	 UnitPrice
 from products
 order by UnitPrice asc
 ;

 /**
 What are the products that we carry where the unit price is $7.50 or less?
**/
select productName , unitPrice from products
where UnitPrice <= 7.50;

/**
What are the products that we carry where we have at least 100 units on
hand? Order them in descending order by price.
**/
select ProductName,ProductID , UnitPrice,UnitsInStock from products
where UnitsInStock >= 100
order by UnitPrice desc;

/**
6. What are the products that we carry where we have at least 100 units on
hand? Order them in descending order by price. If two or more have the
same price, list those in ascending order by product name.
**/
select ProductName,ProductID , UnitPrice,UnitsInStock from products
where UnitsInStock >= 100
order by UnitPrice desc,
ProductName asc;
/**
7. What are the products that we carry where we have no units on hand, but 1
or more units of them on backorder? Order them by product name.
**/
select ProductName,ProductID, ReorderLevel , UnitsInStock from products
where UnitsInStock = 0
order by
ProductName;

/**
8. What is the name of the table that holds the types (categories) of the items
Northwind sells?
**/

/**
9. Write a query that lists all of the columns and all of the rows of the
categories table? What is the category id of seafood? ->8
**/
select * from categories;
/**
10. Examine the Products table. How does it identify the type (category) of
each item sold? Write a query to list all of the seafood items we carry.
**/
SELECT *
FROM Products
WHERE CategoryID = 8;
/** or**/
SELECT
  c.CategoryName,
  p.ProductName
FROM Categories AS c
JOIN Products   AS p
  ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Seafood';
/**
11. What are the first and last names of all of the Northwind employees?
**/
select FirstName,LastName from employees;
/**
12. What employees have "manager" in their titles?
**/
select *  from employees
where Title like "%manager%";
/**
13. List the distinct job titles in employees.
**/
select distinct Title from employees;
/**
14. What employees have a salary that is between $200 0 and $2500?
**/
select * from employees
where Salary between 2000 and 2500;
/**
15. List all of the information about all of Northwind's suppliers.
**/
select * from suppliers;
/**
16. Examine the Products table. How do you know what supplier supplies
each product? Write a query to list all of the items that "Tokyo Traders"
supplies to Northwind
**/
select p.ProductID, p.ProductName ,s.companyName
from products as p
join suppliers as s
on p.SupplierID = s.SupplierID
where CompanyName = 'tokyo traders';



 **/