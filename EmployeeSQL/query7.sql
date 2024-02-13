SELECT emp_no,last_name,first_name,departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments on departments.dept_no=dept_emp.dept_no
WHERE (employees.emp_no,dept_emp.dept_no) IN
 (
 	SELECT emp_no,dept_no
	 FROM dept_emp
	 WHERE dept_no IN
	  (
	  	SELECT dept_no 
		FROM departments
		WHERE dept_name='Sales'OR dept_name='Development'
	  )
 );