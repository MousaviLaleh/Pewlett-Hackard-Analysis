
-- Deliverable 1

--- The Number of Retiring Employees by Title ( years 1952 - 1955)

DROP TABLE IF EXISTS retirement_titles;

SELECT e.emp_no, e.first_name, e.last_name, 
       t.title, t.from_date, t.to_date
INTO retirement_titles 
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;


SELECT * FROM retirement_titles LIMIT 10;


--- remove duplicate rows

DROP TABLE IF EXISTS unique_titles;

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles 
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles LIMIT 10;
SELECT count(emp_no) FROM unique_titles;

--- number of employees' most recent job title, who are about to retire

DROP TABLE IF EXISTS retiring_titles;

SELECT count(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

select * from retiring_titles;
select sum(count) from retiring_titles;


----------------------------------------------------------------------------------------
-- Deliverable 2 :  The Employees Eligible for the Mentorship Program ( year 1965 )

SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
                            de.from_date, de.to_date,
                            t.title
							
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de ON e.emp_no = de.emp_no
INNER JOIN titles as t ON e.emp_no = t.emp_no
WHERE ((e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND de.to_date = ('9999-01-01'))
ORDER BY emp_no;

select * from mentorship_eligibility limit 10;
select count(emp_no) from mentorship_eligibility;




SELECT COUNT(first_name) "Count", dept_name
FROM mentorship_eligibility
GROUP BY dept_name
ORDER BY "Count" desc;




-----------------------------------------
-- get the potential mentors' department

SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
                            de.from_date, de.to_date,
                            t.title,
                            d.dept_name
INTO mentors_dept
FROM employees as e
INNER JOIN dept_emp as de ON e.emp_no = de.emp_no
INNER JOIN titles as t ON e.emp_no = t.emp_no
INNER JOIN departments as d on de.dept_no = d.dept_no
WHERE ((e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND de.to_date = ('9999-01-01'))
ORDER BY emp_no;

select * from mentors_dept limit 10;


-- count the number of retiring employees in each department
SELECT COUNT(emp_no) as "Count", dept_name
FROM mentors_dept
GROUP BY dept_name
ORDER BY "Count" desc;






