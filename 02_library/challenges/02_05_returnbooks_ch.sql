-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

-- Solution by Georgio Khalil

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = (SELECT BookID FROM Books WHERE Barcode = 6435968624)
AND ReturnedDate ISNULL;

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = (SELECT BookID FROM Books WHERE Barcode = 5677520613)
AND ReturnedDate ISNULL;

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = (SELECT BookID FROM Books WHERE Barcode = 8730298424)
AND ReturnedDate ISNULL;

SELECT Loans.LoanID, Loans.LoanDate, Loans.DueDate, Loans.ReturnedDate, Books.Barcode
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE Loans.ReturnedDate = '2022-07-05'