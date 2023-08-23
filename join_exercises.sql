use employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01'
#   AND e.emp_no = 10001;


select d.dept_name as D_Name, CONCAT(e.first_name, ' ', e.last_name) as D_Manager
from departments d
         join dept_manager dm
              on d.dept_no = dm.dept_no
         join employees e
              on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01'
order by d.dept_name;


select d.dept_name as D_Name, CONCAT(e.first_name, ' ', e.last_name) as D_Manager
from departments d
         join dept_manager dm
              on d.dept_no = dm.dept_no
         join employees e
              on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01'
  and e.gender = 'F'
order by d.dept_name;


select t.title as Title, COUNT(t.emp_no) AS Total
from titles t
         join dept_emp de
              on t.emp_no = de.emp_no
         join departments d
              on d.dept_no = de.dept_no
where d.dept_name = 'Customer Service'
  and t.to_date = '9999-01-01'
  and de.to_date = '9999-01-01'
group by t.title;


select d.dept_name as "Department Name" , CONCAT(e.first_name, ' ', e.last_name) as "Department Manager" , s.salary as Salaray
from departments d
         join dept_manager dm
              on d.dept_no = dm.dept_no
         join employees e
              on dm.emp_no = e.emp_no
         join salaries s
              on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01'
and s.to_date = '9999-01-01'
order by s.salary desc;
