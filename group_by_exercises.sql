use employees;

select distinct title
from titles;


select last_name
from employees
where last_name like '%E'
  and last_name like 'e%'
group by last_name
order by last_name;


select first_name, last_name
from employees
where last_name like '%E'
  and last_name like 'e%'
group by first_name ,last_name
order by last_name;


select last_name
from employees
where last_name like '%q%' not like '%qu%'
group by last_name;


select count(*) as total, last_name
from employees
where last_name like '%q%' not like '%qu%'
group by last_name;


select count(*) as total , gender
from employees
where first_name in ('Irena','Maya', 'Vidya')
group by gender;
