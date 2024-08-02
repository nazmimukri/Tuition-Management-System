# GROUP BY AND HAVING

# Total classes that have Maths subject 
SELECT sub.Subject_ID, COUNT(Class_ID) AS NumOfClass 
FROM Class c, Subject sub 
WHERE c.Subject_ID = sub.Subject_ID 
GROUP BY sub.Subject_ID 
HAVING sub.Subject_ID = 2001;

# Total classes that have English subject 
SELECT sub.Subject_ID, COUNT(Class_ID) AS NumOfClass 
FROM Class c, Subject sub 
WHERE c.Subject_ID = sub.Subject_ID 
GROUP BY sub.Subject_ID 
HAVING sub.Subject_ID = 2002;

# Total classes that have Physics subject 
SELECT sub.Subject_ID, COUNT(Class_ID) AS NumOfClass 
FROM Class c, Subject sub 
WHERE c.Subject_ID = sub.Subject_ID 
GROUP BY sub.Subject_ID 
HAVING sub.Subject_ID = 2003;