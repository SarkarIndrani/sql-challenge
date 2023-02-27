--1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, sal.salary
FROM Employees As e
JOIN Salaries As sal
ON e.emp_no = sal.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE date_part ('year', hire_date)='1986';

--3.List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

SELECT d.dept_no, d,dept_name, e.emp_no, e.last_name, e.first_name
FROM Departments AS d
JOIN Department_Manager AS dm
ON d.dept_no = dm.dept_no
JOIN Employees AS e
ON dm.emp_no = e.emp_no;

--4. List the department number for each employee along with that employee’s 
--employee number,last name, first name, and department name.

SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees As e
LEFT JOIN Department_Employees AS de
ON e.emp_no = de.emp_no
LEFT JOIN Departments AS d
ON de.dept_no = d.dept_no;

--5. List first name, last name, and sex of each employee whose first name is Hercules 
--and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--6. List each employee in the Sales department, 
--including their employee number, last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees As e
LEFT JOIN Department_Employees As de
ON e.emp_no = de.emp_no
LEFT JOIN Departments As d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees As e
LEFT JOIN Department_Employees As de
ON e.emp_no = de.emp_no
LEFT JOIN Departments As d
ON de.dept_no = d.dept_no
WHERE d.dept_name IN('Sales', 'Development');

--8. List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "last_name_frequency"
FROM Employees
GROUP BY last_name
ORDER BY "last_name_frequency" DESC;


