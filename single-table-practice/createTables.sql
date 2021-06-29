Create database myDB
GO
Use myDB
GO

create table student
(sno varchar(10) primary key,
 sname varchar(20) not null,
 sage tinyint,
 ssex varchar(2),
 sdept varchar(30))
GO

create table course
(cno varchar(10) primary key,
 cname varchar(20) not null,
 credit tinyint,
 snumber tinyint)
GO

create table sc
(sno varchar(10) ,
 cno varchar(10) ,
 grade tinyint,
 primary key(sno,cno)
)
GO

