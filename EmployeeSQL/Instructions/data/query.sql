
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
	);

CREATE TABLE dept_emp (
	emp_no int,
	dept_no VARCHAR
	);
	
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no int
	);

CREATE TABLE employees (
	emp_no int,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex	VARCHAR,
	hire_date VARCHAR
	);
	
CREATE TABLE salaries (
	emp_no int,
	salary int
	);
	
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
	);


--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT  t.emp_title_id , t.first_name, t.last_name, t.sex, p.salary
FROM employees AS t
INNER JOIN salaries AS p ON
p.emp_no=t.emp_no;
;

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date like '%1986' 

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select de.dept_no, d.dept_name, dm.emp_no, last_name, e.first_name
from employees e
join dept_emp de
	on de.emp_no = e.emp_no
join departments d
	on d.dept_no = de.dept_no
join dept_manager dm
	on dm.emp_no = e.emp_no
join titles ti
	on ti.title_id = e.emp_title_id

--List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
	on e.emp_no = de.emp_no
join departments d
	on de.dept_no = d.dept_no
		
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name,sex
from employees
where first_name = 'Hercules' and last_name like 'B%' 

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
	on e.emp_no = de.emp_no
join departments d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
	on e.emp_no = de.emp_no
join departments d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or	d.dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select last_name, count(*)
From   employees
Group By last_name
ORDER BY count DESC;


