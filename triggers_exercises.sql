USE MOVIES;

DELIMITER $$
 CREATE TRIGGER starscheck 
 BEFORE INSERT ON RATING 
 FOR EACH ROW 
 IF NEW.stars > 5 THEN SET NEW.stars = 5; 
END IF $$
DELIMITER ;

select * from rating; 

insert into rating(rID, fID, stars, ratingDate)
values (208, 102, 6, "2020-10-22");

create table filmratings_count (
  filmid int primary key,
  count tinyint unsigned
);

insert into filmratings_count values (101,2);
insert into filmratings_count values (102,1);
insert into filmratings_count values (103,2);
insert into filmratings_count values (104,3);
insert into filmratings_count values (105,0);
insert into filmratings_count values (106,2);
insert into filmratings_count values (107,2);
insert into filmratings_count values (108,2);

DELIMITER $$
CREATE TRIGGER after_rating_insert
    AFTER INSERT ON RATING
    FOR EACH ROW 
BEGIN
    UPDATE filmratings_count
    SET count  = count + 1
    WHERE filmid = NEW.fID;
END $$
DELIMITER ;

insert into rating(rID, fID, stars, ratingDate)
values (208, 102, 4, "2020-10-22");

insert into rating(rID, fID, stars, ratingDate)
values (208, 103, 3, "2020-10-22");

insert into rating(rID, fID, stars, ratingDate)
values (208, 103, 2, "2020-10-22");