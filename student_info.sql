use stu_manage
insert into student_info(stud_id,stud_name,gender,birthday,class_id,enter_date,nation) values
('CS1800101','Zhao',1,'2000/01/01','CS001','2018/09/10','China'),
('CS1800102','Qian',0,'2000/02/01','CS001','2018/09/10','China'),
('CS1800103','Sun',1,'2000/03/01','CS001','2018/09/10','China'),
('CS1800104','Li',1,'1999/04/01','CS001','2018/09/10','China'),
('CS1800201','Zhou',1,'2000/01/01','CS002','2018/09/10','China'),
('CS1800202','Zhang',0,'1999/01/01','CS002','2018/09/10','China'),
('ECE1800101','Zhao',0,'2000/01/01','ECE001','2018/09/10','China'),
('ECE1800201','Li',0,'2000/01/01','ECE002','2018/09/10','China'),
('SE1800101','Wang',1,'1999/10/01','SE001','2018/09/10','China'),
('SE1800102','Zhao',1,'2000/01/01','SE001','2018/09/10','China');
select*from student_info;