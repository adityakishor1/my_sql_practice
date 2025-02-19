--  create a table to store book information.

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Price DECIMAL(10, 2),
    PublishedYear INT
);

-- Insert Sample Data

INSERT INTO Books (BookID, Title, Author, Genre, Price, PublishedYear) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 10.99, 1925),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 7.99, 1960),
(3, '1984', 'George Orwell', 'Dystopian', 8.99, 1949),
(4, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 6.99, 1951),
(5, 'Brave New World', 'Aldous Huxley', 'Dystopian', 9.99, 1932),
(6, 'The Road', 'Cormac McCarthy', 'Fiction', 12.99, 2006);

-- Find books that are in the 'Fiction' genre and cost more than $8.

SELECT * FROM Books
WHERE Genre = 'Fiction' AND Price > 8;


-- Find books that are either in the 'Dystopian' genre or published before 1950.

SELECT * FROM Books
WHERE Genre = 'Dystopian' OR PublishedYear < 1950;

-- Find books that are not in the 'Fiction' genre.

SELECT * FROM Books
WHERE NOT Genre = 'Fiction';

-- Combining Operators

SELECT * FROM Books
WHERE (Genre = 'Dystopian' OR PublishedYear > 2000) 
AND NOT Author = 'George Orwell';

use aditya;





select * from books;
