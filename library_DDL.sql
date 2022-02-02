-- -----------------------------------------------------
-- Drop the 'library' database/schema
-- -----------------------------------------------------

DROP SCHEMA IF EXISTS library;
-- -----------------------------------------------------
-- Create 'library' database/schema and use this database
-- -----------------------------------------------------


CREATE SCHEMA IF NOT EXISTS library;

USE library;

-- -----------------------------------------------------
-- Drop tables
-- -----------------------------------------------------

-- drop table Author;
-- drop table Loan;
-- drop table BookCopy;
-- drop table Book;
-- drop table Student;

-- -----------------------------------------------------
-- Create table Book
-- -----------------------------------------------------

create table Book (
ISBN varchar(15) not null,
title varchar(50) not null,
publisher varchar(30),
publishedDate date,
category varchar(30),
price decimal(5,2),
primary key (ISBN)
);


-- -----------------------------------------------------
-- Create table Author
-- -----------------------------------------------------

create table Author(
aName varchar(40) not null,
ISBN varchar(15) not null,
primary key (aName, ISBN),
constraint fk_author foreign key (ISBN) references Book(ISBN)
on update cascade on delete cascade
);


-- -----------------------------------------------------
-- Create table BookCopy
-- -----------------------------------------------------

create table BookCopy(
copyId int   not null,
ISBN varchar(15) not null,
dateAcquired date not null,
dateDestroyed date,
primary key (copyId),
constraint fk_book foreign key(ISBN) references Book(ISBN) 
on update cascade 
on delete no action
);

-- -----------------------------------------------------
-- Create table Student
-- -----------------------------------------------------

create table Student( 
studentId varchar(9) not null,
fName varchar(20) not null,
lName varchar(20) not null,
street varchar(20) not null,
town varchar(20) not null,
county varchar(15) not null,
course varchar(5),
year tinyint unsigned,
primary key (studentId)
);

-- -----------------------------------------------------
-- Create table Loan
-- -----------------------------------------------------

create table Loan(
loanId int auto_increment not null,
copyId int not null,
studentId varchar(9) not null,
dateOut date not null,
dateDue date not null,
dateBack date,
primary key (loanId),
constraint fk_copyloan foreign key (copyId) references BookCopy(copyId) 
on update cascade on delete no action,
constraint fk_copystudent foreign key (studentId) references Student(studentId) 
on update cascade on delete no action
);

CREATE TABLE journal (
  ISSN varchar(15) not null,
  title varchar(50) not null,
  category varchar(30),
  primary key (ISSN)
 ); -- create table

commit;

USE library;






