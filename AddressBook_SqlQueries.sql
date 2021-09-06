
create database [AddressBookSystem]
use [AddressBookSystem]

create table AddressBook
(
 ID int identity(1,1) primary key,
 firstname varchar(100) not null,
 lastname varchar(100) not null,
 address varchar(250) not null,
 city varchar(100) not null,
 state varchar(100) not null,
 zip varchar(6) not null,
 phonenumber varchar(12) not null,
 email varchar(100) not null
);

('Rahul ','M','2nd cros Rajaji Nagar','Banglore','Karnataka','58082','8123351458','Rahul@gmail.com'),
('Ravi ','M','3nd cros Jaya Nagar','Banglore','Gujarat','587682','934747358','Ravi@gmail.com'),
('Akshata','F','4nd cros Indira Nagar','Banglore','MH','80534','1234567896','Akshi@gmail.com'),
('Porvi','F','2nd cros Rajaji Nagar','Banglore','Andra','80453','0987654321','Porvi@gmail.com'),
('Raja','hsjs','2nd cros Rajaji Nagar','Gadag','Andra','80453','0987654321','Raja@gmail.com');

UPDATE AddressBook
SET city = 'Trisur', state = 'Kerala'
WHERE firstname = 'Ravi';
select * from AddressBook;

DELETE FROM AddressBook WHERE firstname='Akshata'
select * from AddressBook

select firstname from AddressBook where city = 'Banglore' OR state = 'Karnataka'

select COUNT(firstname) from AddressBook where city = 'Banglore' or state = 'Karnataka'
