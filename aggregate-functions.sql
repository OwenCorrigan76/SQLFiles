use library;

#Page 2 Exercises (Aggregate Functions Exercises)
select count(studentId) as 'Number of Waterford Students' from student where county = 'Waterford';
select count(ISBN) as 'Number of Database books' from book where title like '%Database%';
select max(price) as 'Most expensive book price' from book;
select min(price) as 'Least expensive book price' from book;
select avg(price) as 'Average book price' from book;
select count(distinct county) as 'Number of student counties' from student;

#Page 3 Exercise (Rounding)
select round(avg(price),2) as 'Average book price' from book;

#Page 4 Exercises (Group By)
select count(copyId) as 'Number of book copies' from bookcopy;
select ISBN, count(copyId) as 'Number of Copies of each Book' from bookcopy group by isbn;
select Category, count(ISBN) as 'Number of books per Category' from book group by category;
select Publisher, max(price) as 'Most expensive book price', min(price) as 'Least expensive book price' from book
group by publisher;

#Page 5 Exercises (Having)
select Category, count(ISBN) as 'Number of books per Category' from book group by category having count(ISBN) >=3;
select Publisher, max(price) as 'Most expensive book price', min(price) as 'Least expensive book price' from book
group by publisher having max(price) >=60;

#Movies Exercise

use movies;

#1.
desc film;
desc reviewer;
desc rating;

#2.
select title from film where director = 'Steven Spielberg';

#3.
select title, releaseYear  from film where releaseYear between 1940 and 1990 order by title;

#4.
select title, length  from film where length >=110 order by title;

#5.
select title, director from film where director like '% C%';

#6.
select fID as 'Film Id', stars,ratingdate
from rating
where stars in(4,5)
order by stars desc, fid;

#7.
select rId from rating
where ratingdate is null;

#8.
select count(fID) as 'Number of Movies' from film;

#9.
select count(rID) as 'Number of Reviewers' from reviewer;

#10.
select count(ratingId) as 'Number of Ratings Provided' from rating;

#11.
select director, count(fID) as 'Number of Films' from film group by director;

#12.
select rID, count(ratingId) as 'Number of Reviews (Reviewer)' from rating group by rId;

#13.
select director, round(avg(length)) as 'Average Number of Minutes per Film' from film group by director;
