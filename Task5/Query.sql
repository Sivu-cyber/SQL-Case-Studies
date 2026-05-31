use ECOM_SITE

SELECT * FROM Customers;
SELECT * FROM Orders;

--FULL OUTER JOIN - All customers & all orders
SELECT c.CustID, c.Name, c.Country, o.Product, o.Price
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustID = o.CustID;

--RIGHT JOIN - all orders including the orders has no customer details 
SELECT c.CustID, c.Name, c.Country, o.Product, o.Price
FROM Customers c
RIGHT JOIN Orders o ON c.CustID = o.CustID;

--LEFT JOIN - List all customers, including who haven’t ordered placed any orders.
SELECT c.CustID, c.Name, c.Country, o.Product, o.Price
FROM Customers c
LEFT JOIN Orders o ON c.CustID = o.CustID;


--INNER JOIN - Customers who placed orders
SELECT c.CustID, c.Name, c.Country, o.Product, o.Price
FROM Customers c
INNER JOIN Orders o ON c.CustID = o.CustID;


--CROSS JOIN - All possible combinations
SELECT c.Name, o.Product
FROM Customers c
CROSS JOIN Orders o;

SELECT * FROM Customers;

--SELF JOIN - Customers from same country 
SELECT 
    c1.Name AS Customer1,
    c2.Name AS Customer2,
    c1.Country FROM Customers c1
JOIN Customers c2
    ON c1.Country = c2.Country
   AND c1.CustID <> c2.CustID
ORDER BY c1.Country, c1.Name;

