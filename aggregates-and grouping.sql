-- How many suppliers are there? Use a query!--29
select count(*) as NO_of_suppliers from suppliers;

-- What is the sum of all the employee's salaries?---20362.929931640625
select sum(salary) as sum_of_salary from employees;

-- What is the price of the cheapest item that Northwind sells?-- 2.5000, Geitost
select  min(UnitPrice) as cheapestPrice from products;

-- What is the average price of items that Northwind sells? --'28.86636364'
select avg(unitprice) as average_price from products;

-- What is the price of the most expensive item that Northwind sells?--'263.5000'
select max(unitprice) as expensive_price  from products;

/** What is the supplier ID of each supplier and the number of items they
supply? You can answer this query by only looking at the Products table.
**/
select SupplierID, count(*) as number_of_item from products
group by  SupplierID;

/**What is the category ID of each category and the average price of each item
in the category? You can answer this query by only looking at the Products
table**/
select avg(unitprice) as Average_Price, categoryid as Category_ID from  products
group by CategoryID;

/**For suppliers that provide at least 5 items to Northwind, what is the
supplier ID of each supplier and the number of items they supply? You
can answer this query by only looking at the Products table.
**/
select supplierid, count(*) as NO_ITEMS from products
group by SupplierID
having NO_ITEMS >=5 ;

/**
List the product id, product name, and inventory value (calculated by
multiplying unit price by the number of units on hand). Sort the results in
descending order by value. If two or more have the same value, order by
product name.
**/
select ProductID, ProductName , UnitPrice*UnitsInStock as Inventory from products
order by Inventory desc,ProductName;