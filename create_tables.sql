create database stu_manage

use stu_manage

create table student_info
(stud_id varchar(10) primary key,
 stud_name varchar(10) not null,
 gender bit not null default('1') ,
 birthday smalldatetime,
 class_id varchar(8) not null,
 school_roll varchar(8) not null default ('1'),
 home_addr varchar(50),
 zipcode varchar(8),
 enter_date smalldatetime not null,
 nation varchar(30) not null
)				

create table course_info
(
course_id varchar(10) primary key,
course_name varchar(40) not null,
book_id varchar(3),
credit numeric(3,2) not null
)
				
create table teacher_info
(teac_id varchar(8) primary key,
 teac_name varchar(20) not null,
 dept_id varchar(2) not null,
 gender bit not null,
 profession varchar(20) not null default('associate professor'),
 phone varchar(14),
 t_home_addr varchar(50),
 identity_card varchar(18),
 t_zipcode varchar(8)
 )

create table class_info
(class_id  varchar(8) primary key,
 monitor varchar(20),
 dept_id varchar(2) not null,
 stud_amount tinyint not null
)	

create table department_info
(dept_id varchar(2) primary key,
 dept_name varchar(50) not null,
 dept_dean varchar(20) not null,
 dept_teacher_amount tinyint 
)