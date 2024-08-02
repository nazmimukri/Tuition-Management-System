# TRIGGERS

# Update the enroll status of a student after he has paid his fees
CREATE TRIGGER ActivateEnroll 
AFTER UPDATE ON Payment 
FOR EACH ROW
BEGIN
	IF NEW.Payment_Status = 'Paid' THEN
		UPDATE Enroll 
		SET Enroll_Status = Active 
		WHERE Enroll_ID = NEW.Enroll_ID
			AND Enroll_Status = 'Inactive';
	END IF;
END;

UPDATE Payment
SET Payment_Status = 'Paid', Payment_Date = '2016-03-30' 
WHERE Payment_ID = 70015;