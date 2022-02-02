use library;

#Page 2 Exercise

SELECT count(loanid) as 'Number of loans' 
FROM loan 
WHERE studentid = 
  (SELECT studentid 
   FROM student 
   WHERE studentid ='20038967');

#Page 3 Exercises

select title, price from book 
where price = (select min(price) from book);

select title, price from book 
where price > (select avg(price) from book);


# Page 4 Exercise

select title from book 
where title not in 
  (select title from book natural join bookcopy natural join loan)
order by title;

# Page 5 Exercise

SELECT title, publishedDate, price
FROM book 
WHERE publishedDate > ALL 
                  (SELECT publishedDate 
                   FROM book
                   WHERE title = 'JavaScript');
