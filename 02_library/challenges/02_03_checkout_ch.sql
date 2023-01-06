-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

-- Solved by Georgio Khalil

INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES(
(SELECT BookID FROM Books WHERE Barcode = 2855934983),
(SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'),
'2022-08-25', 
'2022-09-08'),
((SELECT BookID FROM Books WHERE Barcode = 4043822646),
(SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'),
'2022-08-25', 
'2022-09-08');

-- Check if recorded entry is valid
SELECT Patrons.FirstName, Patrons.LastName, Books.Title, Books.Barcode, Loans.LoanDate, Loans.DueDate, ReturnedDate FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
ORDER BY LoanID DESC
LIMIT 3