--query1
SELECT employees.emp_no,last_name,first_name,sex,salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no=salaries.emp_no;