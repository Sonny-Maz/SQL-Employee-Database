--SELECT <column1, col2> or *
--FROM <tablename> tbl1
--JOIN <table2> tbl2 on tbl1.<commoncol>  = tbl2.<commoncol>
--WHERE <condition1> and / or <condition2>
--ORDER BY <column(s)> asc/desc;
Logical Operations
True and True  = True
Treu and False = False
False and False = True
False and True  = False

OR:
True or True = Treu
True or False. = True
False or true  = True
False or False = False


-- List/Query/Display the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
	e.emp_no as "Employee Number", 
	last_name as "Last Name",
	first_name as "First Name",
	sex,
	s.salary
FROM employees as e
JOIN salaries as s on s.emp_no = e.emp_no
WHERE e.last_name LIKE 'Va%' AND (first_name like '%sh%' OR first_name LIKE '%pr%');