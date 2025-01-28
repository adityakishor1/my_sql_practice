-- Step 1: Create the Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    CopiesAvailable INT
);

-- Step 2: Create the Members table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    JoinDate DATE
);

-- Step 3: Create the BorrowRecords table
CREATE TABLE BorrowRecords (
    RecordID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Step 4: Insert sample data into Books
INSERT INTO Books (BookID, Title, Author, Genre, CopiesAvailable)
VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 5),
(2, '1984', 'George Orwell', 'Dystopian', 3),
(3, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 4);

-- Step 5: Insert sample data into Members
INSERT INTO Members (MemberID, Name, Email, JoinDate)
VALUES
(101, 'Alice Johnson', 'alice@example.com', '2022-01-15'),
(102, 'Bob Smith', 'bob@example.com', '2023-03-10');

-- Step 6: Insert sample data into BorrowRecords
INSERT INTO BorrowRecords (RecordID, MemberID, BookID, BorrowDate, ReturnDate)
VALUES
(1, 101, 1, '2023-12-01', NULL),
(2, 102, 2, '2023-12-15', '2023-12-20');

-- Step 7: Perform Queries
-- a. List all books with their details
SELECT * FROM Books;

-- b. Find all members who joined after 2022
SELECT * FROM Members WHERE JoinDate > '2022-01-01';

-- c. Get a list of books currently borrowed and by whom
SELECT 
    Members.Name AS MemberName,
    Books.Title AS BookTitle,
    BorrowRecords.BorrowDate
FROM BorrowRecords
JOIN Members ON BorrowRecords.MemberID = Members.MemberID
JOIN Books ON BorrowRecords.BookID = Books.BookID
WHERE BorrowRecords.ReturnDate IS NULL;

-- d. Count the total number of books available in the library
SELECT SUM(CopiesAvailable) AS TotalBooksAvailable FROM Books;

-- e. Find the most borrowed book (Bonus)
SELECT 
    Books.Title,
    COUNT(BorrowRecords.BookID) AS TimesBorrowed
FROM BorrowRecords
JOIN Books ON BorrowRecords.BookID = Books.BookID
GROUP BY Books.Title
ORDER BY TimesBorrowed DESC
LIMIT 1;
