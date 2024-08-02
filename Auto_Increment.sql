# AUTO-INCREMENT

CREATE TABLE Parents ( 
    Parent_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Parent_Name varchar(50),
    Parent_IC char(12), 
    Phone_Number varchar(11), 
    Parent_Email varchar(50)
);

INSERT INTO Parents (Parent_Name, Parent_IC, Phone_Number, Parent_Email) VALUES 
('Jackson', '660921104936', '0178931048', 'jackson@gmail.com'),
('Jeremy', '701029015793', '0186437964', 'jeremy@gmail.com'), 
('Wang', '750813037249', '0123318241', 'wang@gmail.com'),
('Nazmi', '770916056031', '0145262468', 'nazmi@yahoo.com'), 
('Natasha', '720414077964', '0183014462', 'natasha@hotmail.com'),
('Ali', '741028140962', '0150193049', 'ali@hotmail.com'),
('Sharvin', '771130148079', '0133408768', 'sharvin@gmail.com');