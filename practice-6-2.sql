Practice:
1. Using Inner Join and Cross join to search all information of teachers 
and their corresponding department information;
[1]inner join
select * from teacher_info as T inner join department_info as D on T.dept_id = D.dept_id;
[2]cross join
select * from teacher_info as T, department_info as D where T.dept_id = D.dept_id;

2. Using Inner Join and Cross join to output all students¡¯ ID, name, course ID 
and scores they have taken with a larger age of 20.
[1]inner join
select S.stud_id, S.stud_name, SC.course_id, SC.score
from student_info as S inner join stud_course as SC on S.stud_id = SC.stud_id
where year(getdate())-year(birthday) > 20;
[2]cross join
select S.stud_id, S.stud_name, SC.course_id, SC.score
from student_info as S, stud_course as SC
where S.stud_id = SC.stud_id and year(getdate())-year(birthday) > 20;

3. Using Inner Join and Cross join to output all course name, maximum 
and minimum score of these courses.
[1]inner join
select C.course_name, max(SC.score) as 'max_score', min(SC.score) as 'min_score'
from course_info as C inner join stud_course as SC on C.course_id = SC.course_id
group by C.course_name;
[2]cross join
select C.course_name, max(SC.score) as 'max_score', min(SC.score) as 'min_score'
from course_info as C, stud_course as SC
where C.course_id = SC.course_id
group by C.course_name;

4. Using Inner Join and Cross join to output all course name, 
with an ascending order of average score of these courses.
[1]inner join
select C.course_name, avg(SC.score) as 'avg_score'
from course_info as C inner join stud_course as SC
     on C.course_id = SC.course_id
group by C.course_name
order by avg(SC.score) asc;
[2]cross join
select C.course_name, avg(SC.score) as 'avg_score'
from course_info as C, stud_course as SC
where C.course_id = SC.course_id
group by C.course_name
order by avg(SC.score) asc;