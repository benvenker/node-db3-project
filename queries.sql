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