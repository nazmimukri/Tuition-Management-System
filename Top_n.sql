# DISPLAY TOP N RECORDS

# To get the top 3 highest number of students in one class
SELECT c.Class_ID, COUNT(DISTINCT e.Student_ID) AS Amount
FROM Enroll e
JOIN Class c ON e.Class_ID = c.Class_ID
GROUP BY c.Class_ID
ORDER BY Amount DESC
LIMIT 3;