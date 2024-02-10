SELECT emp_no,first_name,last_name
FROM employees 
WHERE emp_no IN
	(SELECT emp_no FROM dept_emp
	 WHERE dept_no IN
	 	(SELECT dept_no from departments
		 WHERE dept_name='Sales'
		 )
	 
	)
;
