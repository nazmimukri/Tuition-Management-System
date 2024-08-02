# VIEW

# To view payment id, total fees and enroll id for payment which have the fees equal to 50
CREATE VIEW Fees_50 AS 
SELECT Payment_ID, Total_Fees, Enroll_ID 
FROM Payment 
WHERE Total_Fees = 50;

SELECT * FROM Fees_50;

# A view to check students who has not paid the fees
CREATE VIEW UnpaidFee AS 
SELECT s.Student_Name, p.Payment_ID, p.Payment_Status, p.Total_Fees 
FROM Payment p
JOIN Enroll e ON p.Enroll_ID = e.Enroll_ID
JOIN Student s ON s.Student_ID = e.Student_ID
WHERE p.Payment_Status = 'Not Paid';

SELECT * FROM UnpaidFee;

# A view to see students taking Math subject
CREATE VIEW SubjectStudentMath AS 
SELECT s.Student_ID, s.Student_Name, sub.Subject_Name, c.Class_ID 
FROM Student s, Enroll e, Class c, Subject sub 
WHERE s.Student_ID = e.Student_ID 
AND e.Class_ID = c.Class_ID 
AND c.Subject_ID = sub.Subject_ID 
AND sub.Subject_ID = 2001;

SELECT * FROM SubjectStudentMath;

# A view to see students taking English subject 
CREATE VIEW SubjectStudentEnglish AS
SELECT s.Student_ID, s.Student_Name, sub.Subject_Name, c.Class_ID 
FROM Student s, Enroll e, Class c, Subject sub 
WHERE s.Student_ID = e.Student_ID 
AND e.Class_ID = c.Class_ID 
AND c.Subject_ID = sub.Subject_ID 
AND sub.Subject_ID = 2002;

SELECT * FROM SubjectStudentEnglish;

# A view to see students taking Physics subject
CREATE VIEW SubjectStudentPhysics AS 
SELECT s.Student_ID, s.Student_Name, sub.Subject_Name, c.Class_ID 
FROM Student s, Enroll e, Class c, Subject sub
WHERE s.Student_ID = e.Student_ID 
AND e.Class_ID = c.Class_ID 
AND c.Subject_ID = sub.Subject_ID 
AND sub.Subject_ID = 2003;

SELECT * FROM SubjectStudentPhysics;