# SUBQUERIES / NESTED QUERIES

# Create new table for status id, status, and student id for insert
CREATE TABLE Status1 ( 
    Status_ID int NOT NULL PRIMARY KEY, 
    Status varchar(30), 
    Student_ID int
);

INSERT INTO Status1 (Status_ID, Status, Student_ID)
SELECT e.Enroll_ID, e.Enroll_Status, s.Student_ID 
FROM Enroll e
JOIN Student s ON e.Student_ID = s.Student_ID;

SELECT * FROM Status1;

# Change the status for status id 60018 to active
UPDATE Status1 
SET Status = 'Active' 
WHERE Status_ID = 60018;

SELECT * FROM Status1;

# Delete Status_ID 60009 from the table
DELETE FROM Status1 
WHERE Status_ID = 60009;

SELECT * FROM Status1;