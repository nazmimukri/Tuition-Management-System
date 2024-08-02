# STORED PROCEDURE

# Find payment to be handled for each class
DELIMITER //

CREATE PROCEDURE ShowPaymentForClass (IN id int)
BEGIN
    DECLARE done int DEFAULT 0;
    DECLARE Payment_ID int;
    DECLARE Payment_Date date;
    DECLARE Payment_Status varchar(8);
    DECLARE Student_ID int;
    DECLARE Staff_ID int;

    DECLARE c CURSOR FOR 
    SELECT p.Payment_ID, p.Payment_Date, p.Payment_Status, s.Student_ID, p.Staff_ID 
    FROM Payment p
    JOIN Enroll e ON p.Enroll_ID = e.Enroll_ID
    JOIN Student s ON s.Student_ID = e.Student_ID
    WHERE e.Class_ID = id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN c;
    
    read_loop: LOOP
        FETCH c INTO Payment_ID, Payment_Date, Payment_Status, Student_ID, Staff_ID;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT Payment_ID, Payment_Date, Payment_Status, Student_ID, Staff_ID;
    END LOOP;

    CLOSE c;
END //

DELIMITER;

CALL ShowPaymentForClass (3001);

# Generate a payment after a student enrolls for a class
DELIMITER //

CREATE PROCEDURE GeneratePayment (IN Cat_ID int, IN Enroll_ID int, IN Staff_ID int)
BEGIN
    IF (Cat_ID = 8001) THEN
        INSERT INTO Payment(Payment_Date, Total_Fees, Payment_Status, Enroll_ID, Staff_ID) 
        VALUES (NULL, 30, 'Not Paid', Enroll_ID, Staff_ID);
    ELSE
        INSERT INTO Payment(Payment_Date, Total_Fees, Payment_Status, Enroll_ID, Staff_ID) 
        VALUES (NULL, 50, 'Not Paid', Enroll_ID, Staff_ID);
    END IF;
END //

DELIMITER ;

CALL GeneratePayment (8001, 60017, 90003);