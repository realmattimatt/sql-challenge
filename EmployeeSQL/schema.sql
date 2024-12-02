DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;


CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR NOT NULL
);

--SELECT * FROM titles ... ok
--LIMIT 10; ok

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR(1),
    hire_date DATE
);

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

-- SELECT * FROM departments ...ok
-- LIMIT 10; ...ok

CREATE TABLE dept_manager (
    emp_no INT REFERENCES employees(emp_no),
    dept_no VARCHAR REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_manager
LIMIT 10;

CREATE TABLE dept_emp (
    emp_no INT REFERENCES employees(emp_no),
    dept_no VARCHAR REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
    emp_no INT REFERENCES employees(emp_no),
    salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);


SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM 
    employees e
JOIN 
    salaries s ON e.emp_no = s.emp_no;


-- SELECT * FROM dept_emp
-- LIMIT 10;


