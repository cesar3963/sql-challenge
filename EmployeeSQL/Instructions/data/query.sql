DROP TABLE departments;
SELECT * FROM dept_emp;


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

SELECT * FROM employees;

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date ='%1986'

SELECT * FROM employees;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


--List the department of each employee with the following information: employee number, last name, first name, and department name.


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


--List all employees in the Sales department, including their employee number, last name, first name, and department name.


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.




