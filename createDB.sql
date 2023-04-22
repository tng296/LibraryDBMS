create database LibraryDBMS;
use LibraryDBMS;

CREATE TABLE Branch (
  branchID VARCHAR(4) NOT NULL UNIQUE KEY,
  address VARCHAR(255) NOT NULL,
  openHour TIME NOT NULL,
  closeHour TIME NOT NULL,
  openDay TEXT NOT NULL,
  PRIMARY KEY (branchID)
);
CREATE TABLE Admin (
  adminID VARCHAR(4) NOT NULL UNIQUE KEY,
  title VARCHAR(50) NOT NULL,
  lName VARCHAR(50) NOT NULL,
  fName VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  sex ENUM('M', 'F') NOT NULL,
  email VARCHAR(255) NOT NULL,
  branchID VARCHAR(4) NOT NULL,
  PRIMARY KEY (adminID),
  FOREIGN KEY (branchID) REFERENCES Branch(branchID)
);
CREATE TABLE Staff (
  staffID VARCHAR(4) NOT NULL UNIQUE KEY,
  title VARCHAR(50) NOT NULL,
  lName VARCHAR(50) NOT NULL,
  fName VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  sex ENUM('M', 'F') NOT NULL,
  email VARCHAR(255) NOT NULL,
  branchID VARCHAR(4)NOT NULL,
  hiredBy VARCHAR(4)NOT NULL,
  PRIMARY KEY (staffID),
  FOREIGN KEY (branchID) REFERENCES Branch(branchID),
  FOREIGN KEY (hiredBy) REFERENCES Admin(adminID)
);
CREATE TABLE Member (
  memberID VARCHAR(4) NOT NULL UNIQUE KEY,
  lName VARCHAR(50) NOT NULL,
  fName VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  sex ENUM('M', 'F') NOT NULL,
  DOB DATE NOT NULL,
  email VARCHAR(255) NOT NULL,
  status ENUM('Active', 'Expired') NOT NULL,
  hold BOOLEAN NOT NULL,
  PRIMARY KEY (memberID)
);
CREATE TABLE Book (
  isbn VARCHAR(13) NOT NULL UNIQUE,
  genre VARCHAR(50) NOT NULL,
  title VARCHAR(255) NOT NULL,
  branchID VARCHAR(4) NOT NULL,
  status ENUM('Available', 'On Loan', 'Lost') NOT NULL,
  publishedBy VARCHAR(255) NOT NULL,
  language VARCHAR(50) NOT NULL,
  shelf VARCHAR(50) NOT NULL,
  PRIMARY KEY (isbn),
  FOREIGN KEY (branchID) REFERENCES Branch(branchID)
);
CREATE TABLE Author (
  authorID VARCHAR(4) PRIMARY KEY,
  lName VARCHAR(255) NOT NULL,
  fName VARCHAR(255) NOT NULL
);
CREATE TABLE WrittenBy (
  isbn VARCHAR(13) NOT NULL,
  authorID VARCHAR(4) NOT NULL,
  PRIMARY KEY (isbn, authorID),
  FOREIGN KEY (isbn) REFERENCES Book(isbn),
  FOREIGN KEY (authorID) REFERENCES Author(authorID)
);
CREATE TABLE Request (
  requestID VARCHAR(4) NOT NULL UNIQUE KEY,
  memberID VARCHAR(4) NOT NULL,
  status ENUM('Pending', 'Approved', 'Denied') NOT NULL,
  staffID VARCHAR(4) NOT NULL,
  date DATE NOT NULL,
  time TIME NOT NULL,
  branchID VARCHAR(4) NOT NULL,
  PRIMARY KEY (requestID),
  FOREIGN KEY (memberID) REFERENCES Member(memberID),
  FOREIGN KEY (staffID) REFERENCES Staff(staffID),
  FOREIGN KEY (branchID) REFERENCES Branch(branchID)
);
CREATE TABLE Register (
  username VARCHAR(255) NOT NULL,
  password VARCHAR(50) NOT NULL,
  staffID VARCHAR(4) ,
  memberID VARCHAR(4),
  PRIMARY KEY (username),
  FOREIGN KEY (staffID) REFERENCES Staff(staffID),
  FOREIGN KEY (memberID) REFERENCES Member(memberID)
);
CREATE TABLE `Order` (
  orderID VARCHAR(4) NOT NULL UNIQUE KEY,
  requestID VARCHAR(4) NOT NULL,
  isbn VARCHAR(13) NOT NULL UNIQUE,
  borrowDate DATE NOT NULL,
  returnDate DATE NOT NULL,
  status ENUM('Pending', 'Active', 'Returned', 'Overdue') NOT NULL,
  dueDate DATE NOT NULL,
  accuredFine DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (orderID),
  FOREIGN KEY (requestID) REFERENCES Request(requestID),
  FOREIGN KEY (isbn) REFERENCES Book(isbn)
);
