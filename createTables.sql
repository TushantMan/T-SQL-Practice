Create database DB
GO
Use DB
GO

create table S
(sno varchar(20) primary key,
 sname varchar(20) not null,
 city varchar(20))
GO

create table P
(pno varchar(20) primary key,
 pname varchar(20) not null,
 color varchar(20))
GO

create table SP
(sno varchar(20),
 pno varchar(20),
 numbers smallint,
 primary key(sno,pno))
GO

