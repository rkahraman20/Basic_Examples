
--Example Part 1
USE Northwind

SELECT * FROM [Order Details];

WITH cte_quantity AS
	(SELECT SUM(Quantity) AS Total
	FROM [Order Details]
	GROUP BY ProductID)
SELECT AVG(Total) AS average_product_quantity
FROM cte_quantity;



--Example Part 2
USE Northwind

SELECT * FROM [Orders];

WITH
cte_sales AS
	(SELECT EmployeeID, COUNT(OrderID) AS Orders, ShipVia
	FROM Orders
	GROUP BY EmployeeID, ShipVia),
 
shipper_cte AS
	(SELECT *
	FROM cte_sales
	WHERE ShipVia = 2 OR ShipVia = 3)
 
SELECT ShipVia, AVG(Orders) average_order_per_employee
FROM shipper_cte
GROUP BY ShipVia;