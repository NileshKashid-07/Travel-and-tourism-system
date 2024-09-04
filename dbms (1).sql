-- create database

create database tms;

-- use this database

use tms;

-- create table for signup class

create table account(
	username varchar(30) PRIMARY KEY unique,
	name varchar(40) NOT NULL,
        password varchar(30) NOT NULL,
        question varchar(100) NOT NULL, 
	answer varchar(50) NOT NULL
	);



SELECT  count(username)  FROM account ;
-- create table to add new customer in new customer class

create table customer(
	 username varchar(30) NOT NULL,
         id_type varchar(20)  NOT NULL,
	 number varchar(20) not null ,
	 name varchar(30) NOT NULL,
	 gender varchar(15)  NOT NULL,
	 country varchar(20) NOT NULL,
	 address varchar(50) NOT NULL,
	 phone varchar(20) NOT NULL ,
	 email varchar(40) NOT NULL 
	 -- FOREIGN KEY (Username) REFERENCES ACCOUNT(Username)
	);
    select * from customer;
	
    
-- create table to add hotels

create table hotels(
	name varchar(30) PRIMARY KEY,
        cost_per_day varchar(20)  NOT NULL,
	food_charges varchar(20) NOT NULL, 
	ac_charges varchar(20) NOT NULL
	-- FOREIGN KEY (Username) REFERENCES ACCOUNT(Username)
	);

-- insert value in the hotel table

insert into hotels values("JW Marriott Hotel", "400", "500", "600");
insert into hotels values("Four Seasons Hotel", "500", "600", "700");
UPDATE hotels SET cost_per_day = '450' WHERE name = 'JW Marriott Hotel';

select * from hotels;

-- create table for book hotel

create table bookHotel(
	username varchar(30)  NOT NULL, 
	name varchar(30) NOT NULL, 
	persons varchar(20) NOT NULL, 
	days varchar(20) NOT NULL, 
	ac varchar(10) NOT NULL, 
	food varchar(10) NOT NULL, 
	id varchar(30) NOT NULL, 
	number varchar(20) not null, 
	phone varchar(20) NOT NULL , 
	cost varchar(20) NOT NULL 
	-- FOREIGN KEY (Username) REFERENCES ACCOUNT(Username)
	);
select * from bookHotel;

-- count user preference for both hotels
SELECT name, COUNT(*) AS booking_count FROM bookHotel GROUP BY name;


-- create table for package booking

create table bookPackage(
	username varchar(30) NOT NULL, 
	package varchar(40) NOT NULL, 
	persons varchar(20) NOT NULL, 
	id varchar(30) NOT NULL, 
	number varchar(20) , 
	phone varchar(20) NOT NULL , 
	price varchar(20) NOT NULL
	-- FOREIGN KEY (Username) REFERENCES ACCOUNT(Username)
	);
    alter table bookPackage 
    add column bookingDate date,
    add column returnDate date;
   
    select * from bookPackage order by bookingDate;
    SELECT package, COUNT(*) AS booking_count FROM bookPackage GROUP BY package;

create table feedback(
	username varchar(30) NOT NULL,
    name varchar(30) NOT NULL,  
    feedback_type varchar(100),
    comments varchar(1000)
    );
    
select * from feedback;
SELECT * FROM feedback ORDER BY comments DESC LIMIT 5;


create table PackagePayment(
	username varchar(255),
    name varchar(255),
	payment_type varchar(255) ,
	account_no varchar(255), 
	amount_paid integer 
    );
    select * from PackagePayment;
    SELECT  SUM(amount_paid)  FROM PackagePayment ;
    
    
create table HotelPayment(
	username varchar(255),
    name varchar(255),
	payment_type varchar(255) ,
	account_no varchar(255), 
	amount_paid integer 
    );
    select * from HotelPayment;
    SELECT  SUM(amount_paid)  FROM HotelPayment ;







