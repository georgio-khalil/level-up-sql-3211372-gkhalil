-- Challenge 01_01: Generate a list of customer information.

-- Show their first name, last name, and email address.
-- Sort the list of results by last name.
-- Solved by Georgio Khalil

-- Solution:

SELECT FirstName, LastName, Email 
From Customers
ORDER BY LastName