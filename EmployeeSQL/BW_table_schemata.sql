CREATE TABLE departments(
dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
dept_name VARCHAR(30)
);

CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR(4) NOT NULL,
PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_manager(
dept_no VARCHAR(4),
emp_no INT PRIMARY KEY NOT NULL
);

CREATE TABLE employees(
emp_no INT PRIMARY KEY NOT NULL,
emp_title_id VARCHAR(5),
birth_date VARCHAR(10),
first_name VARCHAR(30),
last_name VARCHAR(30),
sex CHAR(1),
hire_date VARCHAR(10)
);

CREATE TABLE titles(
title_id VARCHAR(5) PRIMARY KEY NOT NULL,
title VARCHAR(30)
);

CREATE TABLE salaries(
emp_no INT PRIMARY KEY NOT NULL,
salary INT
);