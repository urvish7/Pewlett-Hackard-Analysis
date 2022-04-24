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

