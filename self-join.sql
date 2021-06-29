If there were two separate tables for students and a query 
which requested students in the first table having the same country 
as students in the second table

select S1.stud_id,S1.stud_name,S1.nation, S2.stud_id, S2.stud_name,S2.nation
from student_info S1, student_info S2
where S1.nation = S2.nation and S1.stud_id < S2.stud_id;

select stud_id,stud_name
from student_info
where nation = 'Nepal';

select S1.stud_id,S1.stud_name
from student_info as S1, student_info as S2
where S1.nation = S2.nation 
      and S2.stud_name = '����' 
	  and S1.stud_name != '����';

e.g.18 Output students�� ID who has taken both ��CS2020001�� and ��CS2020003��

select S1.stud_id
from stud_course S1, stud_course S2
where S1.stud_id = S2.stud_id 
      and S1.course_id = 'CS2020001' 
	  and S2.course_id = 'CS2020003';

Output students�� ID and average score who has taken both ��CS2020001�� and ��CS2020003��

select S1.stud_id, avg(S1.score) as 'avg_score'
from stud_course S1, stud_course S2
where S1.stud_id = S2.stud_id 
      and S1.course_id = 'CS2020001' 
	  and S2.course_id = 'CS2020003'
group by S1.stud_id;

Practice 6-2

1. Output students�� ID and name which in the first table having 
   the same class_id as students in the second table;

select S1.stud_id, S1.stud_name, S2.stud_id, S2.stud_name
from student_info S1, student_info S2
where S1.class_id = S2.class_id and S1.stud_id < S2.stud_id;

2. Output teacher�� ID and name who comes from the same department with ��Zhao��

select T1.teac_id, T1.teac_name
from teacher_info T1, teacher_info T2
where T1.dept_id=T2.dept_id and T2.teac_name = '������';

3. Output students�� ID and average score of who has taken both ��CS2020001�� and ��CS2020002��

select S1.stud_id, avg(S1.score) as 'avg_score'
from stud_course S1, stud_course S2
where S1.stud_id = S2.stud_id 
      and S1.course_id = 'CS2020001' 
	  and S2.course_id = 'CS2020002'
group by S1.stud_id;