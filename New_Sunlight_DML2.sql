USE Sunlight_Festival;


-- -----------------------------------------------------
-- Populate table Festival
-- -----------------------------------------------------

insert into Festival values
('Sun2100', 'Tullimore', 'Offaly'),
('Sun2101', 'Tramore', 'Waterford'),
('Sun2102', 'Ballina', 'Mayo'),
('Sun2103', 'Castlebar', 'Mayo'),
('Sun2104', 'Midleton', 'Cork'),
('Sun2105', 'Galway', 'Galway'),
('Sun2106', 'Kilkenny', 'Kilkenny'),
('Sun2107', 'Tallaght', 'Dublin'),
('Sun2108', 'Kilmanham', 'Dublin'),
('Sun2109', 'Letterkenny', 'Donegal'),
('Sun2110', 'Stradbally', 'Waterford'),
('Sun2111', 'Dunboyne', 'Meath'),
('Sun2112', 'Ennis', 'Clare'),
('Sun2113', 'Leixlip', 'Kildare'),
('Sun2114', 'Tuam', 'Galway'),
('Sun2115', 'Clonmel', 'Tipperary'),
('Sun2116', 'Borris', 'Carlow'),
('Sun2117', 'Kinsale', 'Cork'),
('Sun2118', 'Carrick on Suir', 'Tipperary');

-- -----------------------------------------------------
-- Populate table Act
-- -----------------------------------------------------

insert into Act values
('11700','Dave Daly','Mr. Muntz','104 main st.','Mellick','Limerick','Ireland','daved@gmail.com' ,'Sun2100'),
('11701','Owen Corrigan','Dogz','10 main st.','Tallaght','Dublin','Ireland','dogz@gmail.com' ,'Sun2101'),
('11702','Jane Smyth','BNC','14 john st.','Finglas','Dublin','Ireland','mail@hotmail.com' ,'Sun2102'),
('11703','Alan Jones','Tribal Soul','hallows st.','Baltinglass','Wicklow','Ireland','ts@gmail.com' ,'Sun2103'),
('11704','Jimmy Waters','The Fear','1 bowe rd.','Carrick on Shannon','Leitrim','Ireland','fear@gmail.com' ,'Sun2104'),
('11705','Owen Kavenagh','WooHoo','91 park st.','Dublin City','Dublin','Ireland','hed@hotmail.com','Sun2105' ),
('11706','Gayle Barry','KKC','4 main st.','Ballina','Mayo','Ireland','kkc@gmail.com' ,'Sun2106'),
('11707','Audrey Jones','Blitz Creek','the ball rd.','Eaton','London','England','bc123@gmail.com' ,'Sun2107'),
('11708','Keith Duignan','Shazam','21 jump st.','Caherdavin','Limerick','Ireland','shazam21@gmail.com' ,'Sun2108'),
('11709','Billy Higgins','5 of Us','25 fall st.','Glanmire','Cork','Ireland','5ofus@eirmail.com' ,'Sun2109'),
('11710','Barry Murphy','Hail Me','77 no st.','Tuam','Galway','Ireland','hailme@gmail.com' ,'Sun2110'),
('11711','Marie Adams','Disco Freakz','55 upthe st.','Midleton','Cork','Ireland','dance22@freemail.com' ,'Sun2111'),
('11712','Brian O Brien','EMT','john st.','Rialto','Dublin','Ireland','emtmusic@gmail.com' ,'Sun2112'),
('11713','Conor Casey','Lego Love','fenton rd.','Blume','Warwickshire','England','buildlego@gmail.com' ,'Sun2113'),
('11714','Callum Humphreys','Hammers','dunlavin rd.','holywell','Bagelt','Wales','hams@hotmail.com' ,'Sun2114'),
('11715','Elaine Smyth','DMT','22 fenton rd','Talaght','Dublin','Ireland','dmt@gmail.com' ,'Sun2115'),
('11716','Jim Casey','Love 22','John lane', 'Tramore','Waterford','Ireland','22@gmail.com' ,'Sun2116'),
('11717','Maire Browne','Slayer','lennon rd','Athy','Westmeath','Ireland','slayer@gmail.com' ,'Sun2113'),
('11718','Timmy Casidy','ACDC','harper rd','Durrow','Laois','Ireland','acdc@gmail.com' ,'Sun2113'),
('11719','Val Jones','Blupers','oconnell rd','Oranmore','Galway','Ireland','Blupers@gmail.com' ,'Sun2116'),
('11720','Barry Malone','Sugar Cubes','jones rd','Wiclow','Wicklow','Ireland','sugarcubes@gmail.com' ,'Sun2113'),
('11721','Robert Troy','SMK','harry rd.','Oola','Tipperary','Ireland','SMK@gmail.com' ,'Sun2113'),
('11722','James Hetfield','Veins','mill street','Ennis','Claire','Ireland','veins@gmail.com' ,'Sun2112'),
('11723','Tom Araya','The Blood','blue hill','Ballygunner','Waterford','Ireland','theblood@gmail.com' ,'Sun2115'),
('11724','Conor Molloy','Sham79','market place','Mallow','Cork','Ireland','sham77@gmail.com' ,'Sun2118');

-- -----------------------------------------------------
-- Populate table ActPhiones
-- -----------------------------------------------------

insert into ActPhones values
(0831687876, 11700),
(0861645643, 11701),
(0891884426, 11702),
(0831684488, 11703),
(0851684490, 11704),
(0871682367, 11705),
(0861674823, 11706),
(0871633423, 11707),
(0861682424, 11708),
(0867774426, 11709),
(0876654423, 11710),
(0871688820, 11711),
(0861690526, 11712),
(0891669000, 11713),
(0833234001, 11714);



-- -----------------------------------------------------
-- Populate table guestList
-- -----------------------------------------------------

insert into GuestList values


('001','Henry', 'Jones', 'Mr. Muntz', '11700'),
('002','Alan', 'Blake', 'dogz', '11701'),
('003','Mary', 'Kennedy', 'BNC', '11702'),
('004','Jim', 'Dawson', 'Tribal Soul', '11703'),
('005','Owen', 'Stains', 'The Fear', '11704'),
('006','Patricia', 'Lorimar', 'Woohoo', '11705'),
('007','Bobby', 'Jones', 'KKC', '11706'),
('008','Timmy', 'Murphy', 'Blitz Creek', '11707'),
('009','Aaron', 'Heinz', 'Shazam', '11708'),
('010','Nadine', 'Fogarty', '5 of Us', '11709'),
('011','Luke', 'Alder', 'Hail Me', '11710'),
('012','Philomena', 'Fieldman', 'Disco Freakz', '11711');


-- -----------------------------------------------------
-- Populate table Stage
-- -----------------------------------------------------

insert into Stage values
('01', 'ZoneA', '20M'),
('02', 'ZoneB', '30M'),
('03', 'ZoneC', '40M'),
('04', 'ZoneD', '10M'),
('05', 'ZoneE', '20M'),
('06', 'ZoneF', '30M'),
('07', 'ZoneG', '40M'),
('08', 'ZoneH', '50M'),
('09', 'ZoneI', '20M'),
('10', 'ZoneJ', '30M'),
('11', 'ZoneK', '40M'),
('12', 'ZoneL', '50M');

-- -----------------------------------------------------
-- Populate table playsOn
-- -----------------------------------------------------

insert into PlaysOn values
('12:00' , 'Frank Barnes', '11700', '01'),
('12:00' , 'John Foley', '11701', '03'),
('15:00' , 'Eoin Breen', '11702', '09'),
('11:00' , 'Elaine Gilfoyle', '11703', '05'),
('20:00' , 'Tim Cullen', '11704', '07'),
('22:00' , 'Zlatan Zytin', '11705', '01'),
('12:00' , 'Frank Barnes', '11706', '02'),
('12:00' , 'Sharon Foley', '11707', '05'),
('15:00' , 'Eoin Breen', '11708', '06'),
('11:00' , 'Sarah Gill', '11709', '03'),
('20:00' , 'Timothy Curren', '11710', '04'),
('22:00' , 'Belle Ball', '11711', '02');



-- -----------------------------------------------------
-- Populate table Crew
-- -----------------------------------------------------

insert into Crew values
('009001', 'John', 'Jones', 'jj1@gmail.com'),
('009002', 'alan', 'Harte',  'ah2020@gmail.com'),
('009003', 'jimmy', 'Nunes', 'jimn1@gmail.com'),
('009004', 'owen', 'Corrigan',  'OC1@gmail.com'),
('009005', 'brian', 'Smyth', 'smythy@gmail.com'),
('009006', 'tim', 'Smith',  'tims@gmail.com'),
('009007', 'bret', 'Henry',  'brethitman@gmail.com'),
('009008', 'harry', 'McDonald',  'hmc@gmail.com'),
('009009', 'john', 'Maher',  'jmaher@gmail.com'),
('009010', 'frank', 'Lanigan',  'glfl@gmail.com'),
('009011', 'adrian', 'Lyons',  'lyonsy@gmail.com'),
('009012', 'jules', 'Sadlier',  'saddles@gmail.com'),
('009013', 'robbert', 'Curran',  'robC@gmail.com'),
('009014', 'barry', 'Dunne',  'bdunne@gmail.com'),
('009015', 'emmet', 'Dylon',  'emdyl@gmail.com'),
('009016', 'patrick', 'Kavenagh',  'pkpk1@gmail.com'),
('009017', 'daniel', 'Gallagher',  'dg@gmail.com'),
('009018', 'jude', 'Dunne', 'judemeister@gmail.com'),
('009019', 'dylan', 'Samson',  'mamsms@gmail.com'),
('009020', 'keith', 'Malone',  'kmal@gmail.com'),
('009021', 'james', 'Cyrus', 'jc2021@gmail.com'),
('009022', 'owen', 'Christie',  'OcOC@gmail.com'),
('009023', 'david', 'Long', 'LONGER@gmail.com'),
('009024', 'miroslav', 'Kowalczyk',  'mirkow@gmail.com'),
('009025', 'dave', 'Fahey', 'df@gmail.com'),
('009026', 'niall', 'Kinehan',  'kiners@gmail.com'),
('009027', 'pat', 'Travers', 'pahT@gmail.com'),
('009028', 'michael', 'Donnagh', 'md90@gmail.com'),
('009029', 'pav', 'kowalaska', 'pavpav@gmail.com'),
('009030', 'mark', 'Ryan', 'mryan@gmail.com'),
('009031', 'aleksy', 'nowak',  'alemow@gmail.com');

-- -----------------------------------------------------
-- Populate table Runs
-- -----------------------------------------------------

insert into Runs values
('lights', '01', '009001'),
('front of house', '01', '009002'),
('monitors', '01', '009003'),
('backline', '01', '009004'),
('lights', '03', '009005'),
('front of house', '04', '009006'),
('backline', '07', '009007'),
('lights', '04', '009008'),
('monitors', '04', '009009'),
('mixer', '01', '009010'),
('lights', '03', '009011'),
('front of house', '08', '009012'),
('monitors', '07', '009013'),
('backline', '04', '009014'),
('lights', '08', '009015'),
('front of house', '01', '009016'),
('backline', '04', '009017'),
('lights', '07', '009018'),
('monitors', '08', '009019'),
('mixer', '03', '009020'),
('lights', '02', '009021'),
('front of house', '09', '009022'),
('monitors', '10', '009023'),
('backline', '10', '009024'),
('lights', '06', '009025'),
('front of house', '12', '009026'),
('backline', '12', '009027'),
('lights', '12', '009028'),
('monitors', '10', '009029'),
('monitors', '11', '009030'),
('mixer', '11', '009031');


-- -----------------------------------------------------
-- Populate table CrewPhones
-- -----------------------------------------------------

insert into CrewPhones values
(0831687876, 009001),
(0861645643, 009002),
(0891884426, 009003),
(0831684488, 009004),
(0851684490, 009005),
(0871682367, 009006),
(0861674823, 009007),
(0871633423, 009008),
(0861682424, 009009),
(0867774426, 009010),
(0876654423, 009011),
(0871688820, 009012),
(0861690526, 009013),
(0891669000, 009014),
(0833234221, 009015),
(0831684446, 009016),
(0861645673, 009017),
(0891836786, 009018),
(0834314488, 009019),
(0851114490, 009020),
(0871222367, 009021),
(0861744323, 009022),
(0835633423, 009023),
(0861562424, 009024),
(0867778926, 009025),
(0876659993, 009026),
(0871688560, 009027),
(0861690521, 009028),
(0891669033, 009029),
(0833234000, 009030),
(0833234029, 009031);

-- -----------------------------------------------------
-- Populate table Vendor
-- -----------------------------------------------------
insert into Vendor values
('101', 'Smyths Store', '0871682683', 'smyths@gmail.com'),
('102', 'Burgers R US', '0872345321', 'bg@gmail.com'),
('103', 'Rave Chips', '0871682325', 'rave@gmail.com'),
('104', 'Chicken House', '0871682789', 'Ales@gmail.com'),
('105', 'Banging', '0861382583', 'banging@gmail.com'),
('106', 'Corrigans', '0831647883', 'Corrigans@gmail.com'),
('107', 'Taco Heaven', '0834567980', 'taco@gmail.com'),
('108', 'Spuds', '0894532345', 'ciderbar@gmail.com'),
('109', 'Hennings', '0874443334', 'hennings@gmail.com'),
('110', 'BBB', '0832332332', 'bbb@gmail.com'),
('111', 'Bar 4', '0865465467', 'pottom@gmail.com'),
('112', 'Cider House', '0871684444', 'seeds@gmail.com'),
('113', 'Vale Bar', '0834445432', 'vape@gmail.com'),
('114', 'Blaggers Corner', '0870909985', 'blaggersc@gmail.com');

-- -----------------------------------------------------
-- Populate table Food
-- -----------------------------------------------------

insert into Food values
('10001', 'burger', '9.99', '101'),
('10002', 'chicken burger', '9.99', '101'),
('10003', 'chicken curry', '10.99', '101'),
('10004', 'veggie burger', '6', '101'),
('10005', 'salad burger', '9.99', '101'),
('10006', 'chicken goujons', '9.99', '101'),
('10007', 'chicken fillet', '9.99', '101'),
('10008', 'chips', '5.99', '102'),
('10009', 'burger', '9.99', '102'),
('10010', 'chicken burger', '9.99', '102'),
('10011', 'chicken curry', '10.99', '102'),
('10012', 'veggie burger', '6', '102'),
('10013', 'salad burger', '9.99', '102'),
('10014', 'chicken goujons', '9.99', '102'),
('10015', 'chicken fillet', '9.99', '102'),
('10016', 'chips', '5.99', '102'),
('10017', 'burger', '9.99', '103'),
('10018', 'chicken burger', '9.99', '103'),
('10019', 'salad burger', '9.99', '103'),
('10020', 'chicken goujons', '9.99', '103'),
('10021', 'chicken fillet', '9.99', '103'),
('10022', 'chips', '5.99', '103'),
('10023', 'burger', '5.99', '104'),
('10024', 'chicken burger', '4.99', '104'),
('10025', 'chicken curry', '7.99', '104'),
('10026', 'veggie burger', '6', '104'),
('10027', 'chicken goujons', '9.99', '104'),
('10028', 'chicken fillet', '9.99', '104'),
('10029', 'chips', '5.99', '104'),
('10030', 'burger', '9.99', '105'),
('10031', 'chips', '5.99', '105'),
('10032', 'burger', '9.99', '106'),
('10033', 'chicken burger', '9.99', '106'),
('10034', 'chicken curry', '10.99', '106'),
('10035', 'veggie burger', '6', '106'),
('10036', 'salad burger', '9.99', '107'),
('10037', 'chicken goujons', '9.99', '107'),
('10038', 'chicken taco', '9.99', '107'),
('10039', 'chips', '5.99', '107'),
('10040', 'burger', '3.99', '108'),
('10041', 'chicken burger', '9.99', '108'),
('10042', 'chicken curry', '13.99', '108'),
('10043', 'veggie burger', '6', '109'),
('10044', 'salad burger', '5.99', '109'),
('10045', 'chicken goujons', '7', '109'),
('10046', 'chicken fillet', '9.99', '109'),
('10047', 'chips', '7.99', '109');

-- -----------------------------------------------------
-- Populate table Bar
-- -----------------------------------------------------

insert into Bar values
('20001', 'Heiniken', '7', '110'),
('20002', 'Budweiser', '7', '110'),
('20003', 'Guinness', '7', '110'),
('20004', 'Carlsberg', '7', '110'),
('20005', 'Heiniken', '7', '111'),
('20006', 'Heiniken 0.0', '6', '111'),
('20007', 'Guinness', '8', '111'),
('20008', 'Budweiser', '7', '111'),
('20009', 'Bulmers', '7', '111'),
('20010', 'Heiniken', '8', '112'),
('20011', 'Bud Light', '8', '112'),
('20012', 'Bulmers', '8', '112'),
('20013', 'Heiniken 0.0', '7', '112'),
('20014', 'White Wine', '9', '112'),
('20015', 'Heiniken', '6', '113'),
('20016', 'Budweiser', '6', '113'),
('20017', 'Linden Village', '6', '113'),
('20018', 'Red Wine', '10', '113'),
('20019', 'Heiniken', '8', '114'),
('20020', 'Guiness', '8', '114'),
('20021', 'Bulmers', '8', '114'),
('20022', 'Bulmers 0.0', '8', '114'),
('20023', 'Vodka', '10', '114'),
('20024', 'Whiskey', '10', '114'),
('20025', 'White WIne', '10', '114'),
('20026', '`Red Wine', '10' , '114');
