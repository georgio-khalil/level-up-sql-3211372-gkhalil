-- Challenge 02_01: Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

-- Solution by Georgio Khalil:

SELECT count(BookID) FROM Books
WHERE Title = 'Dracula';

SELECT count(Loans.BookID)
FROM Loans JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula' AND Loans.ReturnedDate ISNULL;

SELECT
(SELECT count(BookID) FROM Books
WHERE Title = 'Dracula') - 
(SELECT count(Loans.BookID)
FROM Loans JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula' AND Loans.ReturnedDate ISNULL)
AS AvailableCopies;