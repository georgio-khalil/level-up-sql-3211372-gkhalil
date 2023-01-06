-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

-- Solution by Georgio Khalil:

SELECT Published, count(DISTINCT Title) AS TitleCount
FROM Books
GROUP BY Published
ORDER BY TitleCount DESC;

SELECT Books.Title, count(Loans.LoanID) AS CheckOutCount
FROM Books
JOIN Loans ON Books.BookID = Loans.BookID
GROUP BY Books.Title
ORDER BY CheckOutCount DESC
LIMIT 5;