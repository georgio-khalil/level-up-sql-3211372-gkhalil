-- Prepare a report of the library patrons
-- who have checked out the fewest books.

-- Solution by Georgio Khalil

SELECT count(Loans.LoanID) AS LoanCount, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
GROUP BY Patrons.PatronID
ORDER BY BooksCount
LIMIT 15 -- Setting cutoff at 15 books gives us 15/100 results or the bottom 15% of patrons