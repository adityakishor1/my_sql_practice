SELECT E.StudentID, S.Name, COUNT(*) AS TotalCourses
FROM Enrollments E
JOIN Students S ON E.StudentID = S.StudentID
GROUP BY E.StudentID, S.Name
HAVING COUNT(*) > 1;