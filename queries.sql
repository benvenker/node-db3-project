-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select p.ProductName, c.CategoryName
from Product as p
  join Category as c on p.CategoryId = c.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select "Order".Id, "Order".ShipName
from "Order"
where OrderDate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.ProductName, o.OrderId
from Product as p
  join OrderDetail as o on p.id = o.ProductId
where o.OrderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.Id, o.ShipName, e.LastName
from "Order" as o
  join Employee as e on e.Id = o.EmployeeId;


-- Stretch Queries from W3Schools

-- Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 8 records.
SELECT distinct(c.categoryName), count(*) as Count
from categories as c
  join products as p on p.categoryid = c.categoryid
group by categoryname

-- Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.
SELECT o.orderid, count(*) as ItemCount
from orderdetails as o
group by orderId
order by productCount desc