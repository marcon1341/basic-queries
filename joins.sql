/**
List the product id, product name, unit price and category name of all
products. Order by category name and within that, by product name.
**/
select ProductID, ProductName, UnitPrice, categoryname from products
join categories on products.CategoryID = categories.CategoryID;

/**
List the product id, product name, unit price and supplier name of all
products that cost more than $75. Order by product name.
**/
select ProductID, ProductName, UnitPrice, categoryname, companyname as Supplier_name from products
join categories on products.CategoryID = categories.CategoryID
join suppliers on suppliers.SupplierID = products.SupplierID
where UnitPrice > 75;

/**
List the product id, product name, unit price, category name, and supplier
name of every product. Order by product name.
**/
select ProductID, ProductName, UnitPrice, categoryname, companyname as Supplier_name from products
join categories on products.CategoryID = categories.CategoryID
join suppliers on suppliers.SupplierID = products.SupplierID
order by products.ProductName;

/**
What is the product name(s) and categories of the most expensive
products? HINT: Find the max price in a subquery and then use that in
your more complex query that joins products with categories
**/
select productname, categoryname, UnitPrice from products
join categories on categories.CategoryID = products.CategoryID
where products.UnitPrice = (select max(UnitPrice) from products);
/**
List the order id, ship name, ship address, and shipping company name of
every order that shipped to Germany
**/
select OrderID, ShipName, ShipAddress, ShipCity , companyname,country from orders
join customers on customers.CustomerID= orders.CustomerID
where ShipCountry = 'germany';

/**
List the order id, order date, ship name, ship address of all orders that
ordered "Sasquatch Ale"?
**/
select o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress from orders as o
join `Order Details`as od on o.OrderID = od.OrderID
join products as p on od.ProductID = p.ProductID 
where p.ProductName = 'sasquatch ale';

