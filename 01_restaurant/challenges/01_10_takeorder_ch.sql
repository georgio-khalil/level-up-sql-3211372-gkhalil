-- Challenge 01_1: 'Enter a customer's delivery order into our database' and provide the total cost of the items ordered' solved by Georgio Khalil

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- Solution:

-- Find the customer in our database:
SELECT * from Customers
WHERE FirstName = 'Loretta';

-- Create order record from customer ID 70:
INSERT INTO Orders (CustomerID, OrderDate)
VALUES (70, '2022-09-20 14:00:00');

-- Check order ID
SELECT * FROM Orders
WHERE CustomerID = 70
ORDER BY OrderDate DESC;

-- Add items to order ID 1001:
INSERT INTO OrdersDishes (OrderID,DishID)
VALUES (1001,(SELECT DishID FROM Dishes WHERE Name = 'House Salad'));
INSERT INTO OrdersDishes (OrderID,DishID)
VALUES (1001,(SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburgers'));
INSERT INTO OrdersDishes (OrderID,DishID)
VALUES (1001,(SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));

-- Check full order with items
SELECT OrdersDishes.OrderID, OrdersDishes.DishID, Dishes.Name, Dishes.Price FROM OrdersDishes
JOIN Dishes ON OrdersDishes.DishID = Dishes.DishID WHERE OrdersDishes.OrderID = 1001

-- Calculate total cost
SELECT sum(Dishes.Price) FROM OrdersDishes
JOIN Dishes ON OrdersDishes.DishID = Dishes.DishID WHERE OrdersDishes.OrderID = 1001