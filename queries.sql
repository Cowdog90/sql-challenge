SELECT employees.emp_no, employees.lastname, employees.first_name, employees.gender, salaries.salary
FROM
   employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

select first_name, lastname, hire_date from employees where hire_date between '1986-01-01'and '1986-12-31' order by hire_date 

SELECT
   dept_manager.dept_no, departments.dept_name,
   dept_manager.emp_no, employees.lastname,
   employees.first_name, dept_manager.from_date,
   dept_manager.to_date
   

FROM
   dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;



SELECT dept_emp.emp_no, employees.lastname, employees.first_name, departments.dept_name
FROM
   employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no 
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
ORDER BY dept_name;


select first_name, lastname from employees where first_name = 'Hercules' and lastname like 'B%' order by lastname;

SELECT e.emp_no, e.lastname, e.first_name, d.dept_name
from employees e 
inner join dept_emp ON e.emp_no = dept_emp.emp_no
inner join departments d ON d.dept_no = dept_emp.dept_no
where d.dept_name = 'Sales';

SELECT e.emp_no, e.lastname, e.first_name, d.dept_name
from employees e 
inner join dept_emp ON e.emp_no = dept_emp.emp_no
inner join departments d ON d.dept_no = dept_emp.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
ORDER BY dept_name;

SELECT lastname, COUNT(*)
FROM employees
GROUP BY lastname
ORDER BY COUNT DESC;


select * from employees where emp_no = 499942