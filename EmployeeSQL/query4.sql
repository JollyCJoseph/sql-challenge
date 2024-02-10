SELECT dept_emp.dept_no AS "department number",dept_emp.emp_no,
last_name,first_name,departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments ON departments.dept_no=dept_emp.dept_no;
