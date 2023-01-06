-- Challenge 01_05: Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

-- Solution by Georgio Khalil

UPDATE Customers
SET Address = '74 Pine St.', 
    City = 'New York', 
    State = 'NY'
WHERE FirstName = 'Taylor' 
AND LastName = 'Jenkins' 
AND Address = '27170 6th Ave.' 
AND City = 'Washington' 
AND State = 'DC';

SELECT * FROM Customers
WHERE FirstName = 'Taylor' 
AND LastName = 'Jenkins' 
AND Address = '74 Pine St.';