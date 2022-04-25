
-----------------------Deliverable 1: The Number of Retiring Employees by Title---

-- the 1st question 
SELECT emp_no, first_name, last_name
FROM employees 

-- the 2nd question 
SELECT title, from_date, to_date
FROM titles

-- the 3rd question
INTO retirement


---combining
SELECT emp.emp_no,
	   emp.first_name,
	   emp.last_name,
	   titles.title,
	   titles.from_date,
	   titles.to_date
INTO retirement
FROM employees as emp
	JOIN titles
		ON emp.emp_no = titles.emp_no
--WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- the 4th question
ALTER TABLE retirement ADD PRIMARY KEY (emp_no,title,from_date);
SELECT * FROM retirement

-- the 5th question
SELECT *
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

--- the 6th question
------ the file is been exported


--- the 7th question
------- yes, looks similar like the given screen shot in module


---- the 8th question
-- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (______) _____,
-- ______,
-- ______,
-- ______

-- INTO nameyourtable
-- FROM _______
-- WHERE _______
-- ORDER BY _____, _____ DESC;


-- the 9th, 10th , 11th, 12th and 13th  question 
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement
WHERE to_date = '9999-01-01'
ORDER BY emp_no, from_date DESC;

SELECT * FROM unique_titles

-- the 16th , 17th, 18th and 19th question
SELECT  count(emp_no),title
INTO retiring_titles
FROM unique_titles
GROUP BY title 
ORDER BY COUNT DESC
;




----------------Deliverable 2: The Employees Eligible for the Mentorship Program--

----- the question 1st ---
SELECT emp_no, first_name, last_name, birth_date
FROM employees

---- the 2nd question

SELECT from_date, to_date
FROM dept_emp

----- the 3rd question
SELECT title
FROM titles

----- the 4th 5th and 6th question

SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
	   emp.first_name,
	   emp.last_name,
	   emp.birth_date,
	   de.from_date,
	   de.to_date
INTO emp_deptemp
FROM employees as emp
	JOIN dept_emp as de
		ON emp.emp_no = de.emp_no
--WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;


------- the 7th question
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
	   emp.first_name,
	   emp.last_name,
	   emp.birth_date,
	   titles.title
INTO emp_title
FROM employees as emp
	JOIN titles 
		ON emp.emp_no = titles.emp_no
--WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- combining the both table to create a general data 
SELECT DISTINCT ON (ed.emp_no) ed.emp_no,
	   ed.first_name,
	   ed.last_name,
	   ed.birth_date,
	   ed.from_date,
	   ed.to_date,
	   et.title
INTO mentorship_eligibilty_test
FROM emp_deptemp as ed
	JOIN emp_title as et
		ON ed.emp_no = et.emp_no
--WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--ORDER BY emp_no;


-----the 8th question ------
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
birth_date,
from_date,
to_date,
title

INTOmentorship_eligibilty
FROM mentorship_eligibilty_test
WHERE to_date = '9999-01-01' AND birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY emp_no;

