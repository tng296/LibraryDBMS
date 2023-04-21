INSERT INTO Branch (branchID, address, openHour, closeHour, openDay)
VALUES 
  ('B01', '123 Main St, Anytown, USA', '09:00:00', '17:00:00', 'Mon-Fri'),
  ('B02', '456 Oak Ave, Anytown, USA', '10:00:00', '18:00:00', 'Mon-Sat'),
  ('B03', '789 Elm Blvd, Anytown, USA', '11:00:00', '19:00:00', 'Mon-Sun'),
  ('B04', '1010 Pine Rd, Anytown, USA', '12:00:00', '20:00:00', 'Tue-Sun'),
  ('B05', '1111 Maple Dr, Anytown, USA', '13:00:00', '21:00:00', 'Mon-Thu');

INSERT INTO Admin (adminID, title, lName, fName, age, sex, email, branchID)
VALUES 
('Ad01', 'General Manager', 'Johnson', 'Jessica', 35, 'F', 'jessica.johnson@library.com', 'B01'),
('Ad02', 'General Manager', 'Smith', 'John', 40, 'M', 'john.smith@library.com', 'B02'),
('Ad03', 'Executive Manager', 'Garcia', 'Maria', 30, 'F', 'maria.garcia@library.com', 'B03'),
('Ad04', 'IT Manager', 'Brown', 'David', 45, 'M', 'david.brown@library.com', 'B04'),
('Ad05', 'Bracnhes Manager', 'Taylor', 'Emily', 25, 'F', 'emily.taylor@library.com', 'B05');

INSERT INTO Staff (staffID, title, lName, fName, age, sex, email, branchID)
VALUES 
('S01', 'Floor Staff', 'Lee', 'James', 25, 'M', 'james.lee@library.com', 'B01'),
('S02', 'Floor Staff', 'Wang', 'Linda', 30, 'F', 'linda.wang@library.com', 'B02'),
('S03', 'Floor Staff', 'Kim', 'David', 35, 'M', 'david.kim@library.com', 'B03'),
('S04', 'Warehouse Staff', 'Chen', 'Sophie', 40, 'F', 'sophie.chen@library.com', 'B04'),
('S05', 'Inventory Staff', 'Liu', 'Michael', 45, 'M', 'michael.liu@library.com', 'B05');
  
INSERT INTO Member (memberID, lName, fName, age, sex, DOB, email, status, hold)
VALUES
  ('M01', 'Smith', 'John', 25, 'M', '1998-01-15', 'johnsmith@email.com', 'Active', 0),
  ('M02', 'Doe', 'Jane', 30, 'F', '1993-04-19', 'janedoe@email.com', 'Active', 0),
  ('M03', 'Williams', 'James', 42, 'M', '1981-07-27', 'jameswilliams@email.com', 'Expired', 0),
  ('M04', 'Brown', 'Mary', 19, 'F', '2004-12-03', 'marybrown@email.com', 'Active', 1),
  ('M05', 'Garcia', 'Carlos', 55, 'M', '1968-11-01', 'carlosgarcia@email.com', 'Active', 0),
  ('M06', 'Chen', 'Samantha', 23, 'F', '1998-09-08', 'samanthachen@email.com', 'Expired', 1),
  ('M07', 'Lee', 'David', 37, 'M', '1986-03-12', 'davidlee@email.com', 'Active', 0),
  ('M08', 'Nguyen', 'Thi', 28, 'F', '1995-06-25', 'thinguyen@email.com', 'Active', 0),
  ('M09', 'Gupta', 'Raj', 50, 'M', '1973-12-22', 'rajgupta@email.com', 'Expired', 1),
  ('M10', 'Wang', 'Wei', 31, 'M', '1990-05-02', 'weiwang@email.com', 'Active', 1);

INSERT INTO Book (isbn, genre, title, branchID, status, publishedBy, language, shelf)
VALUES 
('9781408894705', 'Fiction', 'The Testaments', 'B01', 'Available', 'Random House', 'English', 'Fiction A-Z'),
('9780316341686', 'Fiction', 'The Girl Who Takes an Eye for an Eye', 'B02', 'On Loan', 'Hachette Book Group', 'English', 'Mystery & Thriller'),
('9780063021909', 'Fiction', 'The Midnight Library', 'B03', 'Available', 'Viking', 'English', 'Fiction A-Z'),
('9780743273565', 'Non-fiction', 'The Power of Now: A Guide to Spiritual Enlightenment', 'B04', 'Available', 'New World Library', 'English', 'Self-help'),
('9780767908184', 'Non-fiction', 'Blink: The Power of Thinking Without Thinking', 'B05', 'On Loan', 'Little, Brown and Company', 'English', 'Business & Economics');

INSERT INTO Author (authorID, lName, fName) 
VALUES
('au1', 'Mary', 'Johnson'),
('au2', 'Joe', 'Miller'),
('au3', 'Huller', 'Godness'),
('au4', 'Zic', 'Embias'),
('au5', 'Luke', 'Geo');

INSERT INTO WrittenBy (isbn, authorID) 
VALUES
('9781408894705', 'au1'),
('9780316341686', 'au2'),
('9780063021909', 'au3'),
('9780743273565', 'au4'),
('9780767908184', 'au5');

INSERT INTO Register (username, password, staffID, memberID)
VALUES
('ljames.25', 'StaffJames25', 'S01', NULL),
('wlinda.30', 'StaffLinda30', 'S02', NULL),
('kdavid.35', 'StaffDavid35', 'S03', NULL),
('csophie.40', 'StaffSohie40', 'S04', NULL),
('kmichael.45', 'StaffMichael45', 'S05', NULL),
('john1988', 'LoginJ88', NULL, 'M01'),
('jane93', 'LoginJane93', NULL, 'M02'),
('james18', 'Jameslib18', NULL, 'M03'),
('brownm04', 'buttercup2004', NULL, 'M04'),
('gclib68', 'knowledgeisgood', NULL, 'M05'),
('samchen', 'samchouston2k', NULL, 'M06'),
('dlee', 'callmedave', NULL, 'M07'),
('thinguyen95', 'iamthi', NULL, 'M08'),
('raj.gupta', 'humbleastro', NULL, 'M09'),
('wwang', 'oneWaytoWin', NULL, 'M10');

INSERT INTO Request(requestID, memberID, status, staffID, date, time, branchID)
VALUES
('R01', 'M02', 'Approved', 'S03', "2023-01-20", 13.10, 'B05'),
('R02', 'M08', 'Pending', 'S01', "2023-01-21", 15.27, 'B05'),
('R03', 'M03', 'Approved', 'S02', "2023-01-22", 10.49, 'B02'),
('R04', 'M05', 'Denied', 'S02', "2023-02-02", 16.12, 'B03'),
('R05', 'M10', 'Approved', 'S01', "2023-02-10", 9.43, 'B01'),
('R06', 'M07', 'Approved', 'S03', "2023-01-03", 13.36, 'B05'),
('R07', 'M03', 'Pending', 'S02', "2023-03-11", 11.43, 'B04'),
('R08', 'M04', 'Approved', 'S03', "2023-03-21", 12.11, 'B05'),
('R09', 'M10', 'Denied', 'S01', "2023-03-22", 11.54, 'B01'),
('R10', 'M09', 'Approved', 'S01', "2023-03-23", 15.08, 'B04'),
('R11', 'M07', 'Pending', 'S02', "2023-04-04", 14.49, 'B02'),
('R12', 'M08', 'Denied', 'S01', "2023-04-13", 12.49, 'B04'),
('R13', 'M10', 'Approved', 'S03', "2023-04-14", 15.41, 'B01'),
('R14', 'M03', 'Denied', 'S03', "2023-04-14", 13.53, 'B02'),
('R15', 'M01', 'Approved', 'S02', "2023-04-20", 11.43, 'B04'),
('R16', 'M01', 'Approved', 'S03', "2023-04-21", 9.10, 'B03');

INSERT INTO `Order`(orderID, requestID, borrowDate, returnDate, status, dueDate, accuredFine)
VALUES
('C01', 'R01', "2023-01-20", "2023-01-29", 'Returned', "2023-01-27", 20),
('C02', 'R03', "2023-01-22", "2023-01-23", 'Returned', "2023-01-29", 0),
('C03', 'R05', "2023-02-10", "2023-02-24", 'Returned', "2023-02-17", 70),
('C04', 'R06', "2023-03-01", "2023-03-08", 'Returned', "2023-03-08", 0),
('C05', 'R08', "2023-03-21", "2023-03-24", 'Returned', "2023-03-28", 00),
('C06', 'R10', "2023-03-23", "2023-03-31", 'Returned', "2023-03-30", 10),
('C07', 'R13', "2023-04-14", "2023-04-20", 'Pending', "2023-04-21", 0),
('C08', 'R15', "2023-04-20", "2023-04-27", 'Active', "2023-04-27", 0),
('C09', 'R16', "2023-04-21", "2023-04-28", 'Active', "2023-04-28", 0);
