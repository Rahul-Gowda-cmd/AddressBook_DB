
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

select * from AddressBook where city = 'Banglore' order by firstname

alter table AddressBook add Addressbookname varchar(20), type varchar(10)
update AddressBook set Addressbookname='book1', type='Friends' where city='Trisur'
update AddressBook set Addressbookname='book2', type='Family' where city='Banglore'
update AddressBook set Addressbookname='book4', type='Profession' where city='Gadag'

select count(type) as 'family' from AddressBook where type='family'
select count(type) as 'friends' from AddressBook where type='friends'
select count(type) as 'profession' from AddressBook where type='profession'

select * from AddressBook

insert into AddressBook values
('Adil','Shaa','House no 212','Tinsukia','Assam',785575,'8748892361','Adil@gmail.com','book2','Friends');
select * from 


create table Person
(
person_id int identity(1,1) primary key not null,
firstname varchar(50),
lastname varchar(50),
email varchar(50),
phone varchar(50),
);
select * from person
insert into Person values
('Ragu','ram','ragu@gmail.com','1234567893');

create table Address
(
person_id int foreign key references person(person_id),
zip int primary key,
city varchar(50),
state varchar(50),
);

select * from address

create table Addressbooks
(
book_id int primary key,
person_id int foreign key references person(person_id),
bookname varchar(50),
booktype varchar(50),
);

create table Person_Addressbook
(
person_id int foreign key references person(person_id),
book_id int foreign key references addressbooks(book_id)

);