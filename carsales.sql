create schema if not exists cars;
use cars;

create table if not exists manufacturer
(
mcode int auto_increment,
mname enum('Audi', 'BMW', 'Opel', 'Volkswagen', 'Peugeot', 'Renault', 'Alfa Romeo', 'Ford', 'Hyundai', 'Kia', 
           'Saab', 'SsangYong', 'Honda', 'Lexus', 'Mazda', 'Mitsubishi', 'Nissan', 'Suzuki', 'Toyota') NOT NULL,
mcountry varchar(20),
primary key (mcode)
);

create table if not exists car
(
reg varchar(15),
model varchar(10) not null,
cost double(8,2),
mcode int,
primary key(reg),
constraint fk_mcmode foreign key(mcode)
references manufacturer(mcode)
on update cascade on delete set null
);
ALTER TABLE car MODIFY COLUMN cost DECIMAL(8,2);

create table if not exists customer
(
customerId int auto_increment,
fName varchar(15),
lName varchar(15),
emailAddress varchar(40),
primary key (customerId)
);

create table if not exists viewings
(
customerId int,
reg varchar(15),
viewingDate date,
comments varchar(250),
primary key (customerId, reg),
constraint fk_customerId foreign key(customerId)
references customer(customerId)
on update cascade on delete set null,
constraint fk_reg foreign key(reg)
references car(reg)
on update cascade on delete set null
);