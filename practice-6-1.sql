1.Search information of students�� ID and name who come from Computer Science Department 
and have taken the course of ��CS2020001��

select S.stud_id, S.stud_name
from student_info as S, department_info as D, class_info as C, stud_course as SC
where S.stud_id = SC.stud_id and S.class_id = C.class_id and C.dept_id = D.dept_id 
      and D.dept_name = 'Computer Science' and SC.course_id = 'CS2020001';

2.Search information of students�� name who have taken course of ��CS2020002��

select stud_name 
from student_info as S,stud_course as SC
where S.stud_id=SC.stud_id and SC.course_id='CS2020002';

3.Search information of students�� name and class ID who have taken the course of ��Database��

select S.stud_name,S.class_id
from student_info as S,stud_course as SC,course_info as C
where C.course_id=SC.course_id and S.stud_id=SC.stud_id and  C.course_name='Database';

4.Search course ID and name ���� has taken

select CO.course_id,CO.course_name
from stud_course as SC , course_info as CO, student_info as S
where S.stud_id = SC.stud_id and SC.course_id = CO.course_id and S.stud_name='Tushant';

5.Search the male students�� ID and score with ascending order of ID and descending order of score.

select S.stud_id,SC.score
from student_info as S, stud_course as SC
where S.stud_id= SC.stud_id and S.gender=1
order by stud_id asc, score desc;

6.Search information of students�� ID and name who come from Computer Science Department and 
have taken the course of ��CS2020001�� and score is not null.

select S.stud_id,S.stud_name
from student_info as S,department_info as D,class_info as C,stud_course as SC 
where S.stud_id=SC.stud_id and S.class_id=C.class_id 
      and C.dept_id=D.dept_id and D.dept_name='Computer Science' 
	  and SC.course_id='CS2020001' and SC.score is not null;

7.Search information of students�� ID, name, and course��s ID and course��s name these students have taken

select S.stud_id,S.stud_name,C1.course_id,C1.course_name
from student_info as S,course_info as C1,stud_course as SC
where S.stud_id=SC.stud_id and SC.course_id=C1.course_id;

8.Search information of your name , the course��s name and score you have taken

select S.stud_name,C1.course_name,SC.score
from student_info as S,course_info as C1,stud_course as SC
where S.stud_id=SC.stud_id and SC.course_id=C1.course_id and S.stud_id='19LX026';