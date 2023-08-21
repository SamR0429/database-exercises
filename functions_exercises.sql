use employees;
select * from salaries;


select * from employees
where first_name in ('Irena', 'Vidya', 'Maya') order by last_name, first_name;


select * from employees
where last_name like 'E%' order by emp_no desc ;


select * from employees
where last_name like '%q%';


select * from employees
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
   or gender = 'M';


select * from employees
where last_name like 'E%' or last_name like '%E';




select concat(first_name, ' ',last_name)
from employees
where last_name like 'E%' and last_name like '%E';




select * from employees
where last_name like '%q%' and last_name not like '%qu%';


select *
from employees
where month(birth_date) = 12
and dayofmonth(birth_date = 25);


select * from employees
where year(birth_date) between 1990 and 1999
and month(birth_date) = 12
and dayofmonth(birth_date) = 28
order by hire_date desc , birth_date;


select *, datediff(curdate(), hire_date)
from employees
where year(hire_date) between 1990 and 1999
and month(hire_date) = 12
and dayofmonth(hire_date) = 25;