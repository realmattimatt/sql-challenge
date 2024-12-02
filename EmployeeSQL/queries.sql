
-- List the employee number, last name, first name, sex, and salary of each employee.
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


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 
    e.last_name,
    e.first_name,
    e.hire_date
FROM employees e
WHERE (e.hire_date) = 1986;


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT
    dm.dept_no,
    d.dept_name,
    dm.emp_no,
    e.last_name,
    e.first_name
FROM dept_manager dm
    JOIN employees e ON e.emp_no = dm.emp_no
    JOIN departments d ON dm.dept_no = d.dept_no;

    

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.  
SELECT
    de.dept_no,
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM dept_emp de
    JOIN employees e ON de.emp_no = e.emp_no
    JOIN departments d ON de.dept_no = d.dept_no;




