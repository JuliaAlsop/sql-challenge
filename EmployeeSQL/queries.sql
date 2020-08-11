--Queries for part 2 of HW

--Query 1 
SELECT emp_no, last_name, first_name, sex, salary
FROM "Employees"
INNER JOIN Employees
	ON Employees.emp_no = Salaries.emp_no;

--Query 2
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date <1986;

--Query 3
SELECT dept_no, dept_name, emp_no, last_name, first_name
FROM "Employees";
INNER JOIN Employees
	ON Employees.emp_no = Department_Manager.emp_no;
	
--Query 4
SELECT emp_no, last_name, first_name, dept_name
FROM "Employees";
INNER JOIN Employees
	ON Employees.emp_no = Department_Employees.emp_no;

--Query 5
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' 
and last_name = 'B'; 

--Query 6
SELECT emp_no, last_name, first_name, dept_name
FROM "Department_Employees"
WHERE dept_name = Sales;

--Query 7
SELECT emp_no, last_name, first_name, dept_name
FROM "Employees"
INNER JOIN Employees
	ON Employees.emp_no = Department_Employees.emp_no;
WHERE dept_name = Sales 
or dept_name = Development;

--Query 8
SELECT last_name, COUNT(last_name)AS Frequency
  FROM "Employees"
  GROUP BY last_name
  ORDER BY
  COUNT(last_name) DESC