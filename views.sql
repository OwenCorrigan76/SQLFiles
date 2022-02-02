use library;

#Page 2 Exercise
use movies;

create or replace view filmreviewdetails as
select title, releaseYear, name, stars
from film join rating
on film.fid = rating.fid
join reviewer
on reviewer.rid = rating.rid;

select * from filmreviewdetails;

#Page 5 Exercises
create or replace view modernfilms as
select fId, title, releaseYear, director
from film
where releaseYear>1980
with check option;

select * from modernfilms;

insert into modernfilms values (111, 'The Kings Speech', 2010, 'Tom Hooper');
insert into modernfilms values (110, 'Lawrence of Arabia', 1962, 'David Lean');
