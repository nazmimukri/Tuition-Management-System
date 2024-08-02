# AGGREGATE FUNCTION

# Total number of fees that has to be collected for Maths subject
SELECT COUNT(*) AS AmountOfStudents
FROM Payment p, Enroll e, Class c, Subject sub 
WHERE e.Enroll_ID = p.Enroll_ID 
	AND c.Class_ID = e.Class_ID 
	AND sub.Subject_ID = c.Subject_ID 
	AND sub.Subject_ID = 2001;

# Total number of fees that has to be collected for English subject
SELECT COUNT(*) AS AmountOfStudents 
FROM Payment p, Enroll e, Class c, Subject sub 
WHERE e.Enroll_ID = p.Enroll_ID 
	AND c.Class_ID = e.Class_ID 
	AND sub.Subject_ID = c.Subject_ID 
	AND sub.Subject_ID = 2002;

# Total number of fees that has to be collected for Physics subject
SELECT COUNT(*) AS AmountOfStudents
FROM Payment p, Enroll e, Class c, Subject sub 
WHERE e.Enroll_ID = p.Enroll_ID 
	AND c.Class_ID = e.Class_ID 
	AND sub.Subject_ID = c.Subject_ID 
	AND sub.Subject_ID = 2003;