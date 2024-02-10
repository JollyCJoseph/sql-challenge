SELECT dept_manager.dept_no,departments.dept_name,
employees.emp_no,last_name AS manager_last_name ,first_name AS manager_first_name
FROM employees
JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
JOIN departments ON departments.dept_no=dept_manager.dept_no;
