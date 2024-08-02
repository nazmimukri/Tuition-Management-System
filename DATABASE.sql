CREATE DATABASE TuitionClass;

CREATE TABLE Subject ( 
Subject_ID int NOT NULL PRIMARY KEY, 
Subject_Name varchar(30), 
Subject_Fees int 
);
INSERT INTO Subject VALUES (2001, 'Mathematics', 30); 
INSERT INTO Subject VALUES (2002, 'English', 30);
INSERT INTO Subject VALUES (2003, 'Physics', 50);

CREATE TABLE Teacher ( 
Teacher_ID int NOT NULL PRIMARY KEY,  
Teacher_Name varchar(50), 
Teacher_IC char(12), 
Teacher_Email varchar(50), 
Phone_Number varchar(11), 
Subject_ID int, 
FOREIGN KEY (Subject_ID) REFERENCES Subject
);
INSERT INTO Teacher VALUES (10001, 'Adrian', '840615108973', 'adrian@tuition.edu.my', '01132681973', 2001); 
INSERT INTO Teacher VALUES (10002, 'Abdullah', '990710107963', 'abdullah@tuition.edu.my', '0193267962', 2002); 
INSERT INTO Teacher VALUES (10003, 'Kin Man', '770130140893', 'kinman@tuition.edu.my', '0154271980', 2003); 
INSERT INTO Teacher VALUES (10004, 'Shamalan', '790315142973', 'shamalan@tuition.edu.my', '0175203970', 2001); 

CREATE TABLE Class ( 
Class_ID int NOT NULL PRIMARY KEY, 
Class_Name varchar(20), 
Class_Time smallint, 
Class_Day varchar(9), 
Subject_ID int, 
FOREIGN KEY (Subject_ID) REFERENCES Subject 
);
INSERT INTO Class VALUES (3001, 'Alpha', 1400, 'Monday', 2001); 
INSERT INTO Class VALUES (3002, 'Beta', 1600, 'Tuesday', 2001); 
INSERT INTO Class VALUES (3003, 'Charlie', 1600, 'Wednesday', 2002); 
INSERT INTO Class VALUES (3004, 'Delta', 1600, 'Monday', 2002); 
INSERT INTO Class VALUES (3005, 'Echo', 1800, 'Thursday', 2003); 
INSERT INTO Class VALUES (3006, 'Foxtrot', 1800, 'Friday', 2003);

CREATE TABLE Parents ( 
Parent_ID int NOT NULL PRIMARY KEY, 
Parent_Name varchar(50), 
Parent_IC char(12), 
Phone_Number varchar(11), 
Parent_Email varchar(50) 
);
INSERT INTO Parents VALUES (40001, 'Jackson', '660921104936', '0178931048', 'jackson@gmail.com'); 
INSERT INTO Parents VALUES (40002, 'Jeremy', '701029015793', '0186437964', 'jeremy@gmail.com'); 
INSERT INTO Parents VALUES (40003, 'Wang', '750813037249', '0123318241', 'wang@gmail.com'); 
INSERT INTO Parents VALUES (40004, 'Nazmi', '770916056031', '0145262468', 'nazmi@yahoo.com'); 
INSERT INTO Parents VALUES (40005, 'Natasha', '720414077964', '0183014462', 'natasha@hotmail.com'); 
INSERT INTO Parents VALUES (40006, 'Ali', '741028140962', '0150193049', 'ali@hotmail.com'); 
INSERT INTO Parents VALUES (40007, 'Sharvin', '771130148079', '0133408768', 'sharvin@gmail.com');

CREATE TABLE Student ( 
Student_ID int NOT NULL PRIMARY KEY, 
Student_Name varchar(50), 
Student_IC char(12), 
Phone_Number varchar(11), 
Student_Email varchar(50), 
Student_Address varchar(50), 
Parent_ID int, 
FOREIGN KEY (Parent_ID) REFERENCES Parents 
);
INSERT INTO Student VALUES (50001, 'Pei Yi', '990710140833', '01137462268', 'peiyi@gmail.com', 'Jalan 8, Taman Maluri', 40001); 
INSERT INTO Student VALUES (50002, 'Jiaxian', '980520107241', '0132230503', 'jiaxian@yahoo.com', 'Lorong 3/8, Taman Aman', 40002); 
INSERT INTO Student VALUES (50003, 'Ian', '000830059427', '0172593044', 'ian@yahoo.com', 'Jalan 21/3, Taman Gembira', 40003); 
INSERT INTO Student VALUES (50004, 'Ahmad', '970330079541', '0136296811', 'ahmad@hotmail.com', 'Lorong 4, Taman Cyber', 40004);
INSERT INTO Student VALUES (50005, 'Muqri', '010131140855', '0157682113', 'muqri@gmail.com', 'Jalan 1, Taman Gaya', 40005);
INSERT INTO Student VALUES (50006, 'Naveen', '000524109843', '0127689573', 'naveen@gmail.com', 'Lorong 3/28, Taman Putra', 40006); 
INSERT INTO Student VALUES (50007, 'Joel', '980627056532', '0144953751', 'joel@hotmail.com', 'Jalan 10, Taman Gembira', 40007); 
INSERT INTO Student VALUES (50008, 'Pradnesh', '020120142781', '0136185721', 'pradnesh@gmail.com', 'Lorong 11, Taman Ampang', 40007); 
INSERT INTO Student VALUES (50009, 'Wai Yeong', '010930143871', '0129979813', 'waiyeong@hotmail.com', 'Jalan 8/10, Taman Cempaka', 40001); 
INSERT INTO Student VALUES (50010, 'Zhan Zhynn', '001031124976', '0179000731', 'zhanzhynn@yahoo.com', 'Jalan 3, Taman Melur', 40003);

CREATE TABLE Staff ( 
Staff_ID int NOT NULL PRIMARY KEY, 
Staff_Name varchar(50), 
Staff_IC char(12), 
Phone_Number varchar(11) 
);
INSERT INTO Staff VALUES (90001, 'Azreeq', '800228077654', '0103049008'); 
INSERT INTO Staff VALUES (90002, 'Kean Yung', '830416071054', '0195347856'); 
INSERT INTO Staff VALUES (90003, 'Jason', '850927140800', '0133402201');

CREATE TABLE Enroll ( 
Enroll_ID int NOT NULL PRIMARY KEY, 
Enroll_Date date, 
Enroll_Status varchar(8) CHECK (Enroll_Status IN ('Active', 'Inactive')) DEFAULT 'Inactive', 
Student_ID int, 
Class_ID int, 
FOREIGN KEY (Student_ID) REFERENCES Student, 
FOREIGN KEY (Class_ID) REFERENCES Class 
);
INSERT INTO Enroll VALUES (60001, '2016-01-29', 'Active', 50001, 3001);
INSERT INTO Enroll VALUES (60002, '2016-01-29', 'Active', 50001, 3004); 
INSERT INTO Enroll VALUES (60003, '2015-12-30', 'Active', 50002, 3006); 
INSERT INTO Enroll VALUES (60004, '2016-03-01', 'Active', 50003, 3003); 
INSERT INTO Enroll VALUES (60005, '2016-04-15', 'Active', 50004, 3001); 
INSERT INTO Enroll VALUES (60006, '2016-04-15', 'Active', 50004, 3004); 
INSERT INTO Enroll VALUES (60007, '2016-04-03', 'Active', 50005, 3005); 
INSERT INTO Enroll VALUES (60008, '2016-02-27', 'Active', 50006, 3002); 
INSERT INTO Enroll VALUES (60009, '2016-02-27', 'Active', 50006, 3005); 
INSERT INTO Enroll VALUES (60010, '2015-12-29', 'Active', 50007, 3005); 
INSERT INTO Enroll VALUES (60011, '2016-01-15', 'Active', 50008, 3002); 
INSERT INTO Enroll VALUES (60012, '2016-05-25', 'Active', 50009, 3003); 
INSERT INTO Enroll VALUES (60013, '2016-05-25', 'Active', 50009, 3006); 
INSERT INTO Enroll VALUES (60014, '2016-04-24', 'Active', 50010, 3001);

CREATE TABLE Payment ( 
Payment_ID int NOT NULL PRIMARY KEY,
Payment_Date date, 
Total_Fees int, 
Payment_Status varchar(8) CHECK (Payment_Status IN ('Paid', 'Not Paid')) DEFAULT 'Not Paid', 
Enroll_ID int, 
Staff_ID int, 
FOREIGN KEY (Enroll_ID) REFERENCES Enroll, 
FOREIGN KEY (Staff_ID) REFERENCES Staff 
);
INSERT INTO Payment VALUES (70001, '2016-01-29', 30, 'Paid', 60001, 90001); 
INSERT INTO Payment VALUES (70002, '2016-01-29', 30, 'Paid', 60002, 90001); 
INSERT INTO Payment VALUES (70003, '2015-12-30', 50, 'Paid', 60003, 90002); 
INSERT INTO Payment VALUES (70004, '2016-03-08', 30, 'Paid', 60004, 90003); 
INSERT INTO Payment VALUES (70005, '2016-04-15', 30, 'Paid', 60005, 90002); 
INSERT INTO Payment VALUES (70006, '2016-04-15', 50, 'Paid', 60006, 90002); 
INSERT INTO Payment VALUES (70007, '2016-04-03', 50, 'Paid', 60007, 90001); 
INSERT INTO Payment VALUES (70008, '2016-02-27', 30, 'Paid', 60008, 90003); 
INSERT INTO Payment VALUES (70009, '2016-02-27', 50, 'Paid', 60009, 90003); 
INSERT INTO Payment VALUES (70010, '2015-12-29', 50, 'Paid', 60010, 90002); 
INSERT INTO Payment VALUES (70011, '2016-01-15', 30, 'Paid', 60011, 90003); 
INSERT INTO Payment VALUES (70012, '2016-05-25', 30, 'Paid', 60012, 90002); 
INSERT INTO Payment VALUES (70013, '2016-05-25', 50, 'Paid', 60013, 90002); 
INSERT INTO Payment VALUES (70014, '2016-04-24', 30, 'Paid', 60014, 90001);