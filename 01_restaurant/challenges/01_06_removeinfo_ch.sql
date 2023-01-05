-- Challenge 01_06: 'Remove incorrect information from the database' solved by Georgio Khalil

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

--Solution:

--Today is a Sunday. Next Friday is July 29, 2022.
--Find the reservation:
SELECT *
FROM Reservations
WHERE Date(Date) = '2022-07-29';

--Only one matching record. Match CustomerID to FirstName to check if the reservation is by Norby:
SELECT FirstName
FROM Customers
WHERE CustomerID = 64;

--Check Successful. Delete reservation:
DELETE FROM Reservations
WHERE ReservationID = 2000;

--Check if reservation was deleted from the table:
SELECT ReservationID
FROM Reservations
WHERE ReservationID BETWEEN 1990 AND 2001

--Reservation ID 2000 has been deleted.