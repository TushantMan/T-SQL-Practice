use stu_manage
insert student_info values
('A001','Alex','0','2000/11/25','CS110000','1','1064  Timber Oak Drive,Friona,Texas','79035','2014/3/24','United States of America'),
('B002','Bob','0','1998/12/17','CS110001','2','1001  Glendale Avenue,ROCK HILL,South Carolina','29733','2014/4/4','United States of America'),
('C003','Charlotte','1','1999/08/15','CS110003','3','4850  Keyser Ridge Road,Greensboro,North Carolina','27406','2014/4/16','United States of America'),
('D004','Emma','1','1999/04/22','CS110004','4','3958  Zimmerman Lane,Los Angeles,California','90071','2014/3/19','United States of America'),
('E005','Ethan','0','1997/01/12','CS110005','5','617  Airplane Avenue,Norwich,Connecticut','06360','2014/4/27','United States of America'),
('F006','Harper','1','1999/02/14','CS110006','6','4997  Froe Street,Charleston,West Virginia','25301','2014/4/21','United States of America'),
('G007','Isabella','1','2000/03/13','CS110007','7','3404  Oakridge Farm Lane,Milwaukee,Wisconsin','53202','2014/4/17','United States of America'),
('H008','James','0','2000/09/27','CS110008','8','3785  Poe Road,Myrtle Beach,South Carolina','29575','2014/4/22','United States of America'),
('K009','Lucas','0','2000/07/15','CS110009','9','69 Timms Drive,SOUTH PAMBULA,New South Wales','2549','2014/4/11','Australia'),
('L010','Olivia','1','2000/08/21','CS110010','10','1 Bayview Close,THE MINE,Queensland','4714','2014/4/08','Australia')
select*from student_info;

insert teacher_info values
('T0001','Alfred','CS','0','Senior Professor','919-692-2300','287  Stratford Court,Oxford,North Carolina','	690-03-2257','27565'),
('T0002','Eileen','CH','1','Associate Professor','419-677-2787','2034  Still Street,Fostoria,Ohio','283-60-2975','23707'),
('T0003','Clarence','PH','0','Junior Professor','309-369-0262','771  Coburn Hollow Road,Peoria,Illinois','327-54-2038','61615'),
('T0004','Peggy','BI','1','Senior Professor','317-272-3471','1995  Crestview Manor,Indianapolis,Indiana','313-06-8748','46234'),
('T0005','Donald','MH','0','Senior Professor','715-351-6331','4470  Abner Road,Green Bay,Wisconsin','389-24-5302','54303'),
('T0006','Jessica','CS','1','Associate Professor','978-903-4534','434  Russell Street,Cambridge,Massachusetts','017-58-8796','02141'),
('T0007','Eileen','CH','1','Senior Professor','870-394-4900','4480  Rosebud Avenue,West Memphis,Arkansas','430-36-4252','72301'),
('T0008','Alberta','PH','1','Senior Professor','989-971-5278','60  Cross Street,Caro,Michigan','363-06-2419','48723'),
('T0009','Ervin','BI','0','Associate Professor','786-738-4866','1208  Lamberts Branch Road,GREENEVILLE,Tennessee','772-32-9309','37743'),
('T0010','Joe','MH','0','Junior Professor','256-224-8729','3030  Ritter Street,Albertville,Alabama','423-88-4261','35950')
select*from teacher_info;

insert department_info values
('CS','Computer Science','Lois','2'),
('CH','Chemistry','Jack','2'),
('PH','Physics','Decker','2'),
('BI','Biology','Janice','2'),
('MH','Mathematics','Morris','2')
select*from department_info;

insert course_info values
('CS10001','Introduction to Computer Science','CS1','3'),
('CS10002','Introduction to App Development','CS2','3'),
('CS10003','Introduction to Web Development','CS3','3'),
('CS10004','Basic Graphics Designing','CS4','3'),
('CS10005','Introduction to DBMS','CS5','3'),
('PH10001','Introduction Quantum Physics','PH1','3'),
('PH10002','Introduction to Physics','PH2','3'),
('CH10001','Introduction to Organic Chemistry','CH1','3'),
('CH10002','Introduction to Inorganic Chemistry','CH2','3'),
('CH10003','Introduction to Nuclear Chemistry','CH3','3'),
('BI10001','Introduction to Animal Kingdom','BI1','3'),
('BI10002','Introduction to Human Body','BI2','3'),
('MH10001','Basic Mathematics','MTH','3')
select*from course_info;

insert class_info values
('CS101','Bob','CS','7'),
('PH101','Ethan','PH','5'),
('CH101','James','CH','8'),
('BI101','Emma','CI','3'),
('MH101','Alex','MH','10')
select*from class_info;

select*from class_info;
