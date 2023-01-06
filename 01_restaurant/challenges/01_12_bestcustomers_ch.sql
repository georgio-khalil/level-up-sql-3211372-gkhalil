-- Challenge 01_12: Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
-- solved by Georgio Khalil

-- Solution:

SELECT Customers.FirstName, Customers.LastName, Customers.Email, count(Orders.OrderID) AS NumberOfOrders
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY orders.CustomerID
ORDER BY NumberOfOrders DESC
LIMIT 6;