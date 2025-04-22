SELECT b.Genre, SUM(o.Quantity) AS TotalOrdered
FROM Books b
JOIN Orders o ON b.BookID = o.BookID
GROUP BY b.Genre
ORDER BY TotalOrdered DESC
LIMIT 1;

