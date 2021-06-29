Search student ID, name and class ID of students and use left join to combine the department ID

select S.stud_id,S.stud_name,S.class_id,C.dept_id
from student_info S 
     left join class_info C
	 on S.class_id = C.class_id;

select S.stud_id,S.stud_name,S.class_id,C.dept_id
from student_info S 
     inner join class_info C
	 on S.class_id = C.class_id;

According to the teacher ID, name to combine the department name using right join 

select T.teac_id,T.teac_name, D.dept_name
from teacher_info T right join department_info D on T.dept_id = D.dept_id;

select T.teac_id,T.teac_name, D.dept_name
from teacher_info T inner join department_info D on T.dept_id = D.dept_id;

According to the teacher ID, name to combine the department name using full join 

select T.teac_id,T.teac_name, D.dept_name
from teacher_info T full join department_info D on T.dept_id = D.dept_id;

Output all students name and if they have taken some courses, please output
the course id and score.

select S.stud_name, SC.course_id, SC.score
from student_info S left join stud_course SC on S.stud_id = SC.stud_id;

right join
select S.stud_name, SC.course_id, SC.score
from student_info S right join stud_course SC on S.stud_id = SC.stud_id;

use DB

select * from P inner join SP on P.pno = SP.pno;
select * from P left join SP on P.pno = SP.pno;
select * from P right join SP on P.pno = SP.pno;
select * from P full join SP on P.pno = SP.pno;


