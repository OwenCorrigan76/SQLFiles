use library;

select dateOut, county
From loan join student
on loan.studentId=student.studentId;

SELECT copyId, title 
FROM book JOIN bookcopy;

SELECT copyId, title 
FROM book JOIN bookcopy
ON book.isbn=bookcopy.isbn; 

SELECT title, copyId 
FROM book JOIN bookcopy 
ON book.isbn=bookcopy.isbn
where title like '%javascript%';

SELECT copyid, title, publisher, dateacquired                            
FROM book JOIN bookcopy                                                   
ON book.isbn = bookcopy.isbn                                                             
WHERE category = 'Computing'; 

SELECT title, count(copyId) AS "Number of Books"  
FROM book JOIN bookcopy                                                            
ON book.isbn = bookcopy.isbn                                             
GROUP BY title; 

SELECT concat(fname,' ',lname) AS Name, isbn, dateOut, dateBack         
FROM bookcopy JOIN loan 
ON  bookcopy.copyId = loan.copyId 
JOIN student 
ON loan.studentId = student.studentId;

SELECT concat(fname,' ',lname) AS Name, title, dateOut, dateBack           
FROM bookcopy JOIN book  
ON  bookcopy.isbn = book.isbn    
JOIN loan         
ON bookcopy.copyId = loan.copyId 
JOIN student   
ON student.studentId = loan.studentId;

SELECT * 
FROM student;
SELECT * 
FROM loan;

SELECT concat(fname,' ', lname) AS 'Name', copyId      
FROM student JOIN loan           
ON student.studentid = loan.studentid;

SELECT concat(fname,' ', lname) AS Name, copyId 
FROM student LEFT JOIN loan 
ON student.studentid = loan.studentid;

SELECT concat(fname,' ', lname) AS Name, copyId 
FROM loan RIGHT JOIN student 
ON student.studentid = loan.studentid;

SELECT bookcopy.copyId, title, dateOut, dateBack 
FROM book JOIN bookcopy ON book.isbn = bookcopy.isbn 
LEFT JOIN loan 
ON bookcopy.copyId = loan.copyId;

SELECT bookcopy.copyId, title, dateOut, dateBack 
FROM loan RIGHT JOIN bookcopy
ON bookcopy.copyId = loan.copyId
JOIN book ON book.isbn = bookcopy.isbn;

SELECT curdate() AS 'Todays Date';

SELECT now() AS 'Todays Date and Time';

SELECT DATE_FORMAT(curdate(),'%d %b %y')  AS 'Todays Date';

SELECT DATE_FORMAT(curdate(),'%d-%b-%y') AS 'Todays Date';

SELECT loanId, DATEDIFF(curdate(), dateDue) AS 'Number of Days Overdue' 
FROM loan 
WHERE dateback IS NULL;

SELECT concat(fname, ' ' , lname) AS Name, title, 
       DATEDIFF(curdate(),dateDue) AS 'Number of Days Overdue' 
FROM book JOIN bookcopy ON book.isbn=bookcopy.isbn 
JOIN loan ON bookcopy.copyId = loan.copyId 
JOIN student ON loan.studentid = student.studentid
WHERE dateback IS NULL;

SELECT 12 + 14; 
SELECT 12 - 14; 
SELECT 12 * 14; 
SELECT 12 / 14; 
SELECT 12 % 14; 

create index booktitleind on book(title);
show index from book;

