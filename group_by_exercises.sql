use employees;

select distinct title
from titles;


select distinct last_name
from employees
where last_name like 'E%' and last_name like '%e'
group by last_name;


select distinct first_name, last_name
from employees
where last_name like 'E%' and last_name like '%e'
group by last_name;


select distinct last_name
from employees
where last_name like '%q%' not like '%qu%'
group by last_name;


select last_name, count(last_name)
from employees
where last_name like '%q%' not like '%qu%'
group by last_name;


select first_name, count(*)
from employees
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
   or gender = 'M' or gender = 'F';
