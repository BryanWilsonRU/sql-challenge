#1. 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s ON
s.emp_no = e.emp_no;

#2.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '%86';

#3.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_manager AS dm ON
dm.emp_no=e.emp_no
JOIN departments AS d ON 
d.dept_no=dm.dept_no;

#4.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON
de.emp_no=e.emp_no
JOIN departments AS d ON 
d.dept_no=de.dept_no;

#5.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%';

#6.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON
de.emp_no=e.emp_no
JOIN departments AS d ON 
d.dept_no=de.dept_no
WHERE d.dept_name='Sales';

#7.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON
de.emp_no=e.emp_no
JOIN departments AS d ON 
d.dept_no=de.dept_no
WHERE d.dept_name='Sales'
OR d.dept_name='Development';

#8.
SELECT last_name, COUNT(last_name) AS employee_count
FROM employees
GROUP BY last_name
ORDER BY employee_count DESC;
