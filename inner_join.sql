Search all information of course and its corresponding student-taking information

select * 
from course_info as C
     inner join stud_course as S
	 on C.course_id = S.course_id;

select * from course_info as C, stud_course as S
where C.course_id = S.course_id;

Using WHERE with Inner Join
e.g.8 Output all girls¡¯ student ID, name, course ID and scores they have taken.

select S.stud_id, S.stud_name, SC.course_id, SC.score
from student_info as S 
     inner join stud_course as SC
	 on S.stud_id = SC.stud_id
where S.gender = '0';

select S.stud_id, S.stud_name, SC.course_id, SC.score
from student_info as S, stud_course as SC
where S.stud_id = SC.stud_id and S.gender = '0';

e.g.10 Output all girls¡¯ student ID, name, course ID, course name and scores they have taken.

select S.stud_id, S.stud_name, SC.course_id, C.course_name, SC.score
from stud_course as SC
     inner join student_info as S on S.stud_id = SC.stud_id
	 inner join course_info as C on SC.course_id = C.course_id
where S.gender = '0';

select S.stud_id, S.stud_name, SC.course_id, C.course_name, SC.score
from stud_course as SC, student_info as S, course_info as C
where S.stud_id = SC.stud_id and SC.course_id = C.course_id and S.gender = '0';

Using Group By with Inner Join
e.g.12 Output all boys¡¯ name and average score they have taken.

select S.stud_name, avg(SC.score) as 'Avg_Score'
from student_info as S 
     inner join stud_course as SC 
	 on S.stud_id = SC.stud_id
where S.gender = '1'
group by S.stud_name;

select S.stud_name, avg(SC.score) as 'Avg_Score'
from student_info as S, stud_course as SC 
where S.stud_id = SC.stud_id 
      and S.gender = '1'
group by S.stud_name;

===Order by===

select S.stud_name, avg(SC.score) as 'Avg_Score'
from student_info as S 
     inner join stud_course as SC 
	 on S.stud_id = SC.stud_id
where S.gender = '1'
group by S.stud_name
order by avg(SC.score) asc;

select S.stud_name, avg(SC.score) as 'Avg_Score'
from student_info as S, stud_course as SC 
where S.stud_id = SC.stud_id 
      and S.gender = '1'
group by S.stud_name
order by avg(SC.score) asc;