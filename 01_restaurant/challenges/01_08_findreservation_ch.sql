-- Challenge 01_08: 'Find the reservation information for a customer whose name we aren't quite sure how to spell' solved by Georgio Khalil

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

-- Solution:

SELECT * FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
WHERE Customers.LastName LIKE 'St%e%s%'
  AND date(Reservations.Date) = '2022-06-14'