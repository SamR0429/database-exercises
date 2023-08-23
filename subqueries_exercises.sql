use employees;


# SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM dept_manager
# )
# LIMIT 10;


#the following 2 are breaking up the actual question
select hire_date
from employees
where emp_no = 101010;

select *
from employees
where hire_date = '1990-10-22';

#this is the result of combining what we found with the top 2
select *
from employees
where hire_date in (
        select hire_date
        from employees
        where emp_no = 101010
        );


# #2.
select distinct title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    );


# #3
select first_name, last_name
from employees
where gender = 'F'
and emp_no in (
    select emp_no
    from dept_manager
    where to_date = '9999'
    );