USE Sunlight_Festival;

-- ----------------------------
-- select statements
-- ----------------------------
select  location from stage
where size = '20M';

-- street, town, county and country displayed as Address
select concat (street,' ', town,' ', county, ' ', country) as Address
from act;

select distinct actId from act;

-- more detailed select
select lName 'Last Name'
from guestList
where fName = 'jim';

select * from guestList
where fName like '%im';

-- select a specific range
select street from act
where actId between '11700' and '11710';

select * from act
where actId not between '11700' and '11710';

select * from act
where actId in ('11700', '11710', 11704);

-- not in a specific range
select * from act
where actId not in ('11700', '11710', 11704);

select * from act
where county not in ('limerick', 'dublin', 'cork');

-- calculate average price and rohnd to two decimal points
select round (avg (price),2)
from bar;

-- group and order by
select county as County,
count(actId) as "Number of Acts"
from act
where country ='ireland'
group by county
order by county;

-- more calculations
select max(price) as "Maximum Price of Cider"
from bar
where item = 'Bulmers';

select min(price) as "Minimum Price of Heino"
from bar
where item = 'heiniken';

select round(avg(price), 2) as "AVERAGE Price of Food"
from food;

-- number of acts from counties occuring less than 4 times
select county as County,
count(actId) as "Number of Acts"
from act
group by county
having count(actId)<=4 -- no dublin
order by county;

-- counts number of acts per county
select county as "County", COUNT(actId) as "Number of acts per county"
from act 
group by county
order by county;

-- --------------------------------------
-- join
-- --------------------------------------
-- join bar and vendor
select item, price
From bar join vendor
on bar.uniqueId=vendor.uniqueId;

-- join act and festival
select festival.festivalId, actId as "Band ID", actName as "Band Name", concat(street," ", act.county, " ", country) as Address
from festival join act
on festival.festivalId=act.festivalId;

-- multi join
-- join act, stge and playsOn
select  timeSlot,actName, location, size, engineer
From playsOn join act
on playsOn.actId = act.actId
join stage
on stage.stageId = stage.stageId;


-- -------------------------------------------
-- triggers
-- -------------------------------------------
# drop table food_audit;

DELIMITER $$
create trigger before_food_audit 
 before update on food
 for each row
begin
  insert into food_audit
  set action = 'update',
	Item = old.item,
	Old_price = old.price,
	New_price = new.price,
	Unique_Id = old.uniqueId,
	changedate = NOW(); 
end $$
DELIMITER ;

update food set price = 10.99
where item = 'burger'; -- updating price of burgers

select * from food;
select * from food_audit; -- displays all of the old and new prices

DELIMITER $$
create trigger before_bar_audit 
 before update on bar
 for each row
begin
 insert into bar_audit
 set action = 'update',
	Item = old.item,
	Old_price = old.price,
	New_price = new.price,
	Unique_Id = old.uniqueId,
	changedate = NOW(); 
end $$
DELIMITER ;

show triggers;

update bar set price = 9.99
where item = 'heiniken';

select * from bar;
select * from bar_audit;

-- -------------------------------------
-- indexes
-- -------------------------------------
show index from act; -- displays pk, fk and my entry
show tables; -- views, triggers and indexes are displayed
show index from festival; -- only displays pf and fk (no new index created)
create index festivalind on festival(festivalId); -- pk and festival index
show index from festival;
create index crewind on crew(crewMemberId desc); -- pk and crew index
show index from crew;

-- -----------------------------------
-- views
-- -----------------------------------
-- from created view called nonIrish
select * from nonIrish;

-- calculations on view called priceDetails
update priceDetails
set price = round (price * 1.1 ,2) ; -- percentage rounded increase in price
select * from food;
 
-- --------------------------------------------------- 
-- subquery
-- ---------------------------------------------------
select vendorCode, item, price, uniqueId
from bar 
where price > any 
	(select price 
	from bar
	where item = 'bulmers'); -- displays all items that are greter than the price of bulmers
 
-- ----------------------------
-- Monitoring
-- ----------------------------
explain
select actId 
from act join festival 
on act.festivalId=festival.festivalId;

explain analyze
select actId 
from act join festival 
on act.festivalId=festival.festivalId;
 
 -- ----------------------------
-- Users
-- ----------------------------
drop user EventManager;

create user EventManager identified by 'manager';
grant all on Sunlight_Festival.* to EventManager with grant option; -- can access all

drop user StageManager;

create user StageManager identified by 'stage';
grant insert, update, delete, select on stage to StageManager; -- can only access stage table
SELECT user, host FROM mysql.user; 
