# CASE STATEMENT

# If the payment for enrollment is made a week after enrollment, 
# the query will return the comment based on students’ payment date
SELECT s.Student_Name, p.Payment_Date,
CASE
    WHEN p.Payment_Date BETWEEN DATE_ADD(e.Enroll_Date, INTERVAL 1 WEEK) AND DATE_ADD(e.Enroll_Date, INTERVAL 1 WEEK) THEN 'The payment is on time'
    WHEN p.Payment_Date > DATE_ADD(e.Enroll_Date, INTERVAL 1 WEEK) THEN 'The payment is late'
    ELSE 'No payment yet'
END AS PaymentText
FROM Payment p
JOIN Enroll e ON p.Enroll_ID = e.Enroll_ID
JOIN Student s ON s.Student_ID = e.Student_ID
WHERE s.Student_ID = 50002;