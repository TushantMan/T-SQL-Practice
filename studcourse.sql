use stu_manage
insert into stud_course(stud_course_id,stud_id,course_id,score) values
('2020001','CS1800101', 'CS2020001',76.5),
('2020002','CS1800101', 'CS2020002',76.2),
('2020003','CS1800101', 'CS2020003',77),
('2020004','CS1800101', 'ECE2020001',81.5),
('2020005','CS1800202', 'CS2020001',56),
('2020006','CS1800202', 'CS2020002',90),
('2020007','CS1800202', 'CS2020003',78),
('2020008','CS1800202', 'ECE2020001',88.6),
('2020009','SE1800102', 'CS2020001',85),
('2020010','SE1800102', 'CS2020002',78);
select*from stud_course;