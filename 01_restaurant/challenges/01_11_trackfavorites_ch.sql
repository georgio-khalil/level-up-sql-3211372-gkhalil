-- Challenge 01_11: 'Update information in the database' solved by Georgio Khalil

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

-- Solution:

-- Find customer in database:
SELECT * FROM Customers
WHERE FirstName = 'Cleo' and LastName = 'Goldwater'

-- Check current favorite dish:
SELECT * from Dishes
WHERE DishID = 14

-- Update favorite dish:
UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE FirstName = 'Cleo' and LastName = 'Goldwater'