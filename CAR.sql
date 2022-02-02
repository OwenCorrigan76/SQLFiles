use cars;

INSERT INTO MANUFACTURER (MNAME, MCOUNTRY) VALUES
 ('Audi','Germany'),
 ('BMW','Germany'), 
 ('Opel','Germany'),
 ('Volkswagen','Germany'),
 ('Peugeot','France'),
 ('Renault','France'),
 ('Alfa Romeo','Italy'),
 ('Ford','USA'),
 ('Hyundai','South Korea'),
 ('Kia','South Korea'),
 ('Saab','Swedan'),
 ('SsangYong','Swedan'),
 ('Honda','Japan'),
 ('Lexus','Japan'),
 ('Mazda','Japan'),
 ('Mitsubishi','Japan'),
 ('Nissan','Japan'),
 ('Suzuki','Japan'),
 ('Toyota', 'Japan'); 
 
 select * from manufacturer;
 
 INSERT INTO car VALUES 
 ('141-KK-345','i30',20760, 9),
 ('11-WD-1876','i35',14500, 9),
 ('151-KK-100','Astra',24800, 3),
 ('12-WX-222','Corolla',19870, 19),
 ('142-WD-7811','Vectra',28900, 3),
 ('08-KK-1234','Polo',6500, 4),
 ('10-WX-9875','Golf',9500, 4); 

select * from car;

INSERT INTO customer VALUES 
 ('123321','john','smith','john@gmail.com');
 
 select * from customer;

INSERT INTO viewings VALUES 
 ('124321','181D31616','12/10/19','happy Customer'),
 ('125321','191D31616','18/01/21','unhappy Customer'),
 ('126321','121D31616','22/01/20','happy Customer'),
 ('127321','131D31616','02/10/21','happy Customer'),
 ('1238321','141D31616','12/10/21','unhappy Customer');
 
 select * from viewings;