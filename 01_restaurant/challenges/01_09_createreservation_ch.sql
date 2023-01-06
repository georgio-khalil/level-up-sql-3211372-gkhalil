-- Challenge 01_09: 'Create a reservation for a customer who may or may not already be listed in our Customers table.' solved by Georgio Khalil

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

-- Solution:

-- Check if customer is in database:
SELECT CustomerID FROM Customers WHERE Email = 'smac@kinetecoinc.com';

-- Not found. Create record for customer:
INSERT INTO Customers (FirstName, LastName, Email)
VALUES ('Sam','McAdams','smac@kinetecoinc.com');

-- Create reservation under new customer ID:
INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES ((SELECT CustomerID FROM Customers WHERE Email = 'smac@kinetecoinc.com'),
        '2022-08-12 18:00:00',
        5);

-- Check reservation and customer details:
SELECT * FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
WHERE Customers.Email = 'smac@kinetecoinc.com'