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


select t.title as Title, COUNT(*) AS Total
from titles t
         join dept_emp de
              on t.emp_no = de.emp_no
         join departments d
              on de.dept_no = d.dept_no


