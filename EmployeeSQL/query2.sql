SELECT first_name,last_name,hire_date
FROM employees
WHERE date_part('year',TO_DATE(hire_date,'mm/dd/yyyy'))=1986;
