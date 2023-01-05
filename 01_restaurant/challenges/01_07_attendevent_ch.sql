-- Challenge 01_07: 'Register a customer for our Anniversary event' solved by Georgio Khalil

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

-- Solution:

-- Use email address to look up customer and get customer ID as a subquery
INSERT INTO CustomersResponses
VALUES (
  (SELECT CustomerID 
    FROM Customers
    WHERE Email = 'atapley2j@kinetecoinc.com'),
  4);

--Check updated table
SELECT * FROM CustomersResponses;