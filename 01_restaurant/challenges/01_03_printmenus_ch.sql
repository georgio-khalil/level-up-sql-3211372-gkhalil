-- Challenge 01_03: Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.
-- Solved by Georgio Khalil

-- Solution:

SELECT *
FROM Dishes
ORDER BY Price

SELECT *
FROM Dishes
WHERE Type IN ('Appetizer','Beverage')
ORDER BY Type

SELECT *
FROM Dishes
WHERE Type IS NOT 'Beverage'
ORDER BY Type