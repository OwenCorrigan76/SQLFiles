use library;

select * from book;
select * from book;
select * from author;
select * from loan; 

INSERT INTO Book VALUES
('133451216', 'Backbone JS', 'Sitepoint', '2012-10-28','Computing', 60.00), 
('134562135', 'Sociology in Practice', 'Prentice Hall', '2010-05-08', 'Humanities', 78.00);

insert into BookCopy (ISBN, dateAcquired) values
 ('133451216','2012-12-10'),
 ('133451216','2012-12-10'), 
 ('134562135','2011-08-01');
 

delete from BookCopy
where isbn='133451216''133451216''134562135';

select  *  from book;

delete from Book
where isbn='133451216''133451216''134562135';

delete from book;

select * from book;

UPDATE student SET year = 1;

select * from student;
UPDATE student SET year = 1;

select * from student;

UPDATE student SET county = Dublin;
select * from student;

UPDATE student SET course = "ww";

UPDATE student SET year = 1;

UPDATE student SET county = "Dublin";
select * from student;


INSERT INTO Book (ISBN, title, publisher, publishedDate, category, price)
VALUES ('133312345', 'Learning SQL', 'O Riley', '2009-05-08','Computing', 25.00);

insert into BookCopy (dateAcquired) values
 ('2009-09-01'); 
 
insert INTO BookCopy (ISBN, dateAcquired)
VALUES ('133451216','2020-09-01');

select * from BookCopy;

UPDATE book 
SET price = (25.00) 
WHERE ISBN = '133312345';

DELETE FROM Book
where ISBN = '123675432'; 


select fName as "First Name", lName as "Last Name"
from student;

select concat (fname, " ", lname) as Name,
concat( street, ", ",town, ",", county) as Address
from student; 

select category from book;

select distinct category from book;

select * from book where
title like "%javascript%";
 
select * from student where
fname = "james" || "rose";

describe book;

desc author;

select * from student;

select fname, lname, county from student
where year = 1;

select * from student
where year = 1;

select fname as 'First Name', lname as 'Last Name';

SELECT concat(fname, ' ', lname) AS Name 
from student;
SELECT publisher 
FROM book; 

select title from book
where category = "computing";

select concat (county) as student_county
from student;

select title, publisher from book 
where title like '%engineering%';

select * from Book where publishedDate 
between 2008-01-01 and 2013-12-31;

SELECT * 
FROM book 
WHERE category Not IN ('Computing', 'Business', 'Engineering');

SELECT * 
FROM book 
WHERE title like '%Science%' AND price <= 50;

select round(avg(price)) as "Average Book Price" from book;

select county as County,
count(studentId) as "Number of Students"
 from student
 group by county
 order by county;
 SELECT COUNT(ISBN) as "Book Count";
 
 SELECT COUNT(studentId) 
FROM student;
SELECT COUNT(studentId) 
FROM student;

SELECT COUNT(copyId) as 'JavaScript Book Count' 
FROM bookcopy 
WHERE isbn = '123675432';

SELECT round (AVG(price),2) as 'Average Computing Book Price' 
FROM book 
WHERE category = 'Computing';

SELECT COUNT(ISBN) as 'No of Database Books' 
FROM book
where title like '%Database%';

SELECT max(price) as 'Least Expensive Book Price' 
FROM book;

SELECT county as "FFF", COUNT(studentId) as "Counted Counties"
FROM student 
GROUP BY County;
