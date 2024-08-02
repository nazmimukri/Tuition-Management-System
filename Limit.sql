# LIMIT

# The query allows the staff to check for payments, without having to look at the data at the top of the list anymore
SELECT * 
FROM Payment
LIMIT 20 OFFSET 5;