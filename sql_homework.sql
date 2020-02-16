---------------------------------------------------------------
----- import info for employees.csv
-- Drop 
DROP TABLE employees CASCADE;

-- Create 
CREATE TABLE employees(
	emp_no INT NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(30) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no)
);

-- View 
SELECT * FROM employees;

-- Import data
COPY employees from '/Applications/PostgreSQL 12/Data/data_hw/employees.csv'
with (format csv, header);

-- View 
SELECT * FROM employees;

---------------------------------------------------------------
----- import info for departments.csv 
-- Drop table if exists
DROP TABLE departments CASCADE;

-- Create new table
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- View table columns and datatypes
SELECT * FROM departments;

-- Import data
COPY departments from '/Applications/PostgreSQL 12/Data/data_hw/departments.csv'
with (format csv, header);

-- View table columns and datatypes
SELECT * FROM departments;
---------------------------------------------------------------
----- import info for dept_emp.csv
-- Drop 
DROP TABLE dept_emp;

-- Create 
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	from_date VARCHAR(30) NOT NULL,
	to_date VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- View 
SELECT * FROM dept_emp;

-- Import data
COPY dept_emp from '/Applications/PostgreSQL 12/Data/data_hw/dept_emp.csv'
with (format csv, header);

-- View 
SELECT * FROM dept_emp;
-------------------------------------------------------------------------
----- import info for dept_manager.csv
-- Drop 
DROP TABLE dept_manager;

-- Create 
CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	from_date VARCHAR(30) NOT NULL,
	to_date VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- View 
SELECT * FROM dept_manager;

-- Import data
COPY dept_manager from '/Applications/PostgreSQL 12/Data/data_hw/dept_manager.csv'
with (format csv, header);

-- View 
SELECT * FROM dept_manager;
---------------------------------------------------------------
----- import info for salaries.csv
-- Drop 
DROP TABLE salaries;

-- Create 
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date VARCHAR(30) NOT NULL,
	to_date VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- View 
SELECT * FROM salaries;

-- Import data
COPY salaries from '/Applications/PostgreSQL 12/Data/data_hw/salaries.csv'
with (format csv, header);

-- View 
SELECT * FROM salaries;
---------------------------------------------------------------
----- import info for titles.csv
-- Drop 
DROP TABLE titles;

-- Create 
CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR(30) NOT NULL,
	from_date VARCHAR(30) NOT NULL,
	to_date VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no, title, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- View 
SELECT * FROM titles;

-- Import data
COPY titles from '/Applications/PostgreSQL 12/Data/data_hw/titles.csv'
with (format csv, header);

-- View 
SELECT * FROM titles;
---------------------------------------------------------------





















